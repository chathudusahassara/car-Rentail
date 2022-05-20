<!DOCTYPE html>
<html lang="en">
<head>
	<title>Table V02</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>

	<c:forEach var="vehic" items="${vehiDetails}">
	
	<c:set var="vRegNo" value="${vehic.getRegNo()}"/>
	<c:set var="vBrand" value="${vehic.getBrand()}"/>
	<c:set var="vName" value="${vehic.getName()}"/>
	<c:set var="vSeats" value="${vehic.getSeats()}"/>
	<c:set var="vPrice" value="${vehic.getPrice()}"/>
	<c:set var="vDriver" value="${vehic.getDriver()}"/>
	<c:set var="vPhoneNo" value="${vehic.getPhoneNo()}"/>
	<c:set var="vAvailability" value="${vehic.getAvailability()}"/>
	<c:set var="vImage" value="${vehic.getImage()}"/>
	
	<div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
					<div class="table">

						<div class="row header">
							<div class="cell">
								Vehicle Register No
							</div>
							<div class="cell">
								Vehicle Brand
							</div>
							<div class="cell">
								Vehicle name
							</div>
							<div class="cell">
								No Of seats
							</div>
							<div class="cell">
								Rent per day
							</div>
							<div class="cell">
								Driver name
							</div>
							<div class="cell">
								Driver phone no
							</div>
							<div class="cell">
								Availability
							</div>
							<div class="cell">
								Image
							</div>
						</div>

						<div class="row">
							<div class="cell" data-title="${vehic.getRegNo()}">
								${vehic.getRegNo()}
							</div>
							<div class="cell" data-title="${vehic.getBrand()}">
								${vehic.getBrand()}
							</div>
							<div class="cell" data-title="${vehic.getName()}">
								${vehic.getName()}
							</div>
							<div class="cell" data-title="${vehic.getSeats()}">
								${vehic.getSeats()}
							</div>
							<div class="cell" data-title="${vehic.getPrice()}">
								${vehic.getPrice()}
							</div>
							<div class="cell" data-title="${vehic.getDriver()}">
								${vehic.getDriver()}
							</div>
							<div class="cell" data-title="${vehic.getPhoneNo()}">
								${vehic.getPhoneNo()}
							</div>
							<div class="cell" data-title="${vehic.getAvailability()}">
								${vehic.getAvailability()}
							</div>
							<div class="cell" data-title="${vehic.getImage()}">
								${vehic.getImage()}
							</div>
						</div>


					</div>
			</div>
			
			
		</div>
		</c:forEach>	
	</div>


	

<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
	
	<c:url value="updateVehicle.jsp" var="vehiUpdate">
	
		<c:param name = "vRegNo" value="${vRegNo}"/>
		<c:param name = "vBrand" value="${vBrand}"/>
		<c:param name = "vName"  value="${vName}"/>
		<c:param name = "vSeats" value="${vSeats}"/>
		<c:param name = "vPrice" value="${vPrice}"/>
		<c:param name = "vDriver" value="${vDriver}"/>
		<c:param name = "vPhoneNo" value="${vPhoneNo}"/>
		<c:param name = "vAvailability" value="${vAvailability}"/>
		<c:param name = "vImage" value="${vImage}"/>
	
			
	</c:url>
	
	<a href ="${vehiUpdate}">
	<input type="button" name="update" value="Update vehicle details">
	</a>
	
	<c:url value="deleteVehicle.jsp" var="vehiDelete">
		<c:param name = "vRegNo" value="${vRegNo}"/>
		<c:param name = "vBrand" value="${vBrand}"/>
		<c:param name = "vName"  value="${vName}"/>
		<c:param name = "vSeats" value="${vSeats}"/>
		<c:param name = "vPrice" value="${vPrice}"/>
		<c:param name = "vDriver" value="${vDriver}"/>
		<c:param name = "vPhoneNo" value="${vPhoneNo}"/>
		<c:param name = "vAvailability" value="${vAvailability}"/>
		<c:param name = "vImage" value="${vImage}"/>
		
		
	</c:url>
	
	<a href = "${vehiDelete}">
	<input type="button" name="Delete" value="Delete vehicle details">
	</a>

</body>
</html>