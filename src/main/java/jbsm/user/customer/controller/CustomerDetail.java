package jbsm.user.customer.controller;

import java.io.IOException;
import java.sql.Connection;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jbsm.user.customer.dao.CustomerDao;
import jbsm.user.customer.dto.CustomerDto;

@WebServlet(urlPatterns = {"/customer/detail"})
public class CustomerDetail extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Connection conn = null;//연결
		
		try {
			int customerNo = Integer.parseInt(request.getParameter("customerNo"));
			
			ServletContext sc = this.getServletContext();

			conn = (Connection)sc.getAttribute("conn");			
			
			CustomerDao customerDao = new CustomerDao();
			customerDao.setConnection(conn);
			
			CustomerDto customerDto = customerDao.customerSelectOne(customerNo);
			
			request.setAttribute("customerDto", customerDto);
			RequestDispatcher rd = 
					request.getRequestDispatcher("./CustomerDetail.jsp");
			rd.forward(request, response);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			request.setAttribute("error", e);
			RequestDispatcher dispatcher = 
					request.getRequestDispatcher("/common/Error.jsp");
			
			dispatcher.forward(request, response);
		}

	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
				
	}
	
}
