package com.vehicle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteVehicleServlet")
public class DeleteVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String RegNo = request.getParameter("RegNo");
		
		boolean isTrue;
		isTrue = VehicleDbUtil.deleteVehicle(RegNo);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("vehicleInsert.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<vehicle> vehiDetails = VehicleDbUtil.getVehiDetails(RegNo);
			request.setAttribute("vehiDetails", vehiDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("VehicleDetails.jsp");
			dis2.forward(request, response);
			
			
		}
	}

}
