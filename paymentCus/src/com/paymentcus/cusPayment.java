package com.paymentcus;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/cusPayment")
public class cusPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cardname = request.getParameter("cardname");
		String cardnum = request.getParameter("cardnum");
		String carddate = request.getParameter("carddate");
		String cvv = request.getParameter("cvv");
		
		boolean isTrue;
		
		isTrue = PaymentCusDBUtil.cusPayment(cardname, cardnum, carddate, cvv);
	
		if(isTrue == true) {
			RequestDispatcher dis =  request.getRequestDispatcher("bookingDetails.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 =  request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
