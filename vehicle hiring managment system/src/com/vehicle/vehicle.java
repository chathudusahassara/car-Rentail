package com.vehicle;

public class vehicle {


		// TODO Auto-generated constructor stub
		
		private int RegNo;
		private String Brand;  
		private String Name; 
		private int Seats; 
		private int Price;
		private String Driver;
		private String PhoneNo; 
		private String Availability; 
		private String Image;
		

		public vehicle(int RegNo,String Brand,String Name,int Seats,int Price,String Driver,String PhoneNo,String Availability,String Image)
		{

		this.RegNo = RegNo;	
		this.Brand = Brand;
		this.Name = Name;
		this.Seats = Seats;
		this.Price = Price;
		this.Driver = Driver;
		this.PhoneNo=PhoneNo;
		this.Availability = Availability;
		this.Image = Image;
		}


		public int getRegNo() {
			return RegNo;
		}


		public String getBrand() {
			return Brand;
		}


		public String getName() {
			return Name;
		}


		public int getSeats() {
			return Seats;
		}


		public int getPrice() {
			return Price;
		}


		public String getDriver() {
			return Driver;
		}


		public String getPhoneNo() {
			return PhoneNo;
		}


		public String getAvailability() {
			return Availability;
		}


		public String getImage() {
			return Image;
		}


		
		
	}


