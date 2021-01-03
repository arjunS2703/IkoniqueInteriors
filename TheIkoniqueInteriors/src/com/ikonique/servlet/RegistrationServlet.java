package com.ikonique.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ikonique.bean.User;
import com.ikonique.userService.impl.userServiceImpl;


/**
 * Servlet implementation class RegistrationServlet
 */
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
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
		// TODO Auto-generated method stub
		/*
		 * doGet(request, response);
		 */	
		
			String fname=request.getParameter("fname");
			String lname=request.getParameter("lname");
			String address=request.getParameter("address");
			String mno=request.getParameter("mno");
			String exampleRadios=request.getParameter("exampleRadios");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			String vfees=request.getParameter("vfees1");
			
			User user=new User();
			
			user.setFirstname(fname);
			user.setLastname(lname);
			user.setAddress(address);
			user.setMobileno(mno);
			user.setGender(exampleRadios);
			user.setEmail(email);
			user.setPassword(password);
			user.setVisitingfees(vfees);
			
			
			userServiceImpl s1=new userServiceImpl();
			String message=null;
			message=s1.saveUserDetails(user);
			
			if (message=="Registration Failed") {
				RequestDispatcher requestdispatcher=request.getRequestDispatcher("register.jsp");
				requestdispatcher.forward(request, response);
				
			}
			else
			{
				RequestDispatcher requestdispatcher=request.getRequestDispatcher("customer.jsp");
				requestdispatcher.forward(request, response);
				
			}
			/* response.getWriter().append(message); */
			
			
			

		
		
			}

}