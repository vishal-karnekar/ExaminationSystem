package com.dal;

import com.pojo.Student;

public interface StudentDAL {
	
	Student registerUser(String name, String username, String email, String password);
	
	Student validateuser(String username, String password);
	
	Student deletestudent(String name);

}
