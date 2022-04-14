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
		String id = request.getParameter("id");
		String model = request.getParameter("model");
		String duration = request.getParameter("duration");
		String adate = request.getParameter("adate");
		String rdate = request.getParameter("rdate");
	    %>
	    
	    <h1>booking delete</h1>
	    
	 <form action = "deletebookig" method ="post">
		Booking ID <input type = "text" name = "bid" value ="<%= id %>" readonly><br>
		car<input type = "text" name = "car" value="<%= model %>" readonly><br>
		duration<input type = "text" name = "duration" value="<%= duration %>" readonly><br>
		accept date<input type = "text" name = "adate" value="<%= adate %>" readonly><br>
		return date<input type = "text" name = "rdate" value="<%= rdate %>" readonly><br>
		
		<input type = "submit" name = "submit" value ="delete booking">
		
	 </form>
	    

</body>
</html>