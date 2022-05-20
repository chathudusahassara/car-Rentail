package com.paymentcus;

public class Booking {
	
	private int id;
	private String carModel;
	private String duration;
	private String acceptanceDate;
	private String returnDate;
	
	public Booking(int id, String carModel, String duration, String acceptanceDate, String returnDate) {		
		this.id = id;
		this.carModel = carModel;
		this.duration = duration;
		this.acceptanceDate = acceptanceDate;
		this.returnDate = returnDate;
	}

	public int getId() {
		return id;
	}

	public String getCarModel() {
		return carModel;
	}

	public String getDuration() {
		return duration;
	}

	public String getAcceptanceDate() {
		return acceptanceDate;
	}

	public String getReturnDate() {
		return returnDate;
	}


	
	
	
	
	

}
