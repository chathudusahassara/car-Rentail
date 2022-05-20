package com.paymentcus;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Customerinsert")
public class Customerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		
		String car = request.getParameter("car");
		String duration = request.getParameter("duration");
		String adate = request.getParameter("adate");
		String rdate = request.getParameter("rdate");
		
		boolean isTrue;
		
		isTrue = PaymentCusDBUtil.insertcustomer(car, duration, adate, rdate);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("cusDetails.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	
	}

}
