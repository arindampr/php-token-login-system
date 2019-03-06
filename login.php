<!DOCTYPE html>
<html lang="en">



<head>
    <title>Lava Material - Web Application and Website Multipurpose Admin Panel Template</title>
    <!--== META TAGS ==-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!--== FAV ICON ==-->
    <link rel="shortcut icon" href="images/fav.ico">

    <!-- GOOGLE FONTS -->
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,600,700" rel="stylesheet">

    <!-- FONT-AWESOME ICON CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!--== ALL CSS FILES ==-->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/mob.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/materialize.css" />

   
</head>

<body>
    <div class="blog-login">
        <div class="blog-login-in">
            <form method="POST" action="login-act.php">

                <img src="images/logoo.png" alt="" />
                    <?php 
                            if(isset($_GET['err'])){
                                echo "<p style='color:red; text-align:center;'>Invalid username or password</p>";
                            }
                            else if(isset($_GET['logout'])){
                                echo "<p style='color:green; text-align:center;'>You have successfully logged out</p>";
                            }
                            else if(isset($_GET['tokens'])){
                                echo "<p style='color:red; text-align:center;'>Token mismatch, login again</p>";
                            }
                            else if(isset($_GET['need'])){
                                echo "<p style='color:red; text-align:center;'>Need login to access Admin.</p>";
                            }

                       ?>

                <div class="row">
                    <div class="input-field col s12">

                        <input id="username" type="text" class="validate" autocomplete="off" name="username" style="color:white;">
                        <label for="first_name1">User Name</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">
                        <input id="password" type="password" class="validate" autocomplete="off" name="password" style="color:white;">
                        <label for="last_name">Password</label>
                    </div>
                </div>
                <div class="row">
                    <div class="input-field col s12">

                        <input type="text" class="validate" autocomplete="off" id="captcha"  style="color:white; float: left;">
                         <label for="last_name">

                            <?php 
                            $one = rand(1,10);
                            $two = rand(1,10);
                            $total = $one + $two;
                            echo $one. "+" .$two. "= ?";
                            ?></label>

                        <button class="waves-effect waves-light btn-large btn-log-in"  style="float: right;" onclick="return validation();">Login</button>
                    </div>
                </div>
               <!-- <a href="forgot.html" class="for-pass">Forgot Password?</a>-->
            </form>
        </div>
    </div>

    <!--======== SCRIPT FILES =========-->
    <script src="js/jquery.min.js"></script>



    <script>
        
        function validation(){
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            var total = "<?php echo $total ?>";
            var captcha = document.getElementById("captcha").value;
            //alert(total);

            
            if(username =='' && password == '' && captcha == ''){
                alert("Please fill all the fields.");
                return false;
            }

            else if(username != '' && password ==''){
                alert("Please fill the password fields also.");
                return false;
            }
            else if(username =='' && password !=''){
                alert("Please fill the username fields also.");
                return false;
            }
            else if(captcha != total){
                alert("Captcha error, Please recheck");
                return false;
            }
        }
        
    </script>



    <script src="js/bootstrap.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <script src="js/custom.js"></script>
</body>



</html>