package com.pages;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dal.StudentDaoImpl;
import com.pojo.Student;

/**
 * Servlet implementation class ValidateUser
 */
@WebServlet("/validateuser")
public class ValidateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ValidateUser() {
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
		// TODO Auto-generated method stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);

		System.out.println("---login servlet------");
		response.setContentType("text/html");

		PrintWriter pw = response.getWriter();

		// get username and pwd from login.html

		String uname = request.getParameter("txtusername");
		String password = request.getParameter("txtpassword");
		/*
		 * Cookie ck2 = new Cookie("stuname", uname); response.addCookie(ck2);
		 */

		//
		StudentDaoImpl studentDao = new StudentDaoImpl();// static block

		Student user = studentDao.validateuser(uname, password);
		if (user != null) {
			System.out.println("Valid User:" + user);
			
			HttpSession session = request.getSession();
			System.out.println("Session Id=" + session.getId());

			session.setAttribute("userdetails", user);
			
			response.sendRedirect("studentprofile.jsp");

		} else {
			System.out.println("invalid user");
			response.sendRedirect("studentlogin.jsp");
		}

	}

}
