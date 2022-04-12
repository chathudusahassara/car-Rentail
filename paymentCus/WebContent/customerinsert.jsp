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
		<!---select car <input type="text" name="car"><br>  --->
		  <label for="cars">Choose a car:</label>
			  <select name="car" id="cars">
			    <option value="volvo">Volvo</option>
			    <option value="saab">Saab</option>
			    <option value="opel">Opel</option>
			    <option value="audi">Audi</option>
			  </select>
			  <br>
				
		Duration <input type="text" name="duration"><br>
		
<!---	Acceptance date <input type="text" name="adate"><br>    --->
		Acceptance date : <input type="date" id="aDate" name="adate"><br>
		
<!---	 return date<input type="text" name="rdate"><br> --->	
	    Return date : <input type="date" id="rDate" name="rdate"><br>
		
		<input type="submit" name="submit" value="Next">
		<input type="reset" value="Reset">
			
	</form>

</body>
</html>