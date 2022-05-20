<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="css_v/bootstrap.min.css">
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



</body>
</html>