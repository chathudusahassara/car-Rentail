package com.vehicle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String vehiclename=request.getParameter("vname");
			String chassisno=request.getParameter("vno");
			
			try {
			List<Vehicle> vDetails=MaintainDBUtil.validate(vehiclename,chassisno);
			request.setAttribute("vDetails", vDetails);
			}
			catch(Exception e){
				e.printStackTrace();
			}
			
			RequestDispatcher dis=request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);	
	}

}
