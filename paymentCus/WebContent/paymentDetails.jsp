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

<!-- for validation start -->


<!-- for validation end -->
</head>
<body>

	
	
	<!-- start -->
	
	
	<div class="page-wrapper bg-red p-t-180 p-b-100 font-robo body">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Card Information</h2>
                    
                    <form action = "insertcard" method = "post">
                    
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="Card Holder name" name="cardname" required>
                        </div>
                        
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="Card Number" name="cardnum" required>
                        </div>
                        
                        <div class="row row-space">
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="expire Date" name="carddate" required>
                        </div>
                        
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="CVV" name="cvv" required>
                        </div>
                        </div>
                    	
                    	<a href="paymentcomplete.jsp">
                    	<div class="p-t-30">
                            <button class="btn btn--radius btn--green" type="button">Complete by Cash Payment</button>
                        </div>
                        </a>
                        
                        <table>
                        <tr>
                        <td>
                        <div class="p-t-30">
                            <button class="btn btn--radius btn--green" type="submit" name="submit" >Complete by Card Payment</button>
                        </div>
                        </td>
                        <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                        <td>
                        <div class="p-t-30">
                            <button class="btn btn--radius btn--red" type="reset" value="Reset">Reset</button>
                        </div>
                        </td>
                        </tr>
                    	</table>
                    	<br><br>                   
                    </form>
                    
                    <form action="search" method="post">
                    <br><br><br><br>
                    	<h4><b>View Booking Details Again</b></h4>
                    	
                    	<br>
                    	<div class="input-group">
                            <input class="input--style-2" type="text" placeholder="Enter Booking ID" name="uid" required>
                        </div>
                       
                        <div class="p-t-30">
                            <button class="btn btn--radius btn--green" type="submit" name = "submit" value="search" >Search</button>
                        </div>
                        
                    </form>
                 </div>
            </div>
        </div>
    </div>                   
	
	
	
	
	
	
	<!-- finish -->
		
	 
	 	
	

</body>
</html>