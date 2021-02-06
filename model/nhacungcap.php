<?php
//include 'core/database.php';

class nhacungcap extends database{

    //pt lay 1 tai khoan voi param cho truoc
    function laytk($tendn,$matkhau){
        $this->getsql('select * from quantri where tendangnhap=? and matkhau=?');
        return $this->loadrow([$tendn,$matkhau]);
    }

    //pt lay 1 tai khoan voi maqt
    function layma($masp){
         $this->getsql('select * from sanpham where masp=?');
        return $this->loadrow([$masp]);
        //return $user;
    }

    //pt lay 1 tai khoan voi tendangnhap
    function laytendn($tensp){
        $this->getsql('select * from sanpham where tensp=?');
       return $this->loadrow([$tensp]);
       //return $user;
   }


    //pt lay danh sach user
    function layds(){
        $this->getsql('select * from nhacungcap where trangthai!=3');
        return $this->loadrows();
    }

    //pt sua 1 tk
    function suatk($tenqt,$tendangnhap,$matkhau,$manhom,$avatar,$trangthai,$ngaytao,$ngayupdate,$maqt){
        $this->getsql("update quantri set tenqt=?,tendangnhap=?,matkhau=?,manhom=?,avatar=?,trangthai=?,ngaytao=?,ngayupdate=? 
         where quantri.maqt=?");
        $this->savetk([$tenqt,$tendangnhap,$matkhau,$manhom,$avatar,$trangthai,$ngaytao,$ngayupdate,$maqt]);
    }

    //pt them 1 tk
    function themtk($tensp,$avatar,$mota,$chitiet,$gia,$soluong,$maloai,$mancc,$tukhoa,$trangthai){
        if($this->laytendn($tensp)==null){
        $this->getsql("INSERT INTO `sanpham` ( `tensp`, `hinhanh`, `mota`, `chitiet`, `gia`, `soluong`, `maloai`, `mancc`, `tukhoa`, `trangthai`, `ngaytao`, `ngayupdate`) 
        VALUES ( ?, ?, ?, ?, ?, ?, ?, ?, ?)");
       //echo "123";
        return $this->savetk([$tensp,$avatar,$mota,$chitiet,$gia,$soluong,$maloai,$mancc,$tukhoa,$trangthai,date('T-m-d'),date('Y-m-d')]);
        }else
            return false;
    }

    //pt xoa tk
    function xoatk($maqt){
        //$this->getsql('delete from quantri where maqt=?');
        $this->getsql('update quantri set trangthai=3 where maqt=?');
        return $this->savetk([$maqt]);
    }
}

