<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css_v/bootstrap.min.css">

<nav>
		  <div class="logo">  <img border="0" src="images/logo.png" alt="Pulpit rock" width="100" height="100" align="left" >
		  <h1> SKY Rental Service  </h1> 
		  
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

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #4d4d33;
  text-align: left;
  padding: 8px;
  background-color: #e0e0d1;
 
}

tr:nth-child(even) {
  background-color: #dddddd;
}

 	

</style>

	<link href="Footer/Footer.css" rel="stylesheet" media="all">
    <link href="header/Header.css" rel="stylesheet" media="all">
    <script type="text/javascript" src="header/Header.js"></script>
</head>
<body>
	<br><br>
	
	<center><h1>Vehicle details</h1></center><br>
 
	<center>
	<thead class="thead-dark">
	
	<table>
	
	<c:forEach var="vehic" items="${vehiDetails}">
	
	<c:set var="vRegNo" value="${vehic.getRegNo()}"/>
	<c:set var="vBrand" value="${vehic.getBrand()}"/>
	<c:set var="vName" value="${vehic.getName()}"/>
	<c:set var="vSeats" value="${vehic.getSeats()}"/>
	<c:set var="vPrice" value="${vehic.getPrice()}"/>
	<c:set var="vDriver" value="${vehic.getDriver()}"/>
	<c:set var="vPhoneNo" value="${vehic.getPhoneNo()}"/>
	<c:set var="vAvailability" value="${vehic.getAvailability()}"/>
	<c:set var="vImage" value="${vehic.getImage()}"/>
	
	
	
	<tr>
		<th>Vehicle Register No</th>
		<th>Vehicle Brand</th>
		<th>Vehicle name</th>
		<th>No Of seats</th>
		<th>Rent per day</th>
		<th>Driver name</th>
		<th>Driver phone no</th>
		<th>Availability</th>
		<th>Image</th>
		
	</tr>
	<tr>
		<td>${vehic.getRegNo()}</td>
		<td>${vehic.getBrand()}</td>
		<td>${vehic.getName()}</td>
		<td>${vehic.getSeats()}</td>
		<td>${vehic.getPrice()}</td>
		<td>${vehic.getDriver()}</td>
		<td>${vehic.getPhoneNo()}</td>
		<td>${vehic.getAvailability()}</td>
		<td>${vehic.getImage()}</td>	
	</tr>
	
	<!-- <tr>
		<th>Vehicle Register No</th>
		<td>${vehic.getRegNo()}</td>
	</tr>
	<tr>
		<th>Vehicle Brand</th>
		<td>${vehic.getBrand()}</td>
	</tr>
	<tr>
		<th>Vehicle name</th>
		<td>${vehic.getName()}</td>
	</tr>
	<tr>
		<th>No Of seats</th>
		<td>${vehic.getSeats()}</td>
	</tr>
	<tr>
		<th>Rent per day</th>
		<td>${vehic.getPrice()}</td>
	</tr>
	<tr>
		<th>Driver name</th>
		<td>${vehic.getDriver()}</td>
	</tr>
	<tr>
		<th>Driver phone no</th>
		<td>${vehic.getPhoneNo()}</td>
	</tr>
	<tr>
		<th>Availability</th>
		<td>${vehic.getAvailability()}</td>
	</tr>
	<tr>
		<th>Image</th>
		<td>${vehic.getImage()}</td>
	</tr>-->
	
	
	
	
	</c:forEach>	
	</table>
	
	<c:url value="updateVehicle.jsp" var="vehiUpdate">
	
		<c:param name = "vRegNo" value="${vRegNo}"/>
		<c:param name = "vBrand" value="${vBrand}"/>
		<c:param name = "vName"  value="${vName}"/>
		<c:param name = "vSeats" value="${vSeats}"/>
		<c:param name = "vPrice" value="${vPrice}"/>
		<c:param name = "vDriver" value="${vDriver}"/>
		<c:param name = "vPhoneNo" value="${vPhoneNo}"/>
		<c:param name = "vAvailability" value="${vAvailability}"/>
		<c:param name = "vImage" value="${vImage}"/>
	
			
	</c:url>
	
	<a href ="${vehiUpdate}">
	<br><br>
	<input type="button" name="update" class="btn btn-warning" value="Update vehicle details">
	</a>
	
	<c:url value="deleteVehicle.jsp" var="vehiDelete">
		<c:param name = "vRegNo" value="${vRegNo}"/>
		<c:param name = "vBrand" value="${vBrand}"/>
		<c:param name = "vName"  value="${vName}"/>
		<c:param name = "vSeats" value="${vSeats}"/>
		<c:param name = "vPrice" value="${vPrice}"/>
		<c:param name = "vDriver" value="${vDriver}"/>
		<c:param name = "vPhoneNo" value="${vPhoneNo}"/>
		<c:param name = "vAvailability" value="${vAvailability}"/>
		<c:param name = "vImage" value="${vImage}"/>
		
		
	</c:url>
	
	<a href = "${vehiDelete}">
	
	<input type="button" name="Delete"  class="btn btn-danger" value="Delete vehicle details">
	</a>
	<br><br><br><br><br><br>
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