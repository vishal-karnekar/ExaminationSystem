package com.pages;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/aboutus")
public class AboutUsSer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AboutUsSer() {
        super();
       
    }

	
	public void init(ServletConfig config) throws ServletException {
		
	}

	
	public void destroy() {
	
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter pw=response.getWriter();
		response.setContentType("text/html");
		pw.write("<br>");
		pw.write("<h3>about us</h3>");
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
