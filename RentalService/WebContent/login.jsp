<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Login</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="/RentalService/mainl.css" rel="stylesheet" media="all">
    
 


<meta charset="ISO-8859-1">
<title>Log</title>
    <link rel="stylesheet" href="/RentalService/style.css" type="text/css">
    
    <link href="/RentalService/footer.css" rel="stylesheet" media="all">
    
    <link href="/RentalService/header.css" rel="stylesheet" media="all">
</head>

<body>

<script>  
function validateform(){  
var vname=document.myform.vname.value;  
var cno=document.myform.vno.value;  
  
if (vname==null || vname==""){  
  alert("Name can't be blank");  
  return false;  
}else if(vno==null || vno==""){  
  alert("Chassis number must be at least 9 characters long.");  
  return false;  
  }  
}  
</script>

<header>
	<nav>
  <div class="logo">  <img border="0" src="images/logo.jpg"
     alt="Pulpit rock" width="20" height="75" align="left" >
  <h1> SKY Rental Service  </h1>  <br><br>
  
  <h6>Turning miles Into Smiles.......</h6></div>

  <div class="navbar">
    <ul class="nav-menu">
      <li class="nav-item"><a href="#" class="nav-link">Home</a></li>
      <li class="nav-item"><a href="#" class="nav-link">About</a></li>
      <li class="nav-item"><a href="#" class="nav-link">Services</a></li>
      <li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
      
    </ul>
  </div>

  <div class="hamburger">
    <span class="bar"></span>
    <span class="bar"></span>
    <span class="bar"></span>
  </div>
</nav>
	</header>


    <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                 
                    
			<h1>Vehicle Logging Page</h1> <br> <br> <br>
	<form action="log" method="post" name="myform" onsubmit="return validateform()" >  
		<div class="input-group">
		<input class="input--style-2" type="text" placeholder="Vehicle Name" name="vname">
                        </div>
        <div class="input-group">
		<input class="input--style-2" type="password" placeholder="Chassis number" name="vno">
                        </div>                
	<div class="p-t-30">
                            <button class="btn btn--radius btn--green" name="submit" type="submit"> View vehicle maintaining details</button>
                        </div>

	</form>
	</div>
	</div>
	</div>	
	</div>
	
	
</body>
		 <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-6">
            <h6>About</h6>
            <p class="text-justify">Enjoy the efficient and specialized services of SKY rent a car, Sri Lanka's leading rent-a-car company.        <br>        
        	
           </p>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Quick Links</h6>
            <ul class="footer-links">
              <li><a href="http://scanfcode.com/about/">About Us</a></li>
              <li><a href="http://scanfcode.com/contact/">Contact Us</a></li>
              <li><a href="http://scanfcode.com/contribute-at-scanfcode/">Contribute</a></li>
              <li><a href="http://scanfcode.com/privacy-policy/">Privacy Policy</a></li>
              <li><a href="http://scanfcode.com/sitemap/">Sitemap</a></li>
            </ul>
          </div>
        </div>
        <hr>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">Copyright &copy; 2022 All Rights Reserved by 
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
            </ul>
          </div>
        </div>
      </div>
</footer>	

</html>