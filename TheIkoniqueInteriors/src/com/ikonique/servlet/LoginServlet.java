package com.ikonique.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ikonique.bean.User;
import com.ikonique.userService.userService;
import com.ikonique.userService.impl.userServiceImpl;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       userServiceImpl u1=new userServiceImpl();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
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
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		User user = u1.getUser(email,password);
		/* System.out.println(user.getUser_id()); */
		
		
		if(user!=null) {
			// create session
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("loginBean", user);
			RequestDispatcher dispatcher = request.getRequestDispatcher("customer.jsp");
			dispatcher.forward(request, response);
		}else {
			// forward to login page with proper message
			request.setAttribute("message", "Incorrect username or password. please try again.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}
