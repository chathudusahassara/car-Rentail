<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>payment details</h1>
	
	<form action = "insertcard" method = "post">
	
		Card Holder name <input type = "text" name = "cardname"> <br>
		Card number <input type = "text" name = "cardnum"> <br>
		expire Date <input type = "text" name = "carddate"> <br>
		CVV <input type = "text" name = "cvv"> <br>
		<br>
		<a href="paymentcomplete.jsp"><input type="button" value="Cash payment"> </a> <br> <br>
		<input type="submit" name="submit" value="Next">
		<input type="reset" value="Reset">
		
	</form>
	
	<form action="search" method="post">
		
		<h1>view booking details again</h1>
		
		id <input type = "text" name="uid"><br>
		
		<input type = "submit" name = "submit" value="search">
		
		
	</form>	
		
	 
	 	
	

</body>
</html>