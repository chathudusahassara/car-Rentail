function validateInsertForm(){

	var vname = document.f1.vname.value;  
	var cno = document.f1.cno.value;
	var shop = document.f1.shop.value;
	var date = document.f1.date.value;
	var mfee = document.f1.mfee.value;
	var ilink = document.f1.ilink.value;
	

		if(vnmae == ""){
		alert("Please enter the vehicle name");
		return false;
	}
	
		if(cno == ""){
		alert("Please enter the cahssis number");
		return false;
	}
	
		if(shop == ""){
		alert("Please enter the name of shop");
		return false;
	}
	
		if(date == ""){
		alert("Please enter a date");
		return false;
	}
	
		if(mfee == ""){
		alert("Please enter the amount of maintainfee");
		return false;
	}

		else if(ilink == ""){
		alert("Please enter a image link");
		return false;
	}
	
	}

/**
 * 
 */