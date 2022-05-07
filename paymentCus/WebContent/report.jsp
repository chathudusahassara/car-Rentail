<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 <%
String id = request.getParameter("vehicleRegNo");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
//String connectionUrl = "jdbc:mysql://localhost:3306/vehicle_renting_system?autoReconnect=true&useSSL=false";
String database = "paymentcustomer";
String userid = "root";
String password = "sliit";
String brand = request.getParameter("brand");
String NoOfVehicles = request.getParameter("NoOfVehicles");

try {
    Class.forName(driver);
} catch (ClassNotFoundException e) {
    e.printStackTrace();
}
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css_v/bootstrap.min.css">
<title>Insert title here</title>


<style>
.btn-huge{
    padding-top:20px;
    padding-bottom:20px;
}
body{

	background-color:#C0C0C0;
}

table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 50%;
}

td, th {
  border: 1px solid #4d4d33;
  text-align: left;
  padding: 8px;
  background-color: #BAEEFB;
  font-size:large;
 
}

tr:nth-child(even) {
  background-color: #dddddd;
}
body{

	background-color:#C0C0C0;
}
</style>

</head>
<body>

	<br><br><br>
    <div id="repdetails">
        <center><h2>No of aded vehicle Details Report</h2></center><br><br>
        
        <center>
        <table border="1" id="mytreport">
            <tr>
                <th>Brand</th>
                <th>No Of Vehicles</th> 
                
                
            </tr>
            <%
            try {
                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                statement = connection.createStatement();
                String sql =" SELECT brand,COUNT(vehicleRegNo) AS NoOfVehicles FROM vehicle_renting_system.vehicle GROUP BY brand ORDER BY COUNT(vehicleRegNo) DESC";
            
              
           
                resultSet = statement.executeQuery(sql);
                while (resultSet.next()) {
            %>
            <tr>
                <td><%=resultSet.getString("brand")%> </td>
                <td><%=resultSet.getString("NoOfVehicles")%> </td>
                
                
                
            </tr>
            <%
            	}
            		connection.close();
            	} catch (Exception e) {
            		e.printStackTrace();
            	}
            %>
        </table> </center>
        <br><br>
 
    </center>
        
        
        </div>
        </div>
           
    <center><button onclick="print()" class="btn btn-warning"" type="submit" name="submit" value="Submit"><b>Download PDF</b></button></center><br><br>
    </div>
	<br><br><br>





</body>
</html>