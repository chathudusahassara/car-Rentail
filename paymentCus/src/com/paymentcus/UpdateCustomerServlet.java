package com.paymentcus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bid = request.getParameter("bid");
		String car = request.getParameter("car");
		String duration = request.getParameter("duration");
		String adate = request.getParameter("adate");
		String rdate = request.getParameter("rdate");
		
		boolean isTrue;
		
		isTrue = PaymentCusDBUtil.updatebooking(bid, car, duration, adate, rdate);
		
		if(isTrue == true) {
			
			List<Booking> bookDetails = PaymentCusDBUtil.getBookingDetails(bid);
			request.setAttribute("bookDetails", bookDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("bookingDetails.jsp");
			dis.forward(request, response);
		}
		else {
	//		RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
	//		dis2.forward(request, response);
			
			List<Booking> bookDetails = PaymentCusDBUtil.getBookingDetails(bid);
			request.setAttribute("bookDetails", bookDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("bookingDetails.jsp");
			dis.forward(request, response);
			
		}
		
		
	}

}
