package com.vehicle;


import java.io.IOException;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class MaintainInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		String vehiclename=request.getParameter("vname");
		String chassisno=request.getParameter("cno");
		String shop=request.getParameter("shop");
		String date=request.getParameter("date");
		String maintainfee =request.getParameter("mfee");
		String imagelink=request.getParameter("ilink");
		
		boolean isTrue;
		
		isTrue= MaintainDBUtil.insertmdetails(vehiclename, chassisno, shop, date, maintainfee, imagelink);
		
		if(isTrue==true) {
			RequestDispatcher dis=request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
			
		}else {
			RequestDispatcher dis2=request.getRequestDispatcher("unsccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
