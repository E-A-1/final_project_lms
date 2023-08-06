package com.nttdata.domain;

import java.sql.Date;

public class ReturnedBook {

	private String categoryName;
	private java.sql.Date returnedDate;
    private int requestId;
	private int bookId;
	private String bookName;

	public ReturnedBook(int requestId, int bookId, String bookName, String categoryName, Date returnedDate) {
		this.requestId = requestId;
		this.bookId = bookId;
		this.bookName = bookName;
		this.categoryName = categoryName;
		this.returnedDate = returnedDate;
	}

	public int getRequestId() {
		return requestId;
	}

	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public java.sql.Date getReturnedDate() {
		return returnedDate;
	}

	public void setReturnedDate(java.sql.Date returnedDate) {
		this.returnedDate = returnedDate;
	}

}