<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details</title>

  <link href="/RentalService/table.css" rel="stylesheet" media="all">
  
   <link href="/RentalService/footer.css" rel="stylesheet" media="all">
    
   <link href="/RentalService/header.css" rel="stylesheet" media="all">
</head>


<body>
		<div class="container">
	<table>
	
	<c:forEach var="vh" items="${vDetails}">
	
		<thead>
			<tr>
				<th>Vehicle Id</th>
				<th>Vehicle Name</th>
				<th>Chassis No</th>
				<th>Shop</th>
				<th>Date</th>
				<th>Maintain Fee</th>
				<th>Image Link</th>
				
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>${vh.vid}</td>
				<td>${vh.vehicleName}</td>
				<td>${vh.chassisno}</td>
				<td>${vh.shop}</td>
				<td>${vh.date}</td>
				<td>${vh.maintainfee}</td>
				<td>${vh.imagelink}</td>
			</tr>

		</tbody>
		</c:forEach>
	</table>
</div>
</body>


</html>