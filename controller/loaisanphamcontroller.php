<?php
class loaisanphamcontroller extends controller{
    function index(){
        include 'model/loaisanpham.php';
        $cn = new loaisanpham();
        $loaisp = $cn->layds();
        $macha = $cn->laydsmacha();
        //var_dump($macha);exit;
        $this->render('view/loaisanpham/danhsach.php',['loaisp'=>$loaisp,'macha'=>$macha]);
    }
    function them(){
        $thongbao = '';
        $avt = myupload($_FILES['avatar']??'','images/',$err)??'';
            include 'model/loaisanpham.php';
            $loaisp=new loaisanpham();
            $macha = $loaisp ->laydsmacha();
            if(isset($_POST['tenloai'])){
            $check=$loaisp->themtk($_POST['tenloai'],$avt,$_POST['macha'],$_POST['tukhoa'],$_POST['trangthai']);  
            if($check!=false){            
                    $thongbao = '<div class="alert alert-success">Thêm thành công</div>';
                }
            else{
                $thongbao = '<div class="alert alert-danger">Tài khoản đã tồn tại</div>'; 
            }
        }
        $this->render('view/loaisanpham/them.php',['macha'=>$macha,'thongbao'=>$thongbao,'loaisp'=>$loaisp]);
    }
}