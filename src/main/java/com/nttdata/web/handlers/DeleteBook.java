package com.nttdata.web.handlers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.nttdata.mvc.HttpRequestHandler;
import com.nttdata.dao.BookDetailsDao;
import com.nttdata.dao.DAOAppException;

import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.domain.BookDetails;

public class DeleteBook implements HttpRequestHandler {

	public static Logger log = Logger.getLogger(DeleteBook.class);

	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BookDetailsDao dao = new BookDetailsDao();

		int isbn = Integer.parseInt(request.getParameter("isbn"));

		try {
			if (dao.deleteBook(isbn) != 0) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("..\\Pages\\DeleteSuccess.jsp");
				request.setAttribute("success", "Deleted Success");
				dispatcher.forward(request, response);

			} else {
				System.out.println("not Deleted");
				RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
				request.setAttribute("Err", "error deleting book..");
				dispatcher.forward(request, response);

			}
		} catch (Exception e) {
			e.printStackTrace();
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);

		}

	}
}