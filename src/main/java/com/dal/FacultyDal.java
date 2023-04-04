package com.dal;

import com.pojo.Faculty;

public interface FacultyDal {
	Faculty addfaculty(String firstname, String lastname,String email,String gender,String info);
	
	Faculty updatefaculty(int id, String firstname, String lastname,String email,String gender,String info);
	
	Faculty deletefaculty(int id);

}

	
