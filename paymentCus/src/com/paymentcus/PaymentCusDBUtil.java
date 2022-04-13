package com.paymentcus;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentCusDBUtil {
	
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<Customer> validate(String userName,String password){
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		//create database connection
//		String url = "jdbc:mysql://localhost:3306/paymentcustomer";
//		String user = "root";
//		String pass = "sliit";
		
		
		//validate
		try {
			
//			Class.forName("com.mysql.jdbc.Driver");
			
//			Connection con = DriverManager.getConnection(url,user,pass);
//			Statement stmt  = con.createStatement();			
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from management where username='"+userName+"' and password='"+password+"' ";
//			ResultSet rs = stmt.executeQuery(sql);
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String userU = rs.getString(2);
				String passU = rs.getString(3);
				
				Customer c = new Customer(id,userU,passU);
				cus.add(c);
			}
						
		}
		catch(Exception e) {
			e.printStackTrace();	
		}
				
		return cus;		
	}
	
	//insert booking information
	
	public static boolean insertcustomer(String car,String duration,String adate, String rdate) {
		
		boolean isSuccess = false;
		
		//create db connection
		String url = "jdbc:mysql://localhost:3306/paymentcustomer";
		String user = "root";
		String pass = "sliit";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt  = con.createStatement();
			String sql = "insert into booking values (0,'"+car+"','"+duration+"','"+adate+"','"+rdate+"')";
			int rs = stmt.executeUpdate(sql);    //return two value 1 --> succuss 0--> unsuccess
			
			if(rs >0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	//insert customer details
	
	public static boolean insertcusDetails(String cname,String cnic, String caddress,String cid) {
		
		boolean isSuccess = false;
		
		//create db connection
		String url = "jdbc:mysql://localhost:3306/paymentcustomer";
		String user = "root";
		String pass = "sliit";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt  = con.createStatement();
			String sql  = "insert into customer values (0,'"+cname+"','"+cnic+"','"+caddress+"','"+cid+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs >0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
						
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	// insert card details
	
	public static boolean cusPayment(String cardname,String cardnum, String carddate,String cvv) {
		
		boolean isSuccess = false;
		
		//create db connection
		String url = "jdbc:mysql://localhost:3306/paymentcustomer";
		String user = "root";
		String pass = "sliit";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt  = con.createStatement();
			String sql  = "insert into carddetails values (0,'"+cardname+"','"+cardnum+"','"+carddate+"','"+cvv+"')";
			int rs = stmt.executeUpdate(sql);
			
			if(rs >0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
						
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
//search
	
	public static List<Booking> validateC(String userId){
		
		ArrayList<Booking> book = new ArrayList<>();
		//create connection
		String url = "jdbc:mysql://localhost:3306/paymentcustomer";
		String user = "root";
		String pass = "sliit";
		
		//validate
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt  = con.createStatement();			
			String sql = "select * from booking where id='"+userId+"'";			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String carModel = rs.getString(2);
				String duration = rs.getString(3);
				String acceptanceDate = rs.getString(4);
				String returnDate = rs.getString(5);
				
				Booking b = new Booking(id,carModel,duration,acceptanceDate,returnDate);
				book.add(b);
				
				
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return book;
	}
	
	//update booking details
	
	public static boolean updatebooking(String id,String car,String duration,String adate,String rdate) {
		
		boolean isSuccess = false;
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "update booking set carModel='"+car+"',duration='"+duration+"',acceptanceDate='"+adate+"',returnDate='"+rdate+"'"+"where id='"+id+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs >0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch (Exception e) {
			e.printStackTrace();
			
		}
		
		
		
		
		
		
		return isSuccess;
	}


	
	
	
	
	
	
}