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


       
       
       <!-- form strt -->
       
       <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">UPDATE Employee Details</h2>
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

      
          
          
           
           <form action ="update" method="post">
           
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
           
            <input class="btn btn--radius btn--green" type="submit" name="submit" value="Update Data"><br>
       <!-- --------------   
           
           ID <input type="text" name="id" value="<%= id %>" readonly><br>
           Name <input type="text" name="name" value="<%= name %>"><br>
           Phone <input type="text" name="phoneno" value="<%= phoneno %>"><br>
           Email <input type="text" name="email" value="<%= email %>"><br>
           Position <input type="text" name="position" value="<%= position %>"><br>
           Salary <input type="text" name="salary" value="<%= salary %>"><br>
           Gender <input type="text" name="gender" value="<%= gender %>"><br>
           
            <input type="submit" name="submit" value="Update Data"><br>
             </form>
             
           <!-- form strt -->
<!-- ------      
       <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Update Employee Details</h2>
                    <form action="update" method="post">
                    
                    
                    <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="id" name="id">
                    </div>
                    
                    
                    <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="name" name="name">
                    </div>
                    
                    <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="phone" name="phone">
                    </div>
                    
                    <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="email" name="email">
                    </div>
                    
                    <div class="row row-space">
                    <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="position" name="position">
                    </div>
                    
                    <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="salary" name="salary">
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
                    
                    <div class="p-t-30">
                            <button class="btn btn--radius btn--green" type="submit">Update</button>
                        </div>
                        
                        <br><br>
			     <div class="p-t-30">
                    <a href = "Empdashboard.jsp"><button class="btn btn-primary" type = "button">HOME</button></a><br><br>
                    </div>
                    		</th>
                    		<td>&nbsp&nbsp&nbsp</td>
                    		<th>
                    
                    
                    
             
                   
                    </div>
            </div>
        </div>
    </div>
-->
    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>
                    
       
       <!-- from end -->
       
           
          
   
       
       </form>
       
       
                    
                    
</body>
</html>