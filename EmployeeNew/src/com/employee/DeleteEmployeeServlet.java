package com.employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteEmployeeServlet")
public class DeleteEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("empid");
		boolean isTrue = employeeDBUtil.deleteemployee(id);
		
	
		
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("employeeinsert.jsp");
			dispatcher.forward(request, response);
			
		}
		else {
			
			List<employee> employee = employeeDBUtil.getEmployeeDetails(id);
			request.setAttribute("employee", employee);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
			
		}
		
		
		
	}

}
