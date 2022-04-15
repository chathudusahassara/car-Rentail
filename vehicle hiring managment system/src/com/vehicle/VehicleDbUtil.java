package com.vehicle;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class VehicleDbUtil {
	
	//instance variables declaration
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement st = null;
		private static ResultSet rs = null;

	public static boolean insertVehicle(String brand, String name, String noOfSeats, String pricePerDay, String driverName, String driverPhnNo, String vehicleAvailability, String image)
	 {
			
			boolean isSuccess = false;
			
			
			
			try {
				
				 
				 
				
				con = DBconnect.getConnection();
				st = con.createStatement();
				
				//insert a record
				//Code a SQL query String . Execute a SQL via the executeUpdate()
				String sql = "insert into vehicle_renting_system.vehicle values (0,'"+brand+"','"+name+"','"+noOfSeats+"','"+pricePerDay+"','"+driverName+"','"+driverPhnNo+"','"+vehicleAvailability+"','"+image+"')";
				int rs = st.executeUpdate(sql);
				
				if(rs > 0)
				{
					isSuccess = true;
				}
				
				else
				{
					isSuccess = false;
				}
			}
			
			catch (Exception e) {
				e.printStackTrace();
			}
			
			
			return isSuccess;
		}
	
	public static List<vehicle> getVehicleDetails(String Brand, String Name) {
	
		ArrayList<vehicle> vehi = new ArrayList<>();
	
		
		try {
			con = DBconnect.getConnection();
			st = con.createStatement();
			String sql = "select * from vehicle where brand= '"+Brand+"' and name='"+Name+"' ";
			rs = st.executeQuery(sql);
			
			
			while (rs.next()) {
				int vehicleRegNo = rs.getInt(1);
				String brand = rs.getString(2);
				String name = rs.getString(3);
				int noOfSeats = rs.getInt(4);
				int pricePerDay = rs.getInt(5);
				String driverName = rs.getString(6);
				String driverPhnNo = rs.getString(7);
				String vehicleAvailability = rs.getString(8);
				String image = rs.getString(9);
				
				vehicle v = new vehicle(vehicleRegNo,brand,name,noOfSeats,pricePerDay,driverName,driverPhnNo,vehicleAvailability,image);
			    vehi.add(v);
			}
		}
			
		
			catch (Exception e) {
			e.printStackTrace();
		}
		
		return vehi;
	
	
	}



	public static boolean validateSearchVehicle (String vBrand,String vName) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBconnect.getConnection();
			st = con.createStatement();
			
			String sql = "SELECT EXISTS (SELECT * FROM vehicle WHERE brand = '"+vBrand+"' and name = '"+vName+"' )";
			
			ResultSet r = st.executeQuery(sql);
			
			if (r.next()) {
				
				int value = r.getInt(1);

				if(value>0) {
					isSuccess = true;
				}
				else {
					isSuccess = false;
				}
				
				
			}
			
			
		}catch(Exception e) {
			
			
			e.printStackTrace();
			
		}
		
		
		return isSuccess;
		

	}
	
	public static boolean updateVehicle(String RegNo,String Brand,String Name,String Seats,String Price,String Driver,String PhoneNo,String Availability,String Image){
		
		try {
			
			con = DBconnect.getConnection();
			st = con.createStatement();
			
			String sql = "update vehicle set brand = '"+Brand+"',name='"+Name+"',noOfSeats='"+Seats+"',pricePerDay='"+Price+"',driverName='"+Driver+"',driverPhnNo='"+PhoneNo+"',vehicleAvailability='"+Availability+"',image='"+Image+"'"
							+ "where vehicleRegNo = '"+RegNo+"'";
			int rs = st.executeUpdate(sql);
			
			if(rs > 0)
			{
				isSuccess = true;
			}
			
			else
			{
				isSuccess = false;
			}
			
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		
		
		return isSuccess;
		
	}
	
	//retrive updated data 
	public static List<vehicle> getVehiDetails(String RegNo){
		
		int convertedVehiId = Integer.parseInt(RegNo);
		ArrayList<vehicle> vehi = new ArrayList<>();
		
		try {
			
			con = DBconnect.getConnection();
			st = con.createStatement();
			
			String sql = "select * from vehicle where vehicleRegNo = '"+convertedVehiId+"'";
			rs = st.executeQuery(sql);
			
			while(rs.next()) {
				
				int vehicleRegNo = rs.getInt(1);
				String brand = rs.getString(2);
				String name = rs.getString(3);
				int noOfSeats = rs.getInt(4);
				int pricePerDay = rs.getInt(5);
				String driverName = rs.getString(6);
				String driverPhnNo = rs.getString(7);
				String vehicleAvailability = rs.getString(8);
				String image = rs.getString(9);
				
				vehicle v = new vehicle(vehicleRegNo,brand,name,noOfSeats,pricePerDay,driverName,driverPhnNo,vehicleAvailability,image);
			    vehi.add(v);
				
				
			}
			
				
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		return vehi;
		
		
	}
	
		public static boolean deleteVehicle(String RegNo) {
			
			int convtVehiId = Integer.parseInt(RegNo);
			
			try {
				
				con = DBconnect.getConnection();
				st = con.createStatement();
				
				String sql = "delete from vehicle where vehicleRegNo='"+convtVehiId+"'";
				int rs = st.executeUpdate(sql);
				
				if(rs > 0)
				{
					isSuccess = true;
				}
				
				else
				{
					isSuccess = false;
				}
				
				
			}catch(Exception e) {
				
				e.printStackTrace();
			}
			
			
			return isSuccess;
			
		}

}

