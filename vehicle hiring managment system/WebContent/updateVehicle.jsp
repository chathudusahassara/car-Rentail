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
		 
		<form action = "UpdateVehicleServlet" method="post">
		
		Vehicle Id<input type="text" name="RegNo" value="<%=RegNo%>" readonly><br>
		Vehicle brand<input type="text" name="Brand" value="<%= Brand %>"><br>
		Vehicle name<input type="text" name="Name" value="<%= Name%>"><br>
		No of seats<input type="text" name="Seats" value="<%=Seats %>"><br>
		Price per day<input type="text" name="Price" value="<%=Price %>"><br>
		Driver name<input type="text" name="Driver" value="<%=Driver%>"><br>
		Driver phone no<input type="text" name="PhoneNo" value="<%= PhoneNo%>"><br>
		vehicle availability <input type ="radio"  name ="availability" value="yes" checked> Yes
						 <input type = "radio" name = "availability" value="no"> No<br>
		Image<input type="text" name="Image" value="<%=Image %>"><br>
		
	
	<input type="submit" name="submit" value="Update My Data">
	
	</form>

</body>
</html>