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

public class BookDetailsDao {
	// To list all the books
	public static List<BookDetails> getBooks() throws DBConnectionException, DAOAppException {
		List<BookDetails> books = null;
		ConnectionHolder connectionHolder = null;
		Connection connection = null;
		{
			try {
				connectionHolder = ConnectionHolder.getInstance();
				connection = connectionHolder.getConnection();

				books = DBHelper.executeSelect(connection, SqlMapper.FetchBookList, SqlMapper.BOOK_MAPPER);

			} catch (Exception e) {
				throw new DAOAppException("Unable to connect to db" + e);

			} finally {

				try {

					if (connection != null)
						connection.close();

				} catch (SQLException e) {
				}
			}

			return books;

		}
	}

	// To create new book
	public static int createNewBook(BookDetails book) throws DAOAppException, DBConnectionException {
		int result = 0;
		ConnectionHolder connectionHolder = null;
		Connection connection = null;
		List<BookDetails> BookDetails = null;
		try {
			connectionHolder = ConnectionHolder.getInstance();
			connection = connectionHolder.getConnection();
			final ParamMapper INSERT_BOOK_MAPPER = new ParamMapper() // select id, name from user where id=? password=?
			{

				public void mapParams(PreparedStatement preStmt) throws SQLException {
					preStmt.setInt(1, book.getBookId());
					preStmt.setString(2, book.getBookName());
					preStmt.setInt(3, book.getIsbn());
					preStmt.setString(4, book.getAuthor());
					preStmt.setString(5, book.getPublisher());
					preStmt.setString(6, book.getEdition());
					preStmt.setInt(7, book.getPrice());
					preStmt.setInt(8, book.getQuantity());
					preStmt.setString(9, book.getCategoryName());

				}

			};

			result = DBHelper.executeUpdate(connection, SqlMapper.InsertBook, INSERT_BOOK_MAPPER);

		} catch (DBConnectionException | DBFWException e) {

			e.printStackTrace();
		}

		return result;

	}

	// To search book
	public static List<BookDetails> searchBook(String name) {

		ConnectionHolder connectionHolder = null;
		Connection connection = null;
		List<BookDetails> book = null;

		try {
			connectionHolder = ConnectionHolder.getInstance();
			connection = connectionHolder.getConnection();

			final ParamMapper BOOK_PARAM_MAPPER = new ParamMapper() {

				public void mapParams(PreparedStatement preStmt) throws SQLException {
					preStmt.setString(1, name);

				}

			};

			book = DBHelper.executeSelect(connection, SqlMapper.SearchBookUsingBookName, BOOK_PARAM_MAPPER,
					SqlMapper.BOOK_MAPPER);

		} catch (DBConnectionException | DBFWException e) {

			e.printStackTrace();
		}
		return book;

	}

	// To get the book using book id
	public static List<BookDetails> getBookUsingBookId(int bookId) throws DBConnectionException, DAOAppException {
		List<BookDetails> books = null;
		ConnectionHolder connectionHolder = null;
		Connection connection = null;
		{
			try {
				connectionHolder = ConnectionHolder.getInstance();
				connection = connectionHolder.getConnection();
				final ParamMapper GET_BOOK_PARAM_MAPPER = new ParamMapper() // select id, name from user where id=?
																			// password=?
				{

					public void mapParams(PreparedStatement preStmt) throws SQLException {
						preStmt.setInt(1, bookId);
					}
				};

				books = DBHelper.executeSelect(connection, SqlMapper.GetBookByBookId, GET_BOOK_PARAM_MAPPER,
						SqlMapper.BOOK_MAPPER);

			} catch (DBConnectionException | DBFWException e) {
				throw new DBConnectionException("Unable to connect to db" + e);

			} finally {

				try {

					if (connection != null)
						connection.close();

				} catch (SQLException e) {
				}
			}

			return books;

		}
	}

	// to update the book
	public static int updateBookList(int isbn, int price, int quantity) throws DAOAppException, DBConnectionException {
		int result = 0;
		ConnectionHolder ch = null;
		Connection con = null;

		try {
			ch = ConnectionHolder.getInstance();
			con = ch.getConnection();

			final ParamMapper UPDATE_BOOK_LIST_PARAM_MAPPER = new ParamMapper() // select id, name from user where id=?
			// password=?
			{

				public void mapParams(PreparedStatement preStmt) throws SQLException {
					preStmt.setInt(1, price);
					preStmt.setInt(2, quantity);
					preStmt.setInt(3, isbn);

				}

			};

			result = DBHelper.executeUpdate(con, SqlMapper.Update_Book, UPDATE_BOOK_LIST_PARAM_MAPPER);

		} catch (DBConnectionException | DBFWException e) {

			e.printStackTrace();
		}
		return result;
	}

	public static int deleteBook(int bookId) throws DAOAppException, DBConnectionException {
		int result = 0;
		ConnectionHolder ch = null;
		Connection con = null;

		try {
			ch = ConnectionHolder.getInstance();
			con = ch.getConnection();

			final ParamMapper DELETE_BOOK_PARAM_MAPPER = new ParamMapper() // select id, name from user where id=?
			// password=?
			{

				public void mapParams(PreparedStatement preStmt) throws SQLException {
					preStmt.setInt(1, bookId);

				}

			};

			result = DBHelper.executeUpdate(con, SqlMapper.DeleteBook, DELETE_BOOK_PARAM_MAPPER);

		} catch (DBConnectionException | DBFWException e) {

			e.printStackTrace();
		}
		return result;
	}

	// to update the book

}
