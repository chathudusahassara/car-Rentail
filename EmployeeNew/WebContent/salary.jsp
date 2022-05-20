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
                    <h2 class="title">Insert Employee Details</h2>
                    <form action='insert' method="post">
                    
                    


    	
    			
    			Monthly Salary :
    				<input class="input--style-2" type = "text" id = "msal"/> <br>
		    	Bonus :
		    	    <input class="input--style-2" type = "text" id = "bsal"/> <br>
		    	OT :
		    	    <input class="input--style-2" type = "text" id = "osal"/> <br>
		    	Total Salary :
		    	    <span id = "tsal" ></span><br>
		    	Total Salary :   
		    		<input id="totalsalary" name="totalsalary" type="text" class="form-control form-control-sm"><br>
		        
		    	   
		    	
		    	
		    	<button class="btn btn--radius btn--green"  onClick = "tsal()"   type = "button">Total Salary</button><br>
		    	<br><br>
			     <div class="p-t-30">
                    <a href = "Empdashboard.jsp"><button class="btn btn--radius btn--green" type = "button">HOME</button></a><br><br>
                    </div>
                    		</th>
                    		<td>&nbsp&nbsp&nbsp</td>
                    		<th>
				
				
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
		

<script>

function tsal()
    {    
    	msal = document.getElementById("msal").value;
    	bsal = document.getElementById("bsal").value;
    	osal = document.getElementById("osal").value;
    	
    	
    	var a = parseInt(msal);
    	var b = parseInt(bsal);
    	var c = parseInt(osal);
    	
  		
   	
  		document.getElementById("tsal").innerHTML =a+b+c; 
  		document.getElementById("totalsalary").value = document.getElementById("tsal").textContent;
    }
</script>


       
       
</body>
</html>