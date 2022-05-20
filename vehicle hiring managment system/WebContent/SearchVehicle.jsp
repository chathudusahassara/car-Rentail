<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<nav>
		  <div class="logo">  <img border="0" src="images/logo.png" alt="Pulpit rock" width="100" height="100" align="left" >
		  <h1> SKY Rental Service  </h1> 
		  
		  </div>
		
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
	
	<link href="Footer/Footer.css" rel="stylesheet" media="all">
    <link href="header/Header.css" rel="stylesheet" media="all">
    <script type="text/javascript" src="header/Header.js"></script>

<link rel="stylesheet" href="css_v/bootstrap.min.css">
<link rel="stylesheet" href="VehicleCss/vehicleCss.css">

<style>
body {
  background-image: url('VehicleImages/searchVehicle1.jpg');
  background-size: cover;
 
}
.btn btn-success pull-left.ml-1{
	margin-left: ($spacer * .25) !important;

}
</style>

<meta charset="ISO-8859-1">
<title>Insert title here</title>


</head>
<body>
	<br><br><br><br><br>
	 <center><h1>Search Vehicle Details</h1></center>
	 <button class='btn btn-success pull-left'>Back</button>
	<center>
	<form action="SearchServlet" method="post" class="form-row" border = "1px">
		<div class= "col-xs-4">
			<label for="vehicleBrand" class="sr-only" >Vehicle brand</label>
				 <input type="text" name="brand" class="form-control" id="searchBrand" placeholder="Enter vehicle brand" style="Width:400px"><br>
		</div>
		<div class= "col-xs-4">
			<label for="vehicleName" class="sr-only">Vehicle name</label>
				 <input type="text" name="name" class="form-control" id="searchName" placeholder="Enter vehicle name" style="Width:400px"><br>
		</div>
	<input type="submit" class="btn btn-outline-dark" name="submit" value="search" >
	</form>
	
	</center><br><br><br><br><br><br><br><br><br><br><br><br>
	
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
	
	  
    

</body>
</html>