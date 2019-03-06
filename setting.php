<?php
include('header.php');
include('sidebar.php');


 ?>
            <div class="sb2-2">
                <div class="sb2-2-2">
                    <ul>
                        <li><a href="#"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
                        </li>
                        <li class="active-bre"><a href="#"> Settings</a>
                        </li>
                    </ul>
                </div>
                <div class="sb2-2-3">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="box-inn-sp">
                                <div class="inn-title">
                                    <h4>Setting</h4>
                                    <p>Change your Password</p>
                                </div>
                                <div class="tab-inn">

                                    <?php 
                                    if($_POST){
                                       // print_r($_POST);

                                        $passwords = $_POST['cpassword'];
                                        $data = array(
                                                        'password'=>$passwords
                                                        );
                                        $id = $admin['id'];
                                       $upd =  $obj->update('admin_tbl',$data,$id);
                                        if(empty($upd)){
                                            echo "<span style='color:green;'>Password Updated, For Security reasons you have to login again. Redirecting...</span><span style ='color:red;' id='counts'>5</p></span>";
                                        }
                                    }
                                    ?>

                                    <form method="post" action="">
                                        <div class="row">
                                            
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s6">
                                                <input id="password" type="password" name="password" class="validate">
                                                <label for="password">New password</label>
                                            </div>
                                            
                                        </div>
                                       
                                        <div class="row">
                                            <div class="input-field col s6">
                                                <input id="cpassword" type="password" name="cpassword" class="validate">
                                                <label for="cpassword">Confirm password</label>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="input-field col s6">
                                                <button type="submit" class="waves-effect waves-light btn-large btn-log-in" style="float:right;" onclick="return validations();">Change Password</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--== BOTTOM FLOAT ICON ==-->
    <section>
        <div class="fixed-action-btn vertical">
            <a class="btn-floating btn-large red pulse">
                <i class="large material-icons">mode_edit</i>
            </a>
            <ul>
                <li><a class="btn-floating red"><i class="material-icons">insert_chart</i></a>
                </li>
                <li><a class="btn-floating yellow darken-1"><i class="material-icons">format_quote</i></a>
                </li>
                <li><a class="btn-floating green"><i class="material-icons">publish</i></a>
                </li>
                <li><a class="btn-floating blue"><i class="material-icons">attach_file</i></a>
                </li>
            </ul>
        </div>
    </section>

    <!--======== SCRIPT FILES =========-->
    <script src="js/jquery.min.js"></script>
    <script>
        function validations(){
            var password = document.getElementById("password").value;
            var cpassword = document.getElementById("cpassword").value;
            if(password=='' || cpassword ==''){
                alert("All fields must be filled");
                return false;
            }
            else if(password != cpassword){
                alert("New password and confirm Password are not matching");
                return false;
            }
        }

    </script>
    <script>
        $(document).ready(function(){
            //alert('jQuery connected');
            var post = "<?php echo $passwords; ?>";
            //alert(post);
            if(post != ''){

                 setInterval(function() {
                    var div = document.querySelector("#counts");
                    var count = div.textContent * 1 - 1;
                    div.textContent = count;
                    if (count <= 0) {
                        window.location.replace("login.php");
                    }
                }, 1000);
           }

        });


    </script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/materialize.min.js"></script>
    <script src="js/custom.js"></script>
</body>


<!-- Mirrored from rn53themes.net/themes/demo/lava-admin/setting.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 21 Feb 2019 07:41:32 GMT -->
</html>