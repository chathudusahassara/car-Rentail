<!DOCTYPE html>
<html lang="en">

<head>

	<nav>
		  <div class="logo">  <img border="0" src="images/logo.png" alt="Pulpit rock" width="75" height="75" align="left" >
		  <h1> SKY Rental Service  </h1> 
		  
		  <h6>Turning miles Into Smiles.......</h6></div>
		
		  <div class="navbar">
		    <ul class="nav-menu">
		      <li class="nav-item"><a href="#" class="nav-link">Home</a></li>
		      <li class="nav-item"><a href="#" class="nav-link">About</a></li>
		      <li class="nav-item"><a href="#" class="nav-link">Services</a></li>
		      <li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
		      
		    </ul>
		  </div>
		
		  <div class="hamburger">
		    <span class="bar"></span>
		    <span class="bar"></span>
		    <span class="bar"></span>
		  </div>
	</nav>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Insert Vehicle details</title>

	<script type="text/javascript" src="ValidationsVehicle.js"></script>
	
    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css_form/main.css" rel="stylesheet" media="all">
    
    <link href="Footer/Footer.css" rel="stylesheet" media="all">
    <link href="header/Header.css" rel="stylesheet" media="all">
    <script type="text/javascript" src="header/Header.js"></script>
</head>

<body>
	
    <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">Insert vehicle details</h2>
                    
                    <form method="post" action="vehicleInsert" onsubmit="return validateInsertVehicleForm()" name="vehicleInsert">
                    
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="vehicle brand" name="brand" id="brand" required>
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <input class="input--style-2" type="text" placeholder="vehicle name" name="name" required>  
                                </div>
                            </div>
                            <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="No of seats" name="seats" required>
                        	</div>
        
                        </div>
                        <div class="input-group">
                                    <input class="input--style-2" type="text" placeholder="Price per day" name="price" required> 
                                </div>
                        <div class="input-group">
                            	 <input class="input--style-2" type="text" placeholder="Driver name" name="dname" required> 
                        </div>
                       
                   
                                <div class="input-group">
                                    <input class="input--style-2" type="text" placeholder="Driver contact No" name="dcontact" required>
                                </div>
                            
                       
                          <div class="input-group">
                            	<input class="input--style-2" type="text" placeholder="Vehicle availability" >
                            	 <input type = "radio"  value="yes" name = "availability"checked> Yes
								 <input type = "radio"  value="no" name = "availability"> No
                        </div>
                         <div class="input-group">
                            	 <input class="input--style-2" type="text" placeholder="Vehicle Image" name="image" required> 
                        </div>
                        
                        
                        <div class="p-t-30">
                        	<input type="submit" name="submit" value="insert vehicle" class="btn btn--radius btn--green" >
                           
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
    
    
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-6">
            <h6>About</h6>
            <p class="text-justify">Enjoy the efficient and specialized services of SKY rent a car, Sri Lanka's leading rent-a-car company.        <br>        
        	
           </p>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Quick Links</h6>
            <ul class="footer-links">
              <li><a href="http://scanfcode.com/about/">About Us</a></li>
              <li><a href="http://scanfcode.com/contact/">Contact Us</a></li>
              <li><a href="http://scanfcode.com/contribute-at-scanfcode/">Contribute</a></li>
              <li><a href="http://scanfcode.com/privacy-policy/">Privacy Policy</a></li>
              <li><a href="http://scanfcode.com/sitemap/">Sitemap</a></li>
            </ul>
          </div>
        </div>
        <hr>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">Copyright &copy; 2022 All Rights Reserved by 
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
            </ul>
          </div>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->