package com.asif.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BalanceTransferController
 */
@WebServlet("/BalanceTransferController")
public class BalanceTransferController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("userName");
		
		HttpSession session = request.getSession();
		session.setAttribute("userName", userName);
		request.setAttribute("userName", userName);
		
		RequestDispatcher rd = request.getRequestDispatcher("/view/transfer.jsp");
		rd.forward(request, response);
	}

}
