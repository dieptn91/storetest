<?php 
class hethongcontroller extends controller
{
    function index()
    {
        $this->render('view/hethong/trangchu.php');
    }
    function contact()
    {
        $this->render('view/hethong/lienhe.php');
    }
}