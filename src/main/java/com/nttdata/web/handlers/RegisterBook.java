package com.nttdata.web.handlers;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;

import com.nttdata.dao.BookDetailsDao;
import com.nttdata.dao.DAOAppException;
import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.domain.BookDetails;
import com.nttdata.mvc.HttpRequestHandler;

public class RegisterBook implements HttpRequestHandler {
	static Logger log = Logger.getLogger(RegisterBook.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BookDetailsDao dao = new BookDetailsDao();
		BookDetails book = new BookDetails();
		Random random = new Random();
		int maxDigits = 100000;
		int randomNumber = random.nextInt(maxDigits);
		book.setBookId(randomNumber);
		book.setBookName(request.getParameter("bookname"));
		book.setIsbn(Integer.parseInt(request.getParameter("isbn")));
		book.setAuthor(request.getParameter("author"));
		book.setPublisher(request.getParameter("publisher"));
		book.setEdition(request.getParameter("edition"));
		book.setPrice(Integer.parseInt(request.getParameter("price")));
		book.setQuantity(Integer.parseInt(request.getParameter("quantity")));
		book.setCategoryName(request.getParameter("category"));

		int result;
		try {
			validateBookDetails(book);
			result = dao.createNewBook(book);//returns 1

			if (result == 1) {

				RequestDispatcher dispatcher = request.getRequestDispatcher("..\\Pages\\SuccessAdmin.jsp");
				request.setAttribute("message", "Book succesfully registered with the system");
				request.setAttribute("details", book);
				dispatcher.forward(request, response);
			}

			else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("ErrorAdmin.jsp");
				request.setAttribute("Err", "error registering book");
				dispatcher.forward(request, response);
			}

		} catch (Exception e) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("ErrorAdmin.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);
		}
	}
	private void validateBookDetails(BookDetails book) throws Exception {
		if (book.getBookName().length() > 30) {
			throw new Exception("book length name should be less than 30 ");
		}
		if (Integer.toString(book.getIsbn()).length() > 13) {
			throw new Exception("isbn length name should be less than 13 digits ");
		}
		if (book.getAuthor().length() > 30) {
			throw new Exception("author name length should be greater than 2 ");
		}

	}
}
