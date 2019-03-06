<?php
session_start();
$sessionid = session_id();
include('../functions.php');
include('enctype.php');

$obj = new Operations;

$tokent = $_GET['token'];
//echo "<br>";
$token = dec_enc('decrypt',$tokent);

$explodet = explode('&',$token);

$username = $explodet['0'];
$session = $explodet['1'];
$password = $explodet['2'];


$where = "WHERE username = '".$username."' and password = '".$password."'";
$admin = $obj->getSingle('admin_tbl',$where);

if(empty($tokent) || $sessionid ==''){
	header('location:login.php?need=login');
}
else if($admin == '' || $session != $sessionid ){
	header('location:login.php?tokens=error');
}




?>