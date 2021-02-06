<?php
//include 'core/database.php';

class quantri extends database{

    //pt lay 1 tai khoan voi param cho truoc
    function laytk($tendn,$matkhau){
        $this->getsql('select * from quantri where tendangnhap=? and matkhau=?');
        return $this->loadrow([$tendn,$matkhau]);
    }

    //pt lay 1 tai khoan voi maqt
    function layma($maqt){
         $this->getsql('select * from quantri where maqt=?');
        return $this->loadrow([$maqt]);
        //return $user;
    }

    //pt lay 1 tai khoan voi tendangnhap
    function laytendn($tendangnhap){
        $this->getsql('select * from quantri where tendangnhap=?');
       return $this->loadrow([$tendangnhap]);
       //return $user;
   }


    //pt lay danh sach user
    function layds(){
        $this->getsql('select * from quantri where trangthai!=3');
        return $this->loadrows();
    }

    //pt sua 1 tk
    function suatk($tenqt,$tendangnhap,$matkhau,$manhom,$avatar,$trangthai,$ngaytao,$ngayupdate,$maqt){
        $this->getsql("update quantri set tenqt=?,tendangnhap=?,matkhau=?,manhom=?,avatar=?,trangthai=?,ngaytao=?,ngayupdate=? 
         where quantri.maqt=?");
        return $this->savetk([$tenqt,$tendangnhap,$matkhau,$manhom,$avatar,$trangthai,$ngaytao,$ngayupdate,$maqt]);
    }

    //pt them 1 tk
    function themtk($tenqt,$tendangnhap,$matkhau,$manhom,$avatar,$trangthai){
        if($this->laytendn($tendangnhap)==null){
        $this->getsql("insert into quantri(tenqt,tendangnhap,matkhau,manhom,avatar,trangthai) 
        values(?,?,?,?,?,?)");
       //echo "123";
        return $this->savetk([$tenqt,$tendangnhap,$matkhau,$manhom,$avatar,$trangthai]);
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

