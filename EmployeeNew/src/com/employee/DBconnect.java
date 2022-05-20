package com.employee;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {
	
	private static String url = "jdbc:mysql://localhost:3306/`employeemanagment`";
	private static String username = "root";
	private static String password = "Sam.1999";
	private static Connection con;
	
	
    public static Connection getConnection() {
    	
    	try {
    		Class.forName("com.mysql.jdbc.Driver");
    		
    		con = DriverManager.getConnection(url, username , password);
    		
    		
    	}
    	catch (Exception e) {
    		System.out.println("Database connection is not successfull!!!");
    		
    	}
    	return con;
    }


	

}
