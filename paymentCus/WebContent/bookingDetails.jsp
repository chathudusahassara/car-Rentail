<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  width: 30%;
}

td, th {
  border: 1px solid #4d4d33;
  text-align: left;
  padding: 8px;
  background-color: #BAEEFB;
 
}

tr:nth-child(even) {
  background-color: #dddddd;
}



</style>



<!-- start form links -->

    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
   

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">



<!-- stop form links -->




</head>
<body>


<center>
<h1>Booking Details</h1>
</center>
<br><br>


<!--  	<form action="#" method = "post">
	
	
	</form> -->
	<center>
	<table>
	<c:forEach var = "book" items = "${bookDetails}">
	
	<c:set var="id" value="${book.id}"/>
	<c:set var="model" value="${book.carModel}"/>
	<c:set var="duration" value="${book.duration}"/>
	<c:set var="adate" value="${book.acceptanceDate}"/>
	<c:set var="rdate" value="${book.returnDate}"/>
	
	
	
	

	
	
	<tr>
	<td>Booking ID</td>
	<td>${book.id}</td>
	</tr>
	<tr>
	<td>Car Model</td>
	<td>${book.carModel}</td>
	</tr>
	<tr>
	<td>Duration</td>
	<td>${book.duration}</td>
	</tr>
	<tr>
	<td>acceptanceDate</td>
	<td>${book.acceptanceDate}</td>
	</tr>
	<tr>
	<td>returnDate</td>
	<td>${book.returnDate}</td>
	</tr>
	
	
	</c:forEach>
	</table>
	</center>
	
	
	
	 
	
	<c:url value = "updatebooking.jsp" var="bookupdate">
		<c:param name="id" value = "${id}"/>
		<c:param name="model" value = "${model}"/>
		<c:param name="duration" value = "${duration}"/>
		<c:param name="adate" value = "${adate}"/>
		<c:param name="rdate" value = "${rdate}"/>
	
	</c:url>
	
	
	<!--  
	<a href = "${bookupdate}">
	<input type = "button" name="update" value ="update booking details">
	</a>
	-->
	                   
	    
	       
	        <center>
	        <a href = "${bookupdate}">
	         <div class="p-t-30">
                  <button class="btn btn--radius btn--green" type = "button" name="update" >update booking details</button>
             </div>
             </a>
             </center>
		
		
	<c:url value="deletecustomer.jsp" var="bookdelete">
		<c:param name="id" value = "${id}"/>
		<c:param name="model" value = "${model}"/>
		<c:param name="duration" value = "${duration}"/>
		<c:param name="adate" value = "${adate}"/>
		<c:param name="rdate" value = "${rdate}"/>

	</c:url>
	
	
	<!--  
	<a href ="${bookdelete}">
	<input type ="button" name="delete" value = "Delete My Account">
	</a>
	
	-->
	
	
			
	        <center>
	        <a href = "${bookdelete}">
	         <div class="p-t-30">
                  <button class="btn btn--radius btn--red" type ="button" name="delete">Delete My Account</button>
             </div>
             </a>
             </center>
             
	
	
	
	
</body>
</html>