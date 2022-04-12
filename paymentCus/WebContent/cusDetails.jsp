<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form action = "insertcus" method = "post" >
	
		Customer name <input type = "text" name = "cname"> <br>
		Customer nic <input type = "text" name = "cnic"> <br>
		Customer Address <input type = "text" name = "caddress"> <br>
		Customer id <input type = "text" name = "cid">  
				<a href="https://files.fm/"><button type="button">upload photo</button> </a><br>
		
		<input type = "submit" name = "submit" value ="next">
		<input type="reset" value="Reset">
	
	</form>

</body>
</html>