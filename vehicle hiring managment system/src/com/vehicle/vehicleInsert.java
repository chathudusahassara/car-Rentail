package com.vehicle;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/vehicleInsert")
public class vehicleInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//Call getParameter method to get user's details
		String brand = request.getParameter("brand");
		String name = request.getParameter("name");
		String noOfSeats = request.getParameter("seats");
		String pricePerDay = request.getParameter("price");
		String driverName = request.getParameter("dname");
		String driverPhnNo = request.getParameter("dcontact");
		String vehicleAvailability = request.getParameter("availability");
		String image = request.getParameter("image");
		
		//boolean Avl = Boolean.parseBoolean(vehicleAvailability);//
		
		boolean isTrue;//Create boolean variable called 'isTrue'
		isTrue = VehicleDbUtil.insertVehicle (brand,name,noOfSeats, pricePerDay,driverName,driverPhnNo,vehicleAvailability,image); //Call 'insertUser' method to insert vehicle details
		
		if(isTrue == true)
		{
			RequestDispatcher dis = request.getRequestDispatcher("Success.jsp");//Create RequestDispatcher class object called 'dis'
			//RequestDispatcher class dispatching the request to 'Success.jsp'file
			dis.forward(request, response);	
		}
		
		else
		{
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");//Create RequestDispatcher class object called 'dis2'
			//RequestDispatcher class dispatching the request to 'unsuccess.jsp'file
			dis2.forward(request, response);	
		}
	}

}
