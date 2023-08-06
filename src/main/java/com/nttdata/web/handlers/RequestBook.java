package com.nttdata.web.handlers;

import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.nttdata.dao.BookDetailsDao;
import com.nttdata.dao.BookRequestDao;
import com.nttdata.domain.BookDetails;
import com.nttdata.domain.BookRequest;
import com.nttdata.mvc.HttpRequestHandler;

public class RequestBook implements HttpRequestHandler {
	static Logger log = Logger.getLogger(DisplayBook.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BookRequestDao dao = new BookRequestDao();

		try {

			HttpSession session = request.getSession(false);
			int userId = (int) session.getAttribute("userId");

			int bookId = Integer.parseInt(request.getParameter("bookId"));
			Random random = new Random();
			int maxDigits = 100000;
			int randomNumber = random.nextInt(maxDigits);
			BookRequest bookRequest = new BookRequest(randomNumber, userId, bookId, "open");
			BookRequestDao.addNewBookRequest(bookRequest);

			RequestDispatcher dispatcher = request.getRequestDispatcher("..\\Pages\\successbook.jsp");
			request.setAttribute("success", "Book succesfully registered with the system");

			dispatcher.forward(request, response);
		} catch (Exception e) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);
		}
	}

}
