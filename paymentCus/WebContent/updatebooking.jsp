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

	<form action = "updatebookig" method ="post">
		Booking ID <input type = "text" name = "bid" value ="<%= id %>" readonly><br>
		car<input type = "text" name = "car" value="<%= model %>"><br>
		duration<input type = "text" name = "duration" value="<%= duration %>"><br>
		accept date<input type = "text" name = "adate" value="<%= adate %>"><br>
		return date<input type = "text" name = "rdate" value="<%= rdate %>"><br>
		
		<input type = "submit" name = "submit" value ="update booking data">
		
	</form>

</body>
</html>