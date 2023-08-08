package com.nttdata.domain;

public class Student {
	private int studentId;
	public Student() {
		super();
	}

	private String studentName;
	private String password;
	private String email;
	private long contactNumber;

	public Student(int studentId, String studentName, String password, String email, long contactNumber) {
		super();
		this.studentId = studentId;
		this.studentName = studentName;
		this.password = password;
		this.email = email;
		this.contactNumber = contactNumber;
	}

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(long contactNumber) {
		this.contactNumber = contactNumber;
	}

}
