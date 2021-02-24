<?php 

class nguoidungcontroller extends controller
{
    function index()
    {
        include 'model/quantri.php';
        $cn=new quantri();
        $obj = $cn->layma($_GET['user']??'');
        $this->render('view/nguoidung/profile.php',['obj'=>$obj]);
    }
    function login()
    {
        if(isset($_COOKIE['src'],$_COOKIE['name']) && $_COOKIE['src'] && $_COOKIE['name'])
            {
                //tien hanh dang nhap
                $_SESSION['status_login'] = true;
                $_SESSION['login_name'] = $_COOKIE['name'];
            }
            //kiem tra coi dang nhap chua
            if(isset($_SESSION['status_login']) && $_SESSION['status_login']==true )
            {
                chuyentrang(href('nguoidung',['user'=>$_GET['user']]));
                exit;
            }
            $thongbao = '';
        if(isset($_POST['username'],$_POST['password']))
        {
            include 'model/quantri.php';
            $cn=new quantri();
            $user = $cn->laytk($_POST['username'],$_POST['password']);
            if($user)
            {        
                $thongbao = '<div class="alert alert-success">Đăng nhập thành công</div>';
                //tao 1 cờ để kiểm tra đăng nhập cho toàn bộ hệ thống
                $_SESSION['status_login'] = true;
                $_SESSION['login_name'] = $user->tendangnhap;
                $_SESSION['login_avt'] = $user->avatar;
                //kiem tra co thu co luu dang nhap k
                if(isset($_POST['remember']) && $_POST['remember'] ==1)
                {
                    //luu du lieu vao cookie: time tu quyet dinh
                    $time= time()+3600;
                    setcookie('src', $_SESSION['status_login'],$time);
                    setcookie('name', $_SESSION['login_name'],$time);
                    setcookie('avt', $_SESSION['login_avt'],$time);
                }
                //chuyen trang ve profile
                chuyentrang(href('nguoidung','index',['user'=>$user->maqt]));
                //header("location: index.php?page=profile&user=$user->maqt");
                exit;
            }else{
                echo $thongbao = '<div class="alert alert-danger">Thông tin đăng nhập không chính xác</div>'; 
            }  
        }
        $this->render('view/nguoidung/login.php',[],'emptylayout');
    }

    function them()
    {
        $thongbao = '';
        $avt = myupload($_FILES['avatar']??'','','images/',$err)??null;
        if($this->validatedata([$_POST['tenqt']??'',$_POST['tendangnhap']??'',$_POST['matkhau']??'',$_POST['trangthai']??''])==false){
            $thongbao = '<div class="alert alert-danger">Thông tin đăng kí thiếu</div>';
        }
        else
        {
            include 'model/quantri.php';
            $user=new quantri();
            $check=$user->themtk($_POST['tenqt'],$_POST['tendangnhap'],$_POST['matkhau'],$_POST['manhom'],$avt,$_POST['trangthai']);  
            if($check!=false){            
                    $thongbao = '<div class="alert alert-success">Thêm thành công</div>';
                }
            else{
                $thongbao = '<div class="alert alert-danger">Tài khoản đã tồn tại</div>'; 
            }
        }
        include 'model/nhomquantri.php';
            $nhomqt = new nhomquantri();
            $nhomqts = $nhomqt->laydsqt();
            //var_dump($nhomqts);exit;
        $this->render('view/nguoidung/them.php',['thongbao'=>$thongbao,'nhomqts'=>$nhomqts]);
    }

    function logout(){
        session_destroy();
        setcookie('src', 0,time()-1);
        setcookie('name','',time()-1);
        setcookie('avt', '',time()-1);
        chuyentrang('index.php');
        exit;
    }

    function layds(){
        include 'model/quantri.php';
        $cn = new quantri();
        $users = $cn->layds();
        $this->render('view/nguoidung/danhsach.php',['users'=>$users]);
    }

    function sua(){    
        $thongbao = '';  
        $user = $_GET['user']??'';
        
        if(!$user)
            chuyentrang('index.php');
        include 'model/quantri.php';
            $maus=new quantri();
            $us= $maus->layma($user);
            //var_dump($us);
            $avt = myupload($_FILES['avatar']??'',$us->avatar,'images/',$err)??'';
            
            //var_dump($us);exit();
        if(isset($_POST['tendangnhap'])){
            $mk = ($_POST['matkhau']==null)?$us->matkhau:$_POST['matkhau'];
            $check = $maus->suatk($_POST['tenqt']??$us->tenqt,$_POST['tendangnhap']??$us->tendangnhap,$mk,$_POST['manhom']??$us->manhom,$avt??$us->avatar,$_POST['trangthai']??$us->trangthai,date("Y-m-d"),date("Y-m-d"),$user);
            //var_dump($check);exit;
            if($check != false){            
                $thongbao = '<div class="alert alert-success">Sửa thành công</div>';
            }
            else{
                $thongbao = '<div class="alert alert-danger">Sửa thất bại</div>'; 
            }
        }
        include 'model/nhomquantri.php';
            $nhomqt = new nhomquantri();
            $nhomqts = $nhomqt->laydsqt();
        $this->render('view/nguoidung/them.php',['user'=>$us,'nhomqts'=>$nhomqts,'thongbao'=>$thongbao]);
    }

    function xoa(){
        $maqt=$_GET['maqt']??'';
        include 'model/quantri.php';
        $cn = new quantri();
        $cn->xoatk($maqt);
        chuyentrang(href('nguoidung','layds'));
    }
}