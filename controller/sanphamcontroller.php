<?php 

class sanphamcontroller extends controller
{
    function index()
    {
        include 'model/sanpham.php';
        $cn = new sanpham();
        $sp = $cn->layloai();
        //var_dump($sp);exit;
        $this->render('view/sanpham/danhsach.php',['sp'=>$sp]);
    }
    function xoa()
    {
        include 'model/sanpham.php';
        $cn = new sanpham();
        $cn->xoatk($_GET['masp']);
        chuyentrang(href('sanpham'));
    }
    function them(){
        $thongbao = '';
        $avt = myupload($_FILES['avatar']??'',$_FILE['avatar']??'','images',$err);
        if(isset($_POST['tensp'],$_POST['dongia'],$_POST['soluong'],$_POST['maloai'],$_POST['mancc'],$_POST['trangthai']))
        {
            include 'model/sanpham.php';
            $sanpham = new sanpham();
            //$tensp,$avatar,$mota,$chitiet,$gia,$soluong,$maloai,$mancc,$tukhoa,$trangthai
            $check = $sanpham->themtk($_POST['tensp'],$avt,$_POST['mota'],$_POST['chitiet'],$_POST['dongia'],$_POST['soluong'],$_POST['maloai'],$_POST['mancc'],$_POST['tukhoa'],$_POST['trangthai']);  
            if($check!=false){            
                    $thongbao = '<div class="alert alert-success">Thêm thành công</div>';
                }
            else{
                $thongbao = '<div class="alert alert-danger">Tài khoản đã tồn tại</div>'; 
            }
        }
        include 'model/loaisanpham.php';
            $loaisp = new loaisanpham();
            $loaisps = $loaisp->layds();
        include 'model/nhacungcap.php';
            $nhacc = new nhacungcap();
            $nhaccs = $nhacc->layds();
        $this->render('view/sanpham/them.php',['loaisps'=>$loaisps,'thongbao'=>$thongbao,'nhaccs'=>$nhaccs]);
    }
    function sua(){
        //$masp=1;
        $thongbao = '';
        include 'model/sanpham.php';
        $sanpham = new sanpham();
        $sp = $sanpham->layma($_GET['masp'])??'';
        $avt = myupload($_FILES['avatar']??'', $sp->hinhanh,'images',$err);
    
        if(isset($_POST['tensp']))
        {
            //$tensp,$avatar,$mota,$chitiet,$gia,$soluong,$maloai,$mancc,$tukhoa,$trangthai
            $check = $sanpham->suatk($_POST['tensp'],$avt,$_POST['mota'],$_POST['chitiet'],$_POST['dongia'],$_POST['soluong'],$_POST['maloai'],$_POST['mancc'],$_POST['tukhoa'],$_POST['trangthai'],$sp->masp);  
           //var_dump($check);exit;
            if($check){            
                    $thongbao = '<div class="alert alert-success">Sửa thành công</div>';
                }
            else{
                $thongbao = '<div class="alert alert-danger">Sửa không thành công</div>'; 
            }
        }
    
    include 'model/loaisanpham.php';
            $loaisp = new loaisanpham();
            $loaisps = $loaisp->layds();
        include 'model/nhacungcap.php';
            $nhacc = new nhacungcap();
            $nhaccs = $nhacc->layds();
        $this->render('view/sanpham/them.php',['loaisps'=>$loaisps,'thongbao'=>$thongbao,'nhaccs'=>$nhaccs,'sp'=>$sp]);
    }
}