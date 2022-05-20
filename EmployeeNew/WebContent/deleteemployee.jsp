<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- form style start -->

<!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

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

<!-- form style end -->
</head>
<body>

     <!--  

   <form action='insert' method="post">
       Name <input type="text" name="name"><br>
       Phone No <input type="text" name="phone"><br>
       Email <input type="text" name="email"><br>
       Position <input type="text" name="position"><br>
       Salary <input type="text" name="salary"><br>
       Gender <input type="text" name="gender"><br>
       
       <input type="submit" name="submit" value="Create Employee">
       </form>
       
       -->
       
       
       <!-- form strt -->
       
       <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                    
                    <form action='insert' method="post">

          <%
          String id = request.getParameter("id");
          String name = request.getParameter("name");
          String phoneno = request.getParameter("phoneno");
          String email = request.getParameter("email");
          String position = request.getParameter("position");
          String salary = request.getParameter("salary");
          String gender = request.getParameter("gender");
          %>

         <h1>Employee Account Delete</h1>
          <form action ="delete" method="post">
          
          <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="name" name="name" required>
                    </div>
                    
                    <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="phone" name="phone" required>
                    </div>
                    
                    <div class="input-group">
                            <input  class="input--style-2" type="email" placeholder="email" name="email">
                    </div>
                    
                    <div class="row row-space">
                    <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="position" name="position" required>
                    </div>
                    
                    <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="salary" name="salary" required>
                    </div>
                     </div> 
                       
                    
                    
                    
                     <div class="col-2"> 	

                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="gender" id="gender">
                                            <option disabled="disabled" selected="selected">Gender</option>
                                            <option>male</option>
                                            <option>female</option>
                                            <option>other</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
           
            <input class="btn btn--radius btn--green" type="submit" name="submit" value="Delete Data"><br>
            
       <!--    
           Employee ID <input type="text" name="empid" value="<%= id %>" readonly><br>
           Name <input type="text" name="name" value="<%= name %>"readonly><br>
           Phone No <input type="text" name="phone" value="<%= phoneno %>"readonly><br>
           Email <input type="text" name="email" value="<%= email %>"readonly><br>
           Position <input type="text" name="position" value="<%= position %>"readonly><br>
           Salary <input type="text" name="salary" value="<%= salary %>"readonly><br>
           Gender <input type="text" name="gender" value="<%= gender %>"readonly><br>
           
           <input type="submit" name="submit" value="Delete Data"><br>
           <br><br>
			     
			-->       
           
  </form>
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
                    
       
       <!-- from end -->
           
</body>
</html>