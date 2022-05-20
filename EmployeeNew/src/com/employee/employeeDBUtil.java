package com.employee;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;





public class employeeDBUtil {
	
	
	//public static List<employee> validate(String username, String password) {
		
		//ArrayList<employee> emp = new ArrayList<>();
		
		//String url = "jdbc:mysql://localhost:3306/employeemanagment";
		//String user = "root";
		//String pass = "Sam.1999";
		
		
	
		//try {
			
			//Class.forName("com.mysql.jdbc.Driver");
			
			//Connection con = DriverManager.getConnection(url, user, pass);
			//Statement stmt = con.createStatement();
			
			
			//String sql = "select * from managment where username='"+username+"' and password='"+password+"'";
			//ResultSet rs = stmt.executeQuery(sql);
			
			//if(rs.next()) {
				//int id = rs.getInt(1);
				//String userU = rs.getString(2);
				//String passU = rs.getString(3);
				
				//employee e = new employee(id,userU,passU);
				//emp.add(e);
			//}
			
			
//		}
	//	catch(Exception e) {
		//	e.printStackTrace();
		//}
		//return emp;
//	}
	
    public static List<employee> validate(String id) {
		
		ArrayList<employee> emp = new ArrayList<>();
		
		String url = "jdbc:mysql://localhost:3306/employeemanagment";
		String user = "root";
		String pass = "Sam.1999";
		
	
			
	
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			
			
			String sql = "select * from employee where id='"+id+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id2 = rs.getInt(1);
				String name = rs.getString(2);
				String phoneno= rs.getString(3);
				String email= rs.getString(4);
				String position= rs.getString(5);
				String salary= rs.getString(6);
				String gender = rs.getString(7);
				
				employee e = new employee(id2,name,phoneno,email,position,salary,gender);
				emp.add(e);
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return emp;
	}
	
	
	public static boolean insertemployee(String name,String phoneno,String email,String position,String salary,String gender) {
		boolean isSuccess = false;
		
		String url = "jdbc:mysql://localhost:3306/employeemanagment";
		String user = "root";
		String pass = "Sam.1999";
		
		
		try{
			
             Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
           
			
		   String sql = "insert into employee values (0, '"+name+"','"+phoneno+"',  '"+email+"', '"+position+"', '"+salary+"', '"+gender+"')";
		   int rs = stmt.executeUpdate(sql);
			
			if(rs >0) {
				isSuccess = true;
			}else {
				isSuccess =false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	public static boolean updateemployee(String id,String name,String phoneno,String email,String position,String salary,String gender ) {
		
       boolean isSuccess = false;
		
		String url = "jdbc:mysql://localhost:3306/employeemanagment";
		String user = "root";
		String pass = "Sam.1999";
		
		try{
			
            Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
          
			
		   String sql = "update employee set name ='"+name+"',phoneno = '"+phoneno+"',email = '"+email+"',position = '"+position+"',salary = '"+salary+"',gender =  '"+gender+"'" +"where id='"+id+ "'";
		   int rs = stmt.executeUpdate(sql);
			
			if(rs >0) {
				isSuccess = true;
			}else {
				isSuccess =false;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	public static boolean deleteemployee(String id) {
		
		boolean isSuccess = false;
		
		String url = "jdbc:mysql://localhost:3306/employeemanagment";
		String user = "root";
		String  pass = "Sam.1999";
		
				
		
		int convId = Integer.parseInt(id);
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			//Connection con = DBconnect.getConnection();
			//Statement stmt = con.createStatement();
		    String sql = "delete from employee where id='"+convId+"'";
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


	public static List<employee> getEmployeeDetails(String id) {
		// TODO Auto-generated method stub
		
		int concertedID = Integer.parseInt(id);
		
		
		ArrayList<employee> employee = new ArrayList<>();
		
		String url = "jdbc:mysql://localhost:3306/employeemanagment";
		String user = "root";
		String pass = "Sam.1999";
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url, user, pass);
			Statement stmt = con.createStatement();
			String sql = "select * from employee where id = '"+concertedID+"'";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id1 = rs.getInt(1);
				String name = rs.getString(2);
				String phoneno = rs.getString(3);
				String email = rs.getString(4);
				String  position = rs.getString(5);
				String  salary = rs.getString(5);
				String  gender = rs.getString(5);
				
				employee b = new employee(id1,name,phoneno,email,position,salary,gender);
				employee.add(b);
				
			}
			
			
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return employee;
		
	}


	


	 
	}
		
	

