<?php
//class tuong tac vs database bac 1 (chung cho cac class sau nay)
class Database{
    var $sql,$pdo,$statement;//$sql dung chua cau sql, $pdo dung chua pdo, $statement chua du lieu anh xa tu sql sang php

    //pt khoi tao, khi new la mo luon ket noi
    function __construct(){
        try{
            $this->pdo=new PDO('mysql:host=localhost;port=3306;dbname=database_lrv','root','');
            $this->pdo->query('set names utf8');//set de nhan du lieu co dau
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);//set loi trong qua trinh ket vao trong
            //echo 'cn success'; exit();
        }catch(PDOException $e){
            exit($e->getMessage());
        }
    }

    //pt set cau lenh sql
    function getsql($sql){
        return $this->sql=$sql;
    }

    //pt load 1 dong du lieu
    function loadrow($params=[]){
        try{
        $this->statement=$this->pdo->prepare($this->sql);
        $this->statement->execute($params);
        return $this->statement->fetch(PDO::FETCH_OBJ);
        }catch(PDOException $e){
           echo($e->getMessage());
        }
    }

    //pt load nhieu dong du lieu
    function loadrows($params=[]){
        $this->statement=$this->pdo->prepare($this->sql);
        $this->statement->execute($params);
        return $this->statement->fetchAll(PDO::FETCH_OBJ);
    }

    //pt luu lai 
    function savetk($params=[]){
        $this->statement=$this->pdo->prepare($this->sql);
        $this->statement->execute($params);
        return $this;
    }

    //pt ngat ket noi
    function disconnectdb(){
        $this->pdo=null;
        $this->statement=null;
    }
}