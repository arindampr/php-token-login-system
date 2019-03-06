<?php 
session_start();
session_regenerate_id();
$session =  session_id();

include('enctype.php');
include('../functions.php');
$obj = new Operations;
//print_r($_POST);
if($_POST){
	$username = $_POST['username'];
	$password = $_POST['password'];

	$where = "WHERE username = '".$username."' and password = '".$password."'";
	$admin = $obj->getSingle('admin_tbl',$where);
	//print_r($admin);
	
	if($admin){

		//$_SESSION['username'] = $username;

		$tokent = $username.'&'.$session.'&'.$password;
		//echo "<br>";
		$token = dec_enc('encrypt',$tokent);

		header('location:dashboard.php?token='.$token);
	}
	else{
		header('location:login.php?err=1');
	}

}
else{
	header('location:login.php');
}



?>