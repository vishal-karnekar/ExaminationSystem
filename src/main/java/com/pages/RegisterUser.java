
package com.pages;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dal.StudentDaoImpl;
import com.pojo.Student;

/**
 * Servlet implementation class validateuser
 */
@WebServlet("/RegisterUser")
public class RegisterUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterUser() {
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
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		System.out.println("---register servlet------");
		response.setContentType("text/html");

		PrintWriter pw = response.getWriter();

		String name = request.getParameter("txtname");
		String username = request.getParameter("txtusername");
		String email = request.getParameter("txtemail");
		String pwd = request.getParameter("txtpassword");

		//
		StudentDaoImpl sDao = new StudentDaoImpl();// static block

		Student user = sDao.registerUser(name, username, email, pwd);
		if (user != null) {

			pw.print("<center>");
			pw.print("<center><h2 style='color: green;'>Registere Sucessfully </h2></center>");
			pw.print("<a href='studentlogin.jsp'>");
			pw.print(
					"<button style='border: none; color: white;padding: 15px 32px;text-align: center;text-decoration: none;font-size: 16px; margin: 4px 2px;cursor: pointer;background-color: #008CBA;'>Login</button>");
			pw.print("</a>");
			pw.print("</center>");

		} else {
			pw.print("error....");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
