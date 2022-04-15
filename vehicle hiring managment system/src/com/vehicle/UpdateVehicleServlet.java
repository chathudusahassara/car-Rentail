package com.vehicle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateVehicleServlet")
public class UpdateVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//assign data pass from jsp page
		String RegNo = request.getParameter("RegNo");
		String Brand = request.getParameter("Brand");
		String Name = request.getParameter("Name");
		String Seats = request.getParameter("Seats");
		String Price = request.getParameter("Price");
		String Driver = request.getParameter("Driver");
		String PhoneNo = request.getParameter("PhoneNo");
		String Availability = request.getParameter("availability");
		String Image = request.getParameter("Image");
		
		boolean isTrue;
		
		//calling update method in dbUtil
		
		isTrue = VehicleDbUtil.updateVehicle(RegNo, Brand, Name, Seats, Price, Driver, PhoneNo, Availability, Image);
		
		if(isTrue == true)
		{
			
			List<vehicle> vehiDetails = VehicleDbUtil.getVehiDetails(RegNo);
			request.setAttribute("vehiDetails", vehiDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("VehicleDetails.jsp");//Create RequestDispatcher class object called 'dis'
			//RequestDispatcher class dispatching the request to 'Success.jsp'file
			dis.forward(request, response);	
		}
		
		else
		{

			RequestDispatcher dis2 = request.getRequestDispatcher("VehicleDetails.jsp");//Create RequestDispatcher class object called 'dis'
			//RequestDispatcher class dispatching the request to 'Success.jsp'file
			dis2.forward(request, response);		
		}
	}

}
