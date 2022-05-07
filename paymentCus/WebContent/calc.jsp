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


  <style type="text/css">
    body {
      margin: 30px;
    }
  </style>
  
  

</head>
<body>
 
  <!-- start test calc -->
  <!--   
   <form>
  	no of days : <input type = "text" id = "noOfDays"/> <br>  	
	starting mileage : <input type = "text" id = "start"/> <br>	
	ending mileage  : <input type = "text" id = "end"/> <br>
	price per day : <input type = "text" id = "dCost"/> <br> 
	price per 1 km : <input type = "text" id = "mCost"/> <br>
	<input type = "button" onClick = "Tcost()" value = "Total cost" /> <br>
	</form>
	<p>
		Total Day cost : 
   		<span id = "tDCost"></span>
    </p>
    <p>
		Total mileage : 
   		<span id = "tMileage"></span>
    </p>
    <p>
		Total mileage cost : 
   		<span id = "tMCost"></span>
    </p>
    <p>
		Total cost : 
   		<span id = "tCost"></span>
    </p>
  -->  
    <!-- start css -->
 
    <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo body">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Calculate Total Cost</h2>
                    
                     <form>
  						no of days : 
  						<div class="input-group">  						
  							<input class="input--style-2" type = "text" id = "noOfDays"/> <br>  
  						</div>
  						<div class="input-group"> 	
						starting mileage : <input class="input--style-2" type = "text" id = "start"/> <br>	
						</div>
						<div class="input-group"> 
						ending mileage  : <input class="input--style-2" type = "text" id = "end"/> <br>
						</div>
						<div class="input-group"> 
						price per day : <input class="input--style-2" type = "text" id = "dCost"/> <br> 
						</div>
						<div class="input-group"> 
						price per 1 km : <input class="input--style-2" type = "text" id = "mCost"/> <br>
						</div>
						
						<!--  
							<div class="p-t-30">
							<input type = "button" onClick = "Tcost()" value = "Total cost" /> <br>
							</div>
						-->
							<div class="p-t-30">
                            <button class="btn btn--radius btn--green" type="button" onClick = "Tcost()"   >Total cost</button>
                        </div>
					</form>
					<br>
					<b>
					<p>
						Total Day cost : 
   							<span  id = "tDCost"></span><br>
    				</p>
    				<br>
   					 <p>
						Total mileage : 
   							<span id = "tMileage"></span><br>
   					 </p>
   					 <br>
   					 <p>
						Total mileage cost : 
   							<span id = "tMCost"></span>
   					 </p>
   					 <br>
    				 <p>
						Total cost : 
   							<span id = "tCost"></span>
    				 </p>
    				 </b>
                    
                    
                    
                  <!--  -->
    
    
    
    <!-- end css -->
  
  <script>
    function Tcost()
    {
    	
      noDays = document.getElementById("noOfDays").value;
      dayCost = document.getElementById("dCost").value;
      sMileage = document.getElementById("start").value;
      eMileage = document.getElementById("end").value;
      mCost = document.getElementById("mCost").value;
      document.getElementById("tDCost").innerHTML = noDays * dayCost;
      document.getElementById("tMileage").innerHTML =  eMileage - sMileage;
      document.getElementById("tMCost").innerHTML = (eMileage - sMileage) * mCost;
      document.getElementById("tCost").innerHTML = ((eMileage - sMileage) * mCost) + (noDays * dayCost); 
      
    }
  </script>
   
  <!-- end test calc -->
  <br>
  <button onclick="print()" class="btn btn--radius btn--green" type="submit" name="submit" value="Submit"><b>Cost details Download As PDF</b></button>
  <br><br><br>
  <a href="paymentDetails.jsp">
  <button class="btn btn--radius btn--green">Do Payment</button>
  </a>
  
 				 </div>
            </div>
        </div>
    </div>             
 
</body>
</html>