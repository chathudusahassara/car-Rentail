package com.employee;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/updateemployeeservlet")
public class updateemployeeservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String phoneno = request.getParameter("phoneno");
		String email = request.getParameter("email");
		String position = request.getParameter("position");
		String salary = request.getParameter("salary");
		String gender = request.getParameter("gender");
		
		boolean isTrue;
		
		isTrue = employeeDBUtil.updateemployee(id, name, phoneno, email, position, salary, gender);
		
		if(isTrue == true) {
			
			List<employee> employee = employeeDBUtil.getEmployeeDetails(id);
			request.setAttribute("employee", employee);
			
			RequestDispatcher dis = request.getRequestDispatcher("Success.jsp");
			dis.forward(request , response);
			
		}
		else {
			List<employee> employee = employeeDBUtil.getEmployeeDetails(id);
			request.setAttribute("employee", employee);
			
			RequestDispatcher dis = request.getRequestDispatcher("Unsuccess.jsp");
			dis.forward(request , response);
			
		}
	}

}
