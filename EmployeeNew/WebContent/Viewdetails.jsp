<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Date"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   
    
    
    
 <%
String id = request.getParameter("Id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
//String connectionUrl = "jdbc:mysql://localhost:3306/vehicle_renting_system?autoReconnect=true&useSSL=false";
String database = "employeemanagment";
String userid = "root";
String password = "Sam.1999*";
String name = request.getParameter("Name");
String phone = request.getParameter("Phone");
String email = request.getParameter("Email");
String position = request.getParameter("Position");
String salary = request.getParameter("Salary");
String gender = request.getParameter("Gender");


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
</head>
<body>

      <br><br><br>
    <div id="repdetails">
        <center><h2>Employee Details</h2></center><br><br>
        
        <center>
        <table border="1" id="mytreport">
            <tr>
                <th>Name</th>
                <th>Phoneno</th> 
                <th>Email</th> 
                <th>Position</th> 
                <th>Salary</th> 
                <th>Gender</th> 
                
                
                
            </tr>
            <%
            try {
                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                statement = connection.createStatement();
                String sql =" SELECT name,phoneno,email,position,salary,gender FROM employeemanagment.employee GROUP BY name ";
            
              
           
                resultSet = statement.executeQuery(sql);
                while (resultSet.next()) {
            %>
            <tr>
                  <td><%=resultSet.getString("Name")%> </td>
                  <td><%=resultSet.getString("Phone")%> </td>
                  <td><%=resultSet.getString("Email")%> </td>
                  <td><%=resultSet.getString("Position")%> </td>
                  <td><%=resultSet.getString("Salary")%> </td>
                  <td><%=resultSet.getString("Gender")%> </td>
                 
                
                
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
           
    

	

</body>
</html>