package com.ikonique.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ikonique.bean.User;
import com.ikonique.userService.impl.userServiceImpl;
import com.itextpdf.text.log.SysoLogger;

/**
 * Servlet implementation class AfterPaymentProcess
 */
public class AfterPaymentProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       userServiceImpl us = new userServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AfterPaymentProcess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession httpSession = request.getSession(false);
		User user = null;
		if (null != httpSession) {
			user = (User) httpSession.getAttribute("loginBean");
		}
		String status = request.getParameter("pstatus");
		System.out.println("payment status from paytm:-"+status);
		String roleid = request.getParameter("id");
		System.out.println("role for book or order:-"+roleid);
		int bookid = Integer.parseInt(request.getParameter("bookid"));
		System.out.println("Order or booking id:-"+bookid);
		if(status.equalsIgnoreCase("TXN_SUCCESS"))
		{
			if(roleid.equalsIgnoreCase("BID"))
			{
				int updatecount=us.updatePaymentStatus(bookid);
			}
			else
			{
				int updatepayment=us.updateOrderPaymentStatus(bookid);
				int deletecart = us.deleteUserCart(user.getUser_id());
//				StringBuilder builder = new StringBuilder(); 
//		 		builder.append("Your Order Id:-" + sArr[5]);
//		 		builder.append("\n");
//		 		builder.append("Your Order Amount:-" + sArr3[1]);
//				Main main=new Main();
//				main.sendFromGMail("ikoniqueinteriors@gmail.com","SAM@616263", new String[] {user1.getEmail()}, "Order Confirmed",builder.toString()); 
			}
		}
		else
		{
			System.out.println("Payment Failed....");
		}
	}

}
