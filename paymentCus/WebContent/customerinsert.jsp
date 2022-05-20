<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<!-- form start-->

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

<!-- form end -->

</head>
<body>








	<!-- copy of code start-->
	
	<!-- 
	--------------------------------------------------------------------
	<form action="insert" method = "post">
		<!---select car <input type="text" name="car"><br>  --->
<!--		  <label for="cars">Choose a car:</label>
			  <select name="car" id="cars">
			    <option value="volvo">Volvo</option>
			    <option value="saab">Saab</option>
			    <option value="opel">Opel</option>
			    <option value="audi">Audi</option>
			  </select>
			  <br>
				
		Duration <input type="text" name="duration"><br>
		
<!---	Acceptance date <input type="text" name="adate"><br>    --->
<!--		Acceptance date : <input type="date" id="aDate" name="adate"><br>
		
<!---	 return date<input type="text" name="rdate"><br> --->	
<!--	    Return date : <input type="date" id="rDate" name="rdate"><br>
		
		<input type="submit" name="submit" value="Next">
		<input type="reset" value="Reset">
			
	</form>
	
	
	
	--------------------------------------------------------------------	
	 -->
	
	<!-- end of copy -->
	
	





<!-- start -->
<
<div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Choose Booing Information</h2>
                    <form action="insert" method = "post">
					
			  	 <div class="col-2"> 	

                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
                                        <select name="car" id="cars">
                                            <option disabled="disabled" selected="selected">Car Model/Type</option>
                                            <option>Volvo</option>
                                            <option>Opel</option>
                                            <option>Audi</option>
                                        </select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
            <br>
                        
                        <div class="row row-space">
                        	<div class="input-group">
                            <input class="input--style-2" type="text" placeholder="Rental Duration" name="duration">
                    		</div>
                        
                        </div>
                        <br>
                        
                     <div class="row row-space">
                        	
                            <div class="col-2">
                                <div class="input-group">
                                    <input class="input--style-2 js-datepicker" type="text" placeholder="Acceptance date" name="adate">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                          </div>
                          
                          <div class="col-2">
                                <div class="input-group">
                                    <input class="input--style-2 js-datepicker" type="text" placeholder="Return date" name="rdate">
                                    <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                                </div>
                          </div>
                     
                     </div>
                            
                  <table>    
                  <tr>  
                  <td>
				<div class="p-t-30">
                            <button class="btn btn--radius btn--green" type="submit" name = "submit">Next</button>
                 </div>
                 </td>
                 <td>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 </td>
                 <td>
                
                 <div class="p-t-30">
                            <button class="btn btn--radius btn--red" type="reset" name = "reset">Clear</button>
                 </div>
                 </td>
                 </tr>
				</table>








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


<!-- end -->

</body>
</html>