package com.exam;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pojo.Student;


/**
 * Servlet implementation class Java_Exam
 */
@WebServlet("/javaexam")
public class Java_Exam extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Java_Exam() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter pw = response.getWriter();
		
		String paramName, paramValue[];
		int cnt = 0;
		String ans = "";
		Enumeration<String> paramNames = request.getParameterNames();
   
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "");
			Statement st=con.createStatement();
			ResultSet rs = st.executeQuery("select ans from java_ans");

			while (rs.next() && paramNames.hasMoreElements()) {
				String n = rs.getString(1);
				paramName = (String) paramNames.nextElement();
				paramValue = request.getParameterValues(paramName);

				for (int i = 0; i < paramValue.length; i++) {
					ans = paramValue[i];

				}
				if (n.equals(ans))
					cnt++;
				

			}
			System.out.println("percentage: "+cnt);
			int per = ((cnt * 100) / 10);
			
			HttpSession session=request.getSession();
			Student user=(Student) session.getAttribute("userdetails");
			String a=user.getUsername();
			
			pw.print("<center style='margin:60px;'>");
			pw.print("<h2>Result: </h2>");
			pw.print("<h2>Name: "+ user.getName());

			pw.print("<h3>Total question : 10</h3> ");
			pw.print("<h3 style='color:green;'> You have scored " + cnt + " marks out of 10 marks.</h3>");
			pw.print("<h3 style='color:SlateBlue;margin-bottom:-50px;'> Percentage : " + per + " %</h3>");
			pw.print("</center>");
			PreparedStatement ps = con.prepareStatement("insert into java_res values(?,?,?)");

			
			ps.setInt(2, cnt);
			ps.setInt(3, per);
			ps.setString(1, a);

			int i = ps.executeUpdate();
			pw.print("<center>" + i + " Record Saved</center>");

			pw.println(
					"<a href=\"studentprofile.jsp\"><span><button style='border: none; color: white;padding: 15px 32px;text-align: center;text-decoration: none;font-size: 16px;cursor: pointer;background-color: #008CBA;'>Student Profile</button></span></a>");

		} catch (Exception e1) {
			System.out.println(e1);
		}

	}

}
