package com.nttdata.web.handlers;

import java.io.IOException;
import java.util.List;
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

public class DisplayBook implements HttpRequestHandler {
	static Logger log = Logger.getLogger(DisplayBook.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BookDetailsDao dao = new BookDetailsDao();

		try {

			List<BookDetails> list = dao.getBooks();

			if (list.size() > 0) {
				RequestDispatcher dispatcher = null;
				if (request.getParameter("role").equals("admin")) {
					dispatcher = request.getRequestDispatcher("DisplayBook.jsp");

				} else {
					dispatcher = request.getRequestDispatcher("DisplayBookToStudent.jsp");
				}

				request.setAttribute("bookList", list);
				dispatcher.forward(request, response);
			}

			else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
				request.setAttribute("Err", "error registering book");
				dispatcher.forward(request, response);
			}

		} catch (Exception e) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);
		}
	}

}
