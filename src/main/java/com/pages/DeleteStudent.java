package com.pages;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dal.StudentDaoImpl;
import com.pojo.Student;

/**
 * Servlet implementation class DeleteStudent
 */
@WebServlet("/deletestudent")
public class DeleteStudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public DeleteStudent() {
        super();
        // TODO Auto-generated constructor stub
    }


	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}


	public void destroy() {
		// TODO Auto-generated method stub
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw = response.getWriter();
		response.setContentType("text/html");

		String name = request.getParameter("txtname");
		
		StudentDaoImpl studentDao = new StudentDaoImpl();
		
		Student user = studentDao.deletestudent(name);
		
		if (user != null) {
			pw.println("<script type=\"text/javascript\">");  
			pw.println("alert('Delete Successfully');");  
			pw.println("</script>");                                                   //want to add popup alert delete successful 
																					// and sendredirect to studentlist.jsp at same time.
			HttpSession session = request.getSession();
			System.out.println("Session Id=" + session.getId());

			session.setAttribute("userdetails", user);
			response.sendRedirect("studentlist.jsp");

		} else {
			pw.println("<script type=\"text/javascript\">");  
			pw.println("alert('Enter Correct Name');");  
			pw.println("</script>");
			pw.print("<center><h2 style='color: red;'>Incorrect Name</h2></center>");    //want to add popup alert inccorect name 
																					// and sendredirect to deletestudent.jsp at same time.
			
			response.sendRedirect("deletestudent.jsp");


		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
