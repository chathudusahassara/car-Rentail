package com.vehicle;



public class Vehicle {
	private int vid;
	private String vehicleName;
	private String chassisno;
    private String shop;
    private String date;
    private String maintainfee;
    private String imagelink;
    
    
    
	public Vehicle(int vid, String vehicleName, String chassisno, String shop, String date, String maintainfee,
			String imagelink) {
		
		this.vid = vid;
		this.vehicleName = vehicleName;
		this.chassisno = chassisno;
		this.shop = shop;
		this.date = date;
		this.maintainfee = maintainfee;
		this.imagelink = imagelink;
	}



	public int getVid() {
		return vid;
	}
	
	public String getVehicleName() {
		return vehicleName;
	}

	public String getChassisno() {
		return chassisno;
	}

	public String getShop() {
		return shop;
	}

	public String getDate() {
		return date;
	}

	public String getMaintainfee() {
		return maintainfee;
	}

	public String getImagelink() {
		return imagelink;
	}

    
	
}


