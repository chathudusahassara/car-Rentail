return validateInsertVehicleForm()
{
	
	var brand = document.forms["vehicleInsert"]["brand"].value;
	
	
	if(brand == ""){
		alert("Please enter the car brand");
		return false;
	}
}