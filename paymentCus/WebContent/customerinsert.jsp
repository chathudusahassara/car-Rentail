<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action="insert" method = "post">
	
		select car <input type="text" name="car"><br>
		Duration <input type="text" name="duration"><br>
		Acceptance date <input type="text" name="adate"><br>
		return date<input type="text" name="rdate"><br>
		
		<input type="submit" name="submit" value="Create Customer">
			
	</form>

</body>
</html>