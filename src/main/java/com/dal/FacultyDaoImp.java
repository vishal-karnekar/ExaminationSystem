package com.dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.pojo.Faculty;
import com.pojo.Student;
import com.util.DBUtil;

public class FacultyDaoImp implements FacultyDal {

	static Connection con;
	static {
		con = DBUtil.getDBConnection();
	}

	@Override
	public Faculty addfaculty(String firstname, String lastname, String email, String gender, String info) {

		try {
			int id = 0;
			PreparedStatement ps = con.prepareStatement("select max(id) from faculty");
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				id = rs.getInt(1);
				id++;
			}
			PreparedStatement pstmt = con.prepareStatement("insert into faculty values(	?,?,?,?,?,?)");

			pstmt.setInt(1, id);
			pstmt.setString(2, firstname);
			pstmt.setString(3, lastname);
			pstmt.setString(4, email);
			pstmt.setString(5, gender);
			pstmt.setString(6, info);

			int rset = pstmt.executeUpdate();
			if (rset > 0) {
				return new Faculty();
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public Faculty updatefaculty(int id, String firstname, String lastname, String email, String gender, String info) {

		try {
			PreparedStatement pstmt = con
					.prepareStatement("update faculty set firstname=?,lastname=?,email=?,gender=?,info=? where id=?");

			pstmt.setInt(6, id);
			pstmt.setString(1, firstname);
			pstmt.setString(2, lastname);
			pstmt.setString(3, email);
			pstmt.setString(4, gender);
			pstmt.setString(5, info);

			int rset = pstmt.executeUpdate();
			if (rset > 0) {
				return new Faculty();
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	@Override
	public Faculty deletefaculty(int id) {
		try {
			PreparedStatement pstmt = con.prepareStatement("delete from faculty where id=?");

			pstmt.setInt(1, id);

			int rset = pstmt.executeUpdate();
			if (rset > 0) {

				return new Faculty();

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
