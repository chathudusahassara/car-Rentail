<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		String RegNo = request.getParameter("vRegNo");
		String Brand = request.getParameter("vBrand");
		String Name = request.getParameter("vName");
		String Seats = request.getParameter("vSeats");
		String Price = request.getParameter("vPrice");
		String Driver = request.getParameter("vDriver");
		String PhoneNo = request.getParameter("vPhoneNo");
		String Availability = request.getParameter("vAvailability");
		String Image = request.getParameter("vImage");
		%>
		
		 <h1>Delete vehicle details</h1>
		<form action = "DeleteVehicleServlet" method="post">
		<table>
			<tr>
				<td>Vehicle Id</td>
				<td><input type="text" name="RegNo" value="<%=RegNo%>" readonly></td>
			</tr>
			<tr>
				<td>Vehicle brand</td>
				<td><input type="text" name="Brand" value="<%= Brand %>" readonly></td>
			</tr>
			<tr>
				<td>Vehicle name</td>
				<td><input type="text" name="Name" value="<%= Name%>" readonly></td>
			</tr>
			<tr>
				<td>No of seats</td>
				<td><input type="text" name="Seats" value="<%=Seats %>" readonly></td>
			</tr>
			<tr>
				<td>Price per day</td>
				<td><input type="text" name="Price" value="<%=Price %>" readonly></td>
			</tr>
			<tr>
				<td>Driver name</td>
				<td><input type="text" name="Driver" value="<%=Driver%>" readonly></td>
			</tr>
			<tr>
				<td>Driver phone no</td>
				<td><input type="text" name="PhoneNo" value="<%= PhoneNo%>" readonly></td>
			</tr>
			<tr>
				<td>vehicle availability</td>
				<td> <input type ="radio"  name ="availability" value="yes" checked readonly> Yes
								 <input type = "radio" name = "availability" value="no" readonly> No</td>
			</tr>
			<tr>				 
				<td>Image</td>
				<td><input type="text" name="Image" value="<%=Image %>" readonly></td>
			</tr>
		</table>
		<br>
	
	<input type="submit" name="submit" value="Delete My Data">
	
	</form>  

</body>
</html>