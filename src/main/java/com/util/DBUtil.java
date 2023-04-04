package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBUtil {

	public static Connection getDBConnection() {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("--Driver loaded---");
			
		Connection con=	DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","");
		System.out.println("------Connection done------");
		return con;
		} 
		
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;	
	}
}
