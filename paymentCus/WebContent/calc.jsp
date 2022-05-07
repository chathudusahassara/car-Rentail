<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

  <style type="text/css">
    body {
      margin: 30px;
    }
  </style>

</head>
<body>

  <!-- start test calc -->
   
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
  
  <button onclick="print()" class="btn btn-warning"" type="submit" name="submit" value="Submit"><b>Cost details Download As PDF</b></button>
  <br><br><br>
  <button>Do Payment</button>
 
</body>
</html>