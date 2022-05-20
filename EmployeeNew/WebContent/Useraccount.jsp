<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- form style start -->

<!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

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

<!-- form style end -->
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







table {
font-family: arial, sans-serif;
border-collapse: collapse;
width: 100%;
}td, th {
border: 1px solid #4d4d33;
text-align: left;
padding: 8px;
background-color: #e0e0d1;
}tr:nth-child(even) {
background-color: #dddddd;
}


</style>

</head>
<body>
    
    <table>
	<c:forEach var="emp" items="${empDetails}">
	
	<c:set var="id" value="${emp.id}"/>
	<c:set var="name" value="${emp.name}"/>
	<c:set var="phone" value="${emp.phone}"/>
	<c:set var="email" value="${emp.email}"/>
	<c:set var="position" value="${emp.position}"/>
	<c:set var="salary" value="${emp.salary}"/>
	<c:set var="gender" value="${emp.gender}"/>
	
		<center>
	<!--  	${emp.id}
		${emp.name}   -->
		
		<tr>
		<th>Employee ID</th>
		<td>${emp.id}</td>
		</tr>
		<tr>
		<th>Employee Name</th>
		<td>${emp.name}</td>
		</tr>
		<tr>
		<th>Employee Phone</th>
		<td>${emp.phone}</td>
		</tr>
		<tr>
		<th>Employee Email</th>
		<td>${emp.email}</td>
		</tr>
		<tr>
		<th>Employee Position</th>
		<td>${emp.position}</td>
		</tr>
		<tr>
		<th>Employee Salary</th>
		<td>${emp.salary}</td>
		</tr>
		<tr>
		<th>Employee Gender</th>
		<td>${emp.gender}</td>
		</tr>
		
		
		
		
</c:forEach>


</table>
</center>
     <c:url value="updateemployee.jsp" var="empupdate">
        <c:param name="id" value="${id}"/>
        <c:param name="name" value="${name}"/>
        <c:param name="phoneno" value="${phone}"/>
        <c:param name="email" value="${email}"/>
        <c:param name="position" value="${position}"/>
        <c:param name="salary" value="${salary}"/>
        <c:param name="gender" value="${gender}"/>
        </c:url>
        
        <br><br>
        <center>
        <a href="${empupdate}">
        <!-- <input type="button" name="update" value="Update My Data"> -->
        <input type="button" name="update"  class="btn btn--radius btn--green" value=" Update Employee details" color:"green/>
        </a>
       </center>
       

          <br>
          <c:url value="deleteemployee.jsp" var="empdelete">
          <c:param name="id" value="${id}"/>
          <c:param name="name" value="${name}"/>
          <c:param name="phoneno" value="${phone}"/>
          <c:param name="email" value="${email}"/>
          <c:param name="position" value="${position}"/>
          <c:param name="salary" value="${salary}"/>
          <c:param name="gender" value="${gender}"/>
          
          </c:url>
          <center>
          <a href="${empdelete}">
        
         <input type="button" name="delete"  class="btn btn--radius btn--green" value=" Delete Employee details" color:"green">
         </a>
         </center>

</body>
</html>

 