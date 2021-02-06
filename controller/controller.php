<?php
abstract class controller{
    function _404()
    {
        include 'view/hethong/404.php';
    }

    //$view sẽ nhận 1 path từ view + vs include có sẵn thành layout
    function render($view,$param=[],$layout='mainlayout'){
        extract($param);//gán các giá trị của mảng thành biến dựa trên key
        include 'public/'.$layout.'.php';
    }
}