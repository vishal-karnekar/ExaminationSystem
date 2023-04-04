package com.pages;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dal.FacultyDaoImp;
import com.dal.StudentDaoImpl;
import com.pojo.Faculty;
import com.pojo.Student;

/**
 * Servlet implementation class DeleteFaculty
 */
@WebServlet("/deletefaculty")
public class DeleteFaculty extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DeleteFaculty() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");


		int id = Integer.parseInt(request.getParameter("id"));

		
		FacultyDaoImp facultyDao=new FacultyDaoImp();
		Faculty user=facultyDao.deletefaculty(id);
		
		if (user != null) {
			pw.println("<script type=\"text/javascript\">");  
			pw.println("alert('Delete Successfully');");  
			pw.println("</script>");                                                   //want to add popup alert delete successful 
																					// and sendredirect to studentlist.jsp at same time.
			HttpSession session = request.getSession();
			System.out.println("Session Id=" + session.getId());

			session.setAttribute("userdetails", user);
			response.sendRedirect("facultylist.jsp");

		} else {
			pw.println("<script type=\"text/javascript\">");  
			pw.println("alert('Enter Correct ID');");  
			pw.println("</script>");
			pw.print("<center><h2 style='color: red;'>Incorrect ID</h2></center>");    //want to add popup alert inccorect name 
																					// and sendredirect to deletestudent.jsp at same time.
			
			response.sendRedirect("deletefaculty.jsp");


		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
