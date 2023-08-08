package com.nttdata.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.nttdata.domain.BookRequest;

import com.nttdata.dbfw.ResultMapper;
import com.nttdata.domain.Admin;
import com.nttdata.domain.BookDetails;

import com.nttdata.domain.Student;

public class SqlMapper {

	
	public static final String InsertAdmin = "insert into admin values(?,?,?,?,?)";
	public static final String InsertStudent = "insert into student values(?,?,?,?,?)";
	public static final String InsertBook = "insert into bookdetails values(?,?,?,?,?,?,?,?,?)";
	public static final String FetchAdminLogin = "select * from admin where admin_id=? and password=?";
	public static final String FetchStudentDetail = "select * from student where student_id=? and password=?";
	public static final String SearchBookUsingBookName = "select * from bookdetails where book_name=? ";
	public static final String FetchBookReqDetailsUsingUserId = "select * from BookRequest where student_id=? and status=?";
	public static final String FetchAllNotReturnedBookRequest = "select * from BookRequest where student_id=?";
	public static final String GETBookReqDetailsBYBOOKID = "select * from bookrequest where book_id=?";
	public static final String RetriveBookReqDetails = "select * from bookrequest where book_id=? and status='confirmed'";// to
																															// check
																															// already
																															// exits
	public static final String RetriveBookReqDetailsUsingRequestId = "select * from BookRequest where request_id=?";
	public static final String RetrieveRequestsToBeConfirmedByAdmin = "select * from BookRequest where status='open'";
	public static final String FetchAdmin = "select * from admin";
	public static final String GetAllStudents = "select * from student";
	public static final String FetchBookList = "select * from bookdetails";
	public static final String DeleteStudent = "delete from student where student_id=?";
	public static final String DeleteBook = "delete from bookdetails where ISBN=?";
	public static final String GetBookByBookId = "select * from bookdetails where book_id=?";
	public static final String INSERT_BOOK_REQUEST = "insert into bookrequest values(?,?,?,?)";
	public static final String DELETE_BOOK_REQUEST = "delete from BookRequest where requestid=?";
	public static final String UPDATE_BOOK_REQUEST = " update bookrequest set status =? where request_id=?";
	public static final String INSERT_INTO_BOOK_RETURN = "insert into bookreturn values(?,?,?)";
	public static final String Update_Book = "update bookdetails set price =? , quantity =? where ISBN=?";
	public static final String GetReturnedRequestDetailsHistory = "select br.request_id,bd.book_id, bd.book_name,bd.category_name ,brn.return_date from bookreturn brn inner join BookRequest br on br.request_id = brn.request_id inner join bookdetails bd on bd.book_id = br.book_id where br.student_id =? ";
	public static final String FetchAdminIdForValidation = "select * from admin where admin_id=?";
	public static final String FetchStudentIdForValidation = "select * from student where student_id=?";
	
	public static final ResultMapper MAP_USER = new ResultMapper() 
	{

		@Override
		public Object mapRows(ResultSet rs) throws SQLException {
			Admin admin = new Admin();
			admin.setPassword(rs.getString("password"));
			admin.setAdminId(rs.getInt("adminid"));
			return admin;

		}
	};

	public static final ResultMapper MAP_STUDENT = new ResultMapper() {

		@Override
		public Object mapRows(ResultSet rs) throws SQLException {
			Student student = new Student();
			student.setPassword(rs.getString("password"));
			student.setStudentId(rs.getInt("studentId"));

			return student;

		}
	};
	
	public static final ResultMapper ADMIN_MAPPER = new ResultMapper() {

		public Object mapRows(ResultSet rs) throws SQLException {

			int adminId = rs.getInt(1);
			String adminName = rs.getString(2);
			String email = rs.getString(3);
			String password = rs.getString(4);
			long contactNumber = rs.getLong(5);

			Admin admin = new Admin(adminId, adminName, email, password, contactNumber);

			return admin;
		}

		// mapRow

	};

	public static final ResultMapper STUDENT_MAPPER = new ResultMapper() {

		public Object mapRows(ResultSet rs) throws SQLException {

			int studentId = rs.getInt(1);
			String studentName = rs.getString(2);
			String password = rs.getString(3);
			String email = rs.getString(4);
			long contactNumber = rs.getLong(5);

			Student s = new Student(studentId, studentName, password, email, contactNumber);

			return s;
		}

		// mapRow

	};

	public static final ResultMapper BOOK_MAPPER = new ResultMapper() {

		public Object mapRows(ResultSet rs) throws SQLException {
			int bookId = rs.getInt(1);
			String bookName = rs.getString(2);
			int isbn = rs.getInt(3);
			String author = rs.getString(4);
			String publisher = rs.getString(5);
			String edition = rs.getString(6);
			int price = rs.getInt(7);
			int quantity = rs.getInt(8);
			String categoryName = rs.getString(9);
			BookDetails bookDetail = new BookDetails(bookId, bookName, isbn, author, publisher, edition, price,
					quantity, categoryName);

			return bookDetail;
		}

		// mapRow

	};
	

//	public static final ResultMapper MAP_BOOK = new ResultMapper() {
//
//		@Override
//		public Object mapRows(ResultSet rs) throws SQLException {
//			BookDetails book = new BookDetails();
//			book.setBookname(rs.getString("bookname"));
//			book.setIsbn(rs.getInt("isbn"));
//			return book;
//
//		}
//	};
	public static final ResultMapper BOOK_REQUEST_LIST_MAPPER = new ResultMapper() {

		public Object mapRows(ResultSet rs) throws SQLException {

			int requestId = rs.getInt(1);
			int studentId = rs.getInt(2);
			int bookId = rs.getInt(3);
			String status = rs.getString(4);

			BookRequest bookRequest = new BookRequest(requestId, studentId, bookId, status);
			return bookRequest;
		}

		// mapRow

	};
//	public static final ResultMapper RETURNED_BOOK_MAPPER = new ResultMapper() {
//
//		public Object mapRow(ResultSet rs) throws SQLException {
//
//		int requestId = rs.getInt(1);
//		int bookId = rs.getInt(2);
//		String bookName = rs.getString(3);
//		String categoryName = rs.getString(4);
//		java.sql.Date date = rs.getDate(5);
//
//		ReturnedBook returnedBook = new ReturnedBook(requestId, bookId, bookName, categoryName, date);
//		return returnedBook;
//		}
//
//		// mapRow
//
//		};

}// Anonymous class

//int bookid=rs.getInt(1);
