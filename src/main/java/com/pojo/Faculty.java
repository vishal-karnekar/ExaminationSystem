package com.pojo;

public class Faculty {

	private String firstname, lastname, email, gender,info;
	private int id;
	public Faculty(String firstname, String lastname, String email, String gender, String info, int id) {
		super();
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.gender = gender;
		this.info = info;
		this.id = id;
	}
	public Faculty() {
		super();
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "Faculty [firstname=" + firstname + ", lastname=" + lastname + ", email=" + email + ", gender=" + gender
				+ ", info=" + info + ", id=" + id + "]";
	}

}
