package com.pages;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dal.FacultyDal;
import com.dal.FacultyDaoImp;
import com.pojo.Faculty;
import com.pojo.Student;

/**
 * Servlet implementation class AddFaculty
 */
@WebServlet("/addfaculty")
public class AddFaculty extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AddFaculty() {
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
		System.out.println("---add faculty servlet------");
		response.setContentType("text/html");

		PrintWriter pw = response.getWriter();

		String firstn = request.getParameter("fname");
		String lastn = request.getParameter("lname");
		String email = request.getParameter("eaddress");
		String gen = request.getParameter("gender");
		String note = request.getParameter("info");

		FacultyDaoImp fdao = new FacultyDaoImp();

		Faculty user = fdao.addfaculty(firstn, lastn, email, gen, note);
		if (user != null) {

			pw.print("<center>");
			pw.print("<center><h2 style='color: green;'>Added Successfully </h2></center>");
			pw.print("<a href='addfaculty.jsp'>");
			pw.print(
					"<button style='border: none; color: white;padding: 15px 32px;text-align: center;text-decoration: none;font-size: 16px; margin: 4px 2px;cursor: pointer;background-color: #008CBA;'>Back to Add Faculty</button>");
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
