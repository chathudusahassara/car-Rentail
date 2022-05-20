package com.employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/searchservlet")
public class searchservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("id");
		
		try {
			List<employee> empDetails = employeeDBUtil.validate(id);
			request.setAttribute("empDetails", empDetails);     
			}
			catch (Exception e){
				e.printStackTrace();
			}
			RequestDispatcher dis = request.getRequestDispatcher("Useraccount.jsp");
			dis.forward(request, response);
			
	}

}
