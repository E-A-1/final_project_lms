package com.nttdata.domain;

public class Admin {

	private int adminId;
	public Admin() {
		super();
	}

	private String adminName;
	private String password;
	private String email;
	private long contactNumber;

	public Admin(int adminId, String adminName, String password, String email, long contactNumber) {
		super();
		this.adminId = adminId;
		this.adminName = adminName;
		this.password = password;
		this.email = email;
		this.contactNumber = contactNumber;
	}

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
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
