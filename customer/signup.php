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

<div class="wow bounceInLeft">
		<div class="col-sm-1"></div>
	    <div class="col-sm-5">
		<div class="form-box">
		
		<div class="form-top">
	    <div class="form-top-left" >
						
						
	   <h3>Create New Admin</h3>
	   <p>Fill in the form below to get instant access:</p>
	   </div>
					
	  <div class="form-top-right">
      <i class="fa fa-pencil"></i>
      </div>
      </div>
     
	 <div class="form-bottom">
     <form role="form" action="adminfun.php" method="post" class="registration-form" enctype="multipart/form-data">
     <div class="form-group">
	<label class="sr-only" for="name">Full Name</label>
	<input type="text" name="name" placeholder="First name..." class="name form-control" id="form-first-name" required>
    </div>
				
   
				
	<div class="form-group">
	<label class="sr-only" for="email">Email</label>
	<input type="email" name="email" placeholder="Email..." class="email form-control" id="form-email" required>
	</div>

	<div class="form-group">
	<label class="sr-only" for="password">Password</label>
	<input type="password" name="password" placeholder="password..." class="password form-control" id="form-password" required></br>
	
	</div>
<textarea name="address" placeholder="address..." class="password form-control" id="form-password" required></textarea>
	<div class="form-group">
	
	
	</div>
	<div class="form-group">
	<label class="sr-only" for="password">Image</label>
	<input type="file" name="pix" required></br>
	
	</div>

	
	 <input type="submit" id="submit" class="btn btn-success" Value="Sign me up" name = "signup"/>
       



		
		</div>
		</div>

	    </div>
		</div>
			
		

       </form>

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