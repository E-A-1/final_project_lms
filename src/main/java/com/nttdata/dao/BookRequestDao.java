package com.nttdata.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.nttdata.dbcon.ConnectionHolder;
import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.dbfw.DBFWException;
import com.nttdata.dbfw.DBHelper;
import com.nttdata.dbfw.ParamMapper;
import com.nttdata.domain.BookDetails;
import com.nttdata.domain.BookRequest;

public class BookRequestDao {
	// to create a book request
	public static void addNewBookRequest(BookRequest bookRequest) throws Exception {
		ConnectionHolder connectionHolder = null;
		Connection connection = null;
		int result = 0;
		try {
			connectionHolder = ConnectionHolder.getInstance();
			connection = connectionHolder.getConnection();

			ParamMapper insertBookRequestParamMapper = new ParamMapper() {
				@Override
				public void mapParams(PreparedStatement preStmt) throws SQLException {
					preStmt.setInt(1, bookRequest.getRequestId());
					preStmt.setInt(2, bookRequest.getStudentId());
					preStmt.setInt(3, bookRequest.getBookId());
					preStmt.setString(4, bookRequest.getStatus());

				}
			};

			DBHelper.executeUpdate(connection, SqlMapper.INSERT_BOOK_REQUEST, insertBookRequestParamMapper);
		} catch (Exception e) {

			e.printStackTrace();
			throw e;
		}
	}

	// delete the book request
	public static void deleteBookRequest(int requestId) {

		Connection connection = null;
		ConnectionHolder connectionHolder = null;

		try {

			connectionHolder = ConnectionHolder.getInstance();

			connection = connectionHolder.getConnection();

			// Mapping the input parameter to the sql using method in the below interface

			ParamMapper paramMapper = new ParamMapper() {
				@Override
				public void mapParams(PreparedStatement preparedStatement) throws SQLException {
					preparedStatement.setInt(1, requestId);

				}
			};

			DBHelper.executeUpdate(connection, SqlMapper.DELETE_BOOK_REQUEST, paramMapper);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	// To be confirmed by the admin
	public static void updateStatus(String status, int requestId) {
		Connection connection = null;
		ConnectionHolder connectionHolder = null;
		try {

			connectionHolder = ConnectionHolder.getInstance();

			connection = connectionHolder.getConnection();

			ParamMapper partialUpdateInputParam = new ParamMapper() {
				@Override
				public void mapParams(PreparedStatement preStmt) throws SQLException {
					preStmt.setString(1, status);
					preStmt.setInt(2, requestId);

				}
			};

			DBHelper.executeUpdate(connection, SqlMapper.UPDATE_BOOK_REQUEST, partialUpdateInputParam);
			System.out.println("------- The book request is confirmed by admin -----------");
		} catch (Exception exception) {
			exception.printStackTrace();

		}
	}

	// to list request made by the student based on the status

	public static List<BookRequest> getBooksRequestByUser(int userid, String status) {
		ConnectionHolder connectionHolder = null;
		Connection connection = null;
		List<BookRequest> reqBooks = null;

		try {
			connectionHolder = ConnectionHolder.getInstance();
			connection = connectionHolder.getConnection();

			final ParamMapper BOOK_REQ_PARAM_MAPPER = new ParamMapper() {

				public void mapParams(PreparedStatement preStmt) throws SQLException {
					preStmt.setInt(1, userid);
					preStmt.setString(2, status);

				}

			};
			reqBooks = DBHelper.executeSelect(connection, SqlMapper.FetchBookReqDetailsUsingUserId,
					BOOK_REQ_PARAM_MAPPER, SqlMapper.BOOK_REQUEST_LIST_MAPPER);

			for (BookRequest bookRequest : reqBooks) {

				System.out.println(
						"Request Id ->" + bookRequest.getRequestId() + ", Status ->" + bookRequest.getStatus());
				System.out.println(" --------- ");
			}

		} catch (DBConnectionException | DBFWException e) {

			e.printStackTrace();
		}
		return reqBooks;

	}

	public static List<BookRequest> getAllBooksInCompleteRequestByUser(int userid) {
		ConnectionHolder connectionHolder = null;
		Connection connection = null;
		List<BookRequest> reqBooks = null;

		try {
			connectionHolder = ConnectionHolder.getInstance();
			connection = connectionHolder.getConnection();

			final ParamMapper BOOK_REQ_PARAM_MAPPER = new ParamMapper() {

				public void mapParams(PreparedStatement preStmt) throws SQLException {
					preStmt.setInt(1, userid);

				}

			};
			reqBooks = DBHelper.executeSelect(connection, SqlMapper.FetchAllNotReturnedBookRequest,
					BOOK_REQ_PARAM_MAPPER, SqlMapper.BOOK_REQUEST_LIST_MAPPER);

			for (BookRequest bookRequest : reqBooks) {

				System.out.println(
						"Request Id ->" + bookRequest.getRequestId() + ", Status ->" + bookRequest.getStatus());
				System.out.println(" --------- ");
			}

		} catch (DBConnectionException | DBFWException e) {

			e.printStackTrace();
		}
		return reqBooks;

	}

	public static List<BookRequest> getRequestsUsingBookId(int bookId)
	{
		ConnectionHolder connectionHolder = null;
		Connection connection = null;
		List<BookRequest> reqBooks = null;

		try {
			connectionHolder = ConnectionHolder.getInstance();
			connection = connectionHolder.getConnection();

			final ParamMapper BOOK_REQ_PARAM_MAPPER = new ParamMapper() 
				{

				public void mapParams(PreparedStatement preStmt) throws SQLException {
					preStmt.setInt(1, bookId);

				}

			};
			reqBooks = DBHelper.executeSelect(connection, SqlMapper.RetriveBookReqDetails,BOOK_REQ_PARAM_MAPPER,
					SqlMapper.BOOK_REQUEST_LIST_MAPPER );

		} catch (DBConnectionException | DBFWException e) {

			e.printStackTrace();
		}
		return reqBooks;

	}

	public static List<BookRequest> getRequestsUsingRequestId(int requestId) {
		ConnectionHolder connectionHolder = null;
		Connection connection = null;
		List<BookRequest> reqBooks = null;

		try {
			connectionHolder = ConnectionHolder.getInstance();
			connection = connectionHolder.getConnection();

			final ParamMapper BOOK_REQ_PARAM_MAPPER = new ParamMapper()

			{

				public void mapParams(PreparedStatement preStmt) throws SQLException {
					preStmt.setInt(1, requestId);

				}

			};
			reqBooks = DBHelper.executeSelect(connection, SqlMapper.RetriveBookReqDetailsUsingRequestId,
					BOOK_REQ_PARAM_MAPPER, SqlMapper.BOOK_REQUEST_LIST_MAPPER);

		} catch (DBConnectionException | DBFWException e) {

			e.printStackTrace();
		}
		return reqBooks;

	}

	public static int  confirmStatus(String status, int requestId) throws Exception {
		int quantity = 0;
		int bookId1 = 0;
		List<BookRequest> requestedBookList = getRequestsUsingRequestId(requestId);
		if (requestedBookList.isEmpty()) {
			throw new Exception("Couldn't find the request");
		} else {
			bookId1 = requestedBookList.get(0).getBookId();
		}
		List<BookRequest> requestAvailable = getRequestsUsingBookId(bookId1);// it will return the no of active
																				// confirmed request that this book have
		List<BookDetails> bookDetail = BookDetailsDao.getBookUsingBookId(bookId1);
		if (bookDetail.isEmpty()) {
			throw new Exception("Couldn't find the book");
		}
		quantity = bookDetail.get(0).getQuantity();// have taken the quantity from bookdetail table using bookid
		if (quantity == (requestAvailable.size())) // quantity(2)=size of the confirmed request stored in list
		{
			System.out.println(" The requested book is not available now ");
			return 0;
		} else {

			updateStatus("confirmed", requestId);
			System.out.println(" ");
			System.out.println(" -------------------------- ");

		}
		return 1;
	}

	public static List<BookRequest> getAllRequestToBeConfirmedByTheAdmin() throws DBConnectionException {
		ConnectionHolder connectionHolder = null;
		Connection connection = null;
		List<BookRequest> bookRequestsToConfirmedByAdmin = null;

		try {
			connectionHolder = ConnectionHolder.getInstance();
			connection = connectionHolder.getConnection();

			bookRequestsToConfirmedByAdmin = DBHelper.executeSelect(connection,
					SqlMapper.RetrieveRequestsToBeConfirmedByAdmin, SqlMapper.BOOK_REQUEST_LIST_MAPPER);
			if (bookRequestsToConfirmedByAdmin.isEmpty()) {
				System.out.println("No request available");
			} else {
				System.out.println("Select the request id to be confirmed");
				for (BookRequest bookRequest : bookRequestsToConfirmedByAdmin) {
					System.out.println("RequestId - " + bookRequest.getRequestId());

				}
			}
		} catch (DBConnectionException | DBFWException e) {

			e.printStackTrace();
		}
		return bookRequestsToConfirmedByAdmin;
	}

	public static List<BookRequest> getBookRequestsUsingBookId(int bookId) // it returns the confirmed bookrequest list
	{
		ConnectionHolder connectionHolder = null;
		Connection connection = null;
		List<BookRequest> reqBooks = null;

		try {
			connectionHolder = ConnectionHolder.getInstance();
			connection = connectionHolder.getConnection();

			final ParamMapper BOOK_REQ_PARAM_MAPPER = new ParamMapper() // select id, name from user where id=?
																		// password=?
			{

				public void mapParams(PreparedStatement preStmt) throws SQLException {
					preStmt.setInt(1, bookId);

				}

			};
			reqBooks = DBHelper.executeSelect(connection, SqlMapper.GETBookReqDetailsBYBOOKID, BOOK_REQ_PARAM_MAPPER,
					SqlMapper.BOOK_REQUEST_LIST_MAPPER);

		} catch (DBConnectionException | DBFWException e) {

			e.printStackTrace();
		}
		return reqBooks;

	}

}
