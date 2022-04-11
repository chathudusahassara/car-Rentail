package com.paymentcus;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PaymentCusDBUtil {

	public static List<Customer> validate(String userName,String password){
		
		ArrayList<Customer> cus = new ArrayList<>();
		
		//create database connection
		String url = "jdbc:mysql://localhost:3306/paymentcustomer";
		String user = "root";
		String pass = "sliit";
		
		
		//validate
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,pass);
			Statement stmt  = con.createStatement();			
			String sql = "select * from management where username='"+userName+"' and password='"+password+"' ";
			ResultSet rs = stmt.executeQuery(sql);
			
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
}