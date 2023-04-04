package com.pages;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dal.FacultyDaoImp;
import com.pojo.Faculty;

/**
 * Servlet implementation class UpdateFaculty
 */
@WebServlet("/updatefaculty")
public class UpdateFaculty extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateFaculty() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("---update faculty servlet------");
		response.setContentType("text/html");

		PrintWriter pw = response.getWriter();
		
		int id = Integer.parseInt(request.getParameter("id"));

		String firstn = request.getParameter("fname");
		String lastn = request.getParameter("lname");
		String email = request.getParameter("eaddress");
		String gen = request.getParameter("gender");
		String note = request.getParameter("info");

		FacultyDaoImp fdao = new FacultyDaoImp();
		
		Faculty user = fdao.updatefaculty(id, firstn, lastn, email, gen, note);
		
		if (user != null) {

			pw.print("<center>");
			pw.print("<center><h2 style='color: green;'>Update Successfully </h2></center>");
			pw.print("<a href='facultylist.jsp'>");
			pw.print(
					"<button style='border: none; color: white;padding: 15px 32px;text-align: center;text-decoration: none;font-size: 16px; margin: 4px 2px;cursor: pointer;background-color: #008CBA;'>Back to Faculty List</button>");
			pw.print("</a>");
			pw.print("</center>");

		} else {
			pw.print("error....");
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
