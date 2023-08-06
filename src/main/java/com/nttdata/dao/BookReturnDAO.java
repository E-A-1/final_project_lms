package com.nttdata.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import com.nttdata.dbcon.ConnectionHolder;
import com.nttdata.dbfw.DBHelper;
import com.nttdata.dbfw.ParamMapper;
import com.nttdata.domain.BookRequest;

public class BookReturnDAO {

	public static void returnBook(int requestId) throws Exception {
		ConnectionHolder connectionHolder = ConnectionHolder.getInstance();
		Connection connection = connectionHolder.getConnection();
		BookRequest bookDetail = null;

		List<BookRequest> bookRequest = BookRequestDao.getRequestsUsingRequestId(requestId);
		if (bookRequest.isEmpty()) {
			throw new Exception(" -- Coudnt find the book request ");

		} else {

			bookDetail = bookRequest.get(0);// 0th index
			BookRequestDao.updateStatus("closed", requestId);

			ParamMapper paramMapper = new ParamMapper() {
				@Override
				public void mapParams(PreparedStatement preStmt) throws SQLException {
					preStmt.setInt(1, requestId);
					preStmt.setString(2, "returned");
					java.util.Date dt = new java.util.Date();
					java.sql.Date date = new java.sql.Date(dt.getTime());// it returns milli sec
					preStmt.setDate(3, date);
				}
			};

			DBHelper.executeUpdate(connection, SqlMapper.INSERT_INTO_BOOK_RETURN, paramMapper);

			System.out.println(" Book returned successfully");
		}
	}

//	public static List<ReturnedBook> listAllReturnedBooksForUser(int studentId) throws DBCException {
//		ConnectionHolder connectionHolder = ConnectionHolder.getInstance();
//		Connection connection = connectionHolder.getConnection();
//		List<ReturnedBook> returnedBookList = null;
//		try {
//			ParamMapper paramMapper = new ParamMapper() {
//				@Override
//				public void mapParam(PreparedStatement preStmt) throws SQLException {
//					preStmt.setInt(1, studentId);
//
//				}
//			};
//
//			returnedBookList = DBHelp.executeSelect(connection, SQLMapper.GetReturnedRequestDetailsHistory,
//					SQLMapper.RETURNED_BOOK_MAPPER, paramMapper);
//
//			if (returnedBookList.isEmpty()) {
//				System.out.println("Not returned book history found ");
//
//			} else {
//
//				for (ReturnedBook bookReturn : returnedBookList) {
//					System.out.println("RequestId ->" + bookReturn.getRequestId() + "Book Id ->"
//							+ bookReturn.getBookId() + " Book Name -> " + bookReturn.getBookName() + " Category Name ->"
//							+ bookReturn.getCategoryName() + " Return Date ->" + bookReturn.getReturnedDate());
//				}
//			}
//
//		} catch (Exception e) {
//			// TODO: handle exception
//		}
//		return returnedBookList;
//	}

}
