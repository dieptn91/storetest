<?php
class nhomquantricontroller extends controller{
    function index(){
        include 'model/nhomquantri.php';
        $nhomqt = new nhomquantri();
        $nhomqts = $nhomqt->laydsqt();
        $this->render('view/quantri/danhsachqt.php',['nhomqts'=>$nhomqts]);
    }
}