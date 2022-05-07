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



<div class="page-wrapper bg-red p-t-180 p-b-100 font-robo body">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Customer Details</h2>

	<form action = "insertcus" method = "post" >
<!-- 	
		Customer name <input type = "text" name = "cname"> <br>
		Customer nic <input type = "text" name = "cnic"> <br>
		Customer Address <input type = "text" name = "caddress"> <br>
		Customer id <input type = "text" name = "cid">  
				<a href="https://files.fm/"><button type="button">upload photo</button> </a><br>
		
		<input type = "submit" name = "submit" value ="next">
		<input type="reset" value="Reset">
 -->	
	
	
	<!-- start  -->
	
	<div class="input-group">
        <input class="input--style-2" type="text" placeholder="Customer name" name="cname" required>
    </div>
    <div class="input-group">
        <input class="input--style-2" type="text" placeholder="Customer nic" name="cnic" required>
    </div>
    <div class="input-group">
        <input class="input--style-2" type="text" placeholder="Customer Address" name="caddress" required>
    </div>
    <div class="p-t-30">
     <a href="https://files.fm/"><button class="btn btn--radius btn--green" type="button">upload photo</button> </a>
	</div>
	<br><br>
    <div class="input-group">
        <input class="input--style-2" type="text" placeholder="Customer id" name="cid" required>       
    </div>
    
	
	<table>
		<tr>
			<td>
	<div class="p-t-30">
	<input class="btn btn--radius btn--green" type = "submit" name = "submit" value ="next">
	</div>
			</td>
			<td>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</td>
			<td>
	<div class="p-t-30">
	<input class="btn btn--radius btn--red" type="reset" value="Reset">
	</div>
			</td>
		</tr>
	</table>
	</form>
	
	
	
	<!-- end -->
	
	
	
				 </div>
            </div>
        </div>
    </div>                   
	

</body>
</html>