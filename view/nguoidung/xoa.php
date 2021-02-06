<?php
include 'libs/quantri.php';

$user = new quantri();
$user->xoatk($_GET['user']);
header('location:index.php');