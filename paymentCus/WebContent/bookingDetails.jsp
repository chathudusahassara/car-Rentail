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
<h2>search & edit booking details</h2>
<!--  	<form action="#" method = "post">
	
	
	</form> -->
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
	
	<c:url value = "updatebooking.jsp" var="bookupdate">
		<c:param name="id" value = "${id}"/>
		<c:param name="model" value = "${model}"/>
		<c:param name="duration" value = "${duration}"/>
		<c:param name="adate" value = "${adate}"/>
		<c:param name="rdate" value = "${rdate}"/>
	
	</c:url>
	
	<a href = "${bookupdate}">
	<input type = "button" name="update" value ="update booking details">
	</a>
	
	<c:url value="deletecustomer.jsp" var="bookdelete">
		<c:param name="id" value = "${id}"/>
		<c:param name="model" value = "${model}"/>
		<c:param name="duration" value = "${duration}"/>
		<c:param name="adate" value = "${adate}"/>
		<c:param name="rdate" value = "${rdate}"/>

	</c:url>
	<a href ="${bookdelete}">
	<input type ="button" name="delete" value = "Delete My Account">
	</a>
	
</body>
</html>