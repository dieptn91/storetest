<?php
class loaisanpham extends database{
    //pt lay 1 tai khoan voi param cho truoc
    function laytk($tendn,$matkhau){
        $this->getsql('select * from quantri where tendangnhap=? and matkhau=?');
        return $this->loadrow([$tendn,$matkhau]);
    }

    //pt lay 1 tai khoan voi maqt
    function layma($maloai){
         $this->getsql('select * from quantri where maloai=?');
        return $this->loadrow([$maloai]);
        //return $user;
    }

    //pt lay 1 tai khoan voi tendangnhap
    function laytendn($tenloai){
        $this->getsql('select * from loaisp where tenloai=?');
       return $this->loadrow([$tenloai]);
       //return $user;
   }


    //pt lay danh sach user
    function layds(){
        $this->getsql('select * from loaisp where trangthai!=3');
        return $this->loadrows();
    }

    //pt lay danh sach user
    function laydsmacha(){
        $this->getsql('select * from loaisp where trangthai!=3 and macha=99');
        return $this->loadrows();
    }
    //pt sua 1 tk
    function suatk($tenqt,$tendangnhap,$matkhau,$manhom,$avatar,$trangthai,$ngaytao,$ngayupdate,$maqt){
        $this->getsql("update quantri set tenqt=?,tendangnhap=?,matkhau=?,manhom=?,avatar=?,trangthai=?,ngaytao=?,ngayupdate=? 
         where quantri.maqt=?");
        return $this->savetk([$tenqt,$tendangnhap,$matkhau,$manhom,$avatar,$trangthai,$ngaytao,$ngayupdate,$maqt]);
    }

    //pt them 1 tk
    function themtk($tenloai,$macha,$tukhoa,$avatar,$trangthai){
        if($this->laytendn($tenloai)==null){
        $this->getsql("INSERT INTO `loaisp` (`tenloai`, `hinhanh`, `macha`, `tukhoa`, `trangthai`, `ngaytao`, `ngayupdate`)
         VALUES (?, ?, ?, ?, ?, ?, ?)");
       //echo "123";
        return $this->savetk([$tenloai,$macha,$tukhoa,$avatar,$trangthai,date('Y-m-d'),date('Y-m-d')]);
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