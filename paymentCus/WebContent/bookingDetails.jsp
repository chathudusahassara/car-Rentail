<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>booking details</h1>

<h1>payment successfull message</h1>
<h2>search & edite booking details</h2>
<!--  	<form action="#" method = "post">
	
	
	</form> -->
	<table>
	<c:forEach var = "book" items = "${bookDetails}">
	
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

</body>
</html>