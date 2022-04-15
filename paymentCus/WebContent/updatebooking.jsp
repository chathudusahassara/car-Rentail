<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- start form links -->

    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">
 
    <!-- Title Page-->
   

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">



<!-- stop form links -->

</head>
<body>

	<%
		String id = request.getParameter("id");
		String model = request.getParameter("model");
		String duration = request.getParameter("duration");
		String adate = request.getParameter("adate");
		String rdate = request.getParameter("rdate");
	%>

<!-- 
	<form action = "updatebookig" method ="post">
		Booking ID <input type = "text" name = "bid" value ="<%= id %>" readonly><br>
		car<input type = "text" name = "car" value="<%= model %>"><br>
		duration<input type = "text" name = "duration" value="<%= duration %>"><br>
		accept date<input type = "text" name = "adate" value="<%= adate %>"><br>
		return date<input type = "text" name = "rdate" value="<%= rdate %>"><br>
		
		<input type = "submit" name = "submit" value ="update booking data">
		
	</form>
	
 -->	
	<div class="page-wrapper bg-red p-t-180 p-b-100 font-robo body">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Edit Booking Data</h2>
         <form action = "updatebookig" method ="post">
         
                    <div class="input-group">                  
                            <input class="input--style-2" type = "text" name = "bid" value ="<%= id %>" readonly>
                    </div>
                    
                    <div class="input-group">
                            <input class="input--style-2" type = "text" name = "car" value="<%= model %>" >
                     </div>
                     
                     <div class="input-group">
                            <input class="input--style-2" type = "text" name = "duration" value="<%= duration %>">
                      </div>
                      
                      
                      <div class="row row-space">
                      <div class="input-group">
                             <input class="input--style-2 js-datepicker" type="text"  name = "adate" value="<%= adate %>">
                             <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                       </div>
                       
                       <div class="input-group">
                             <input class="input--style-2 js-datepicker" type = "text" name = "rdate" value="<%= rdate %>">
                             <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                       </div>
                       </div>
                       
                       <div class="p-t-30">
                            <button class="btn btn--radius btn--green" type = "submit" name = "submit" >update booking data</button>
                        </div>

	
					</form>
	            </div>
            </div>
        </div>
    </div>
    
    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>
	
	
	
	

</body>
</html>