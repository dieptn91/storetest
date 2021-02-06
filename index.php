<?php 
include 'system/core/database.php';
include 'system/config/config.php';
include 'system/libs/funcs.php';
include 'controller/controller.php';//nhúng controller chung nhất, chứa các function chung mà các class controller đều có, vd 404
//url để thể hiện bao gồm 2 biến, 1 là controller thể hiện tên controller, 2 là action thể hiện function
$action  =  $_GET['action']??'index';// set mặc định
$controllername  =  ($_GET['controller']??'hethong').'controller';//set mặc định
$path = 'controller/'.$controllername.'.php';//set url để gọi
if(file_exists($path))//kiểm tra path có thì include
{
    include $path;
    $controller = new $controllername();
    if(method_exists($controller,$action))//kiểm tra sau đó thực thi action nếu có
    {
        if(islogin()){
        $controller->$action();
        }else{
            include_once 'controller/nguoidungcontroller.php';
            //echo '12314';exit;
            $user = new nguoidungcontroller();
            $user->login();
        }
        //$cn = new quantri();
    }else{//không có action trả 404
        $controller->_404();
    }
}else{//không có include trả mặc định
    include 'controller/hethongcontroller.php';
    $controller = new hethongcontroller();
    $controller->_404();
}
