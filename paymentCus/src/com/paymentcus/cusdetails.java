package com.paymentcus;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/cusdetails")
public class cusdetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		
		String name = request.getParameter("cname");
		String nic = request.getParameter("cnic");
		String address = request.getParameter("caddress");
		String id = request.getParameter("cid");
		
		boolean isTrue;
		
		isTrue = PaymentCusDBUtil.insertcusDetails(name, nic, address, id);
		
		if(isTrue == true) {
			RequestDispatcher dis =  request.getRequestDispatcher("paymentDetails.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
			
		}
	}

}
