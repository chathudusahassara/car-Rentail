package com.vehicle;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class MaintainDBUtil {
	
	public static List<Vehicle> validate(String vehicleName,String chassisno){
		
		ArrayList<Vehicle> vh=new ArrayList<>();
		
		String url="jdbc:mysql://localhost:3306/rental";
		String user="root";
		String pass="maliya";
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection(url,user,pass);
			Statement stmt=con.createStatement();
			String sql="select *from vehicle where vehiclename='"+vehicleName+"' and chassisno='"+chassisno+"'";
			ResultSet rs=stmt.executeQuery(sql);
			
			if(rs.next()) {
				int vid=rs.getInt(1);
				String vehiclename=rs.getString(2);
				String cno=rs.getString(3);
				String shop=rs.getString(4);
				String date=rs.getString(5);
				String maintainfee=rs.getString(6);
				String imageink=rs.getString(7);
				
				
			Vehicle v =new Vehicle(vid,vehiclename,cno,shop,date,maintainfee,imageink);	
			vh.add(v);
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}	
		return vh;
		
	}
	
	public static boolean insertmdetails(String vehiclename, String chassisno, String shop, String date,String maintainfee, String imagelink) {
			
		boolean isSuccess=false;
		

		String url="jdbc:mysql://localhost:3306/rental";
		String user="root";
		String pass="maliya";
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con=DriverManager.getConnection(url,user,pass);
			Statement stmt=con.createStatement();
			String sql="Insert into vehicle values(0,'"+vehiclename+"','"+chassisno+"','"+shop+"','"+date+"','"+maintainfee+"','"+imagelink+"')";
			int rs=stmt.executeUpdate(sql);	
			
			if(rs>0) {
				isSuccess=true;
			} else {
				isSuccess=false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	
	}
}

