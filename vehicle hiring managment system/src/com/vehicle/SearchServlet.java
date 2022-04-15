package com.vehicle;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String vBrand = request.getParameter("brand");
		String vName = request.getParameter("name");
		boolean isTrue;
		
		isTrue = VehicleDbUtil.validateSearchVehicle(vBrand, vName);
		
		if(isTrue == true){

			try {
				List<vehicle> vehiDetails = VehicleDbUtil.getVehicleDetails(vBrand, vName);
				request.setAttribute("vehiDetails", vehiDetails);
			}

			catch(Exception e){
				e.printStackTrace();
			}

			RequestDispatcher dis = request.getRequestDispatcher("VehicleDetails.jsp");
			dis.forward(request, response);
			}
		
			else {
				out.println("<script type='text/javascript'>");
				out.println("alert('The vehicle you entered does not exists!Please try again!!!');");
				out.println("location='SearchVehicle.jsp'");
				out.println("</script>");
			}
		
		
		
	
		
		}
	}


