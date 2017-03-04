<?php
session_start();

 	 
//sing in// 
$con = mysqli_connect("localhost","root","","store");


if(isset($_POST ['signin'])){
  $email=$_POST['email'];
  $u_pass=$_POST['password'];

//if email register in database then login otherwise failed//
	 $query="select * from superadmin where email='$email' AND password='$u_pass'";
	 $run =  mysqli_query($con,$query);
	  if (mysqli_num_rows($run)){
	echo "<script>alert('Login Success')</script>";
    echo "<script>window.open('../admin/pages/vpages/brand.php','_self')</script>";
     $_SESSION['email']=$email;
	 
	  }
	 
	
else  {
		echo "<script>alert('Incorrect Username OR password')</script>";
		echo "<script>window.open('signin.php','_self')</script>";
	}
	
		}


//regestraion//


$con = mysqli_connect("localhost","root","","store") or die ("<h3>Not connected</h3>");


	if(isset($_POST['signup']))
{
	 $name=$_POST['name'];
	 $email=$_POST['email'];
	 $pass=$_POST['password'];
	 $address=$_POST['address'];
$img=$_FILES['pix']['name'];
         $pro_img_tmp=$_FILES['pix']['tmp_name'];
         move_uploaded_file($pro_img_tmp,"adminpic/$img");
	

	$que="insert into superadmin(name,email,password,address,date,pix) values ('$name','$email','$pass','$address',NOW(),'$img')";
	 
	
	 
	 if(mysqli_query($con,$que)){
	echo "<script>alert('New Record Entered Successfully')</script>";
echo "<script>window.open('signin.php','_self')</script>";
}
	else {
		echo "<script>alert('Email Already taken')</script>";
			echo "<script>window.open('signup.php','_self')</script>";

	}
	
}



?>