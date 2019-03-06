<?php 
include('auth.php');

?>

<!DOCTYPE html>
<html lang="en">


<head>
    <title></title>
   
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
   


   
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600|Quicksand:300,400,500" rel="stylesheet">

   
    <link rel="stylesheet" href="css/font-awesome.min.css">

   
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/mob.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/materialize.css" />

  
</head>

<body>
   
    <div class="container-fluid sb1" style="background:#283788;">
        <div class="row">
           
            <div class="col-md-2 col-sm-3 col-xs-6 sb1-1">
                <a href="#" class="btn-close-menu"><i class="fa fa-times" aria-hidden="true"></i></a>
                <a href="#" class="atab-menu"><i class="fa fa-bars tab-menu" aria-hidden="true"></i></a>
                <a href="index.html" class="logo"><img src="images/logoo.png" alt="" />
                </a>
            </div>
				
				  <div class="col-md-1 tab-hide">
                <div class="top-not-cen">
                    <h4 style="color:#fff; padding-top:17px;">Admin</h4>
                </div>
            </div> 
		 
		 
		 
		 
            <div class="col-md-5 col-sm-5 mob-hide">
                
            </div>
			<div class="col-md-1 col-sm-1 mob-hide">
				
			</div>
           
		    <div class="col-md-1 col-sm-1 mob-hide">
				
			</div>
           
            <!--== MY ACCCOUNT ==-->
            <div class="col-md-2 col-sm-3 col-xs-6">
                <!-- Dropdown Trigger -->
                <a class='waves-effect dropdown-button top-user-pro' href='#' data-activates='top-menu' style="color:#fff;"><img src="images/user/6.png" alt="" />Admin <i class="fa fa-angle-down" aria-hidden="true"></i>
                </a>

                <!-- Dropdown Structure -->
                <ul id='top-menu' class='dropdown-content top-menu-sty'>
                    <li><a href="setting.php?token=<?php echo $tokent; ?>" class="waves-effect"><i class="fa fa-cogs" aria-hidden="true"></i>Admin Setting</a>
                    </li>
                    
                    <li class="divider"></li>
                    <li><a href="logout.php" class="ho-dr-con-last waves-effect"><i class="fa fa-sign-in" aria-hidden="true"></i> Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--== BODY CONTNAINER ==-->
    <div class="container-fluid sb2">
        <div class="row">
            
