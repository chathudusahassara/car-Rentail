package com.paymentcus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteBookingServlet")
public class DeleteBookingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("bid");
		
		boolean isTrue =  PaymentCusDBUtil.deleteBook(id);
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("customerinsert.jsp");
			dis.forward(request, response);
		}
		else {
			List<Booking> bookDetails = PaymentCusDBUtil.getBookingDetails(id);
			request.setAttribute("bookDetails", bookDetails);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("bookingDetails.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
