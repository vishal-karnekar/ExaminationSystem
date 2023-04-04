package com.pages;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginSer
 */
@WebServlet("/validatelogin")
public class ValidateAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ValidateAdmin() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	public void destroy() {
		// TODO Auto-generated method stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");

		String username = request.getParameter("txtname");
		String pwd = request.getParameter("txtpwd");
		pw.write("<br> Welcome :" + username);

		// db

		if (username.equals("vishal123") && pwd.equals("123")) {
			// valid user
			pw.write("<br>Valid User");// redirect user to welcomeServlet
			System.out.println("valid user");

			response.sendRedirect("adminprofile.jsp");

		} else {
			pw.write("<br>InValid  User");
			System.out.println("invalid user");
			response.sendRedirect("adminelogin.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
