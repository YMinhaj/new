<?php
session_start();
?>

<!DOCTYPE html>


<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title></title>

        <!-- CSS -->
 <link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/prettyPhoto.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link href="css/responsive.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->


    </head>

    <div class="wow bounceInDown">

        <div class="top-content"  style = "margin-top:-40px;">
            
            <div class="inner-bg">
            <div class="container">
                    
       
        
            <div class="row">
            <div class="col-sm-5">
                
            <div class="form-box">
            <div class="form-top">
            <div class="form-top-left">
            <h3>Login to our site</h3>
            <p>Enter username and password to log on:</p>
            </div>
                        
            <div class="form-top-right">
            <i class="fa fa-lock"></i>
            </div>
            </div>
            <div class="form-bottom">
            <form role="form" action="adminfun.php" method="post" class="login-form">
            <div class="form-group">
            <label class="sr-only" for="email">Username</label>
            <input type="text" name="email" placeholder="Username..." class="form-username form-control" id="form-username" required>
            </div>
            
            <div class="form-group">
            <label class="sr-only" for="password">Password</label>
            <input type="password" name="password" placeholder="Password..." class="form-password form-control" id="form-password" required>
            </div>
         <input type="submit" id="submit" class="btn btn-success" Value="Signin" name = "signin"/>
           </form>
            </div>
           </div>

            
          </div>




    <script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/jquery.isotope.min.js"></script>
<script src="js/main.js"></script>
<script src="js/wow.min.js"></script>

 <script>
              new WOW().init();
              </script>
</body>
</html>