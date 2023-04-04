package com.dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.Cookie;

import com.pojo.Student;
import com.util.DBUtil;

public class StudentDaoImpl implements StudentDAL {

	static Connection con;
	static {
		con = DBUtil.getDBConnection();
	}

	@Override
	public Student registerUser(String name, String username, String email, String password) {

		try {
			PreparedStatement pstmt = con.prepareStatement("insert into student_reg values(	?,?,?,?)");

			pstmt.setString(1, name);
			pstmt.setString(2, username);
			pstmt.setString(3, email);
			pstmt.setString(4, password);

			int rset = pstmt.executeUpdate();
			if (rset > 0) {
				return new Student();
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public Student validateuser(String username, String password) {
		


		System.out.println("---validate user---" + username + "    " + password);

		try {
			PreparedStatement pstmt = con.prepareStatement("select * from student_reg where username=? and password=?");

			pstmt.setString(1, username);
			pstmt.setString(2, password);
			

			
			ResultSet rset = pstmt.executeQuery();
			if (rset.next()) {
				return new Student(rset.getString("name"), rset.getString("username"), rset.getString("email"),
						rset.getString("password"));

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public Student deletestudent(String name) {
		try {
			PreparedStatement pstmt = con.prepareStatement("delete from student_reg where name=?");

			pstmt.setString(1, name);

			int rset = pstmt.executeUpdate();
			if (rset>0) {
				
				return new Student();

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

}
