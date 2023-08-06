package com.nttdata.web.handlers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.nttdata.dao.BookReturnDAO;
import com.nttdata.dao.StudentDAO;
import com.nttdata.domain.Student;
import com.nttdata.mvc.HttpRequestHandler;

public class BookReturn implements HttpRequestHandler {
		static Logger log = Logger.getLogger(BookReturn.class);

		@Override
		public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			BookReturnDAO dao= new BookReturnDAO();
			

			try {
				
			int requestId=	Integer.parseInt(request.getParameter("requestId"));
        dao.returnBook(requestId);
        RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp");
		request.setAttribute("message","Successfully Returned the Book!" );
		dispatcher.forward(request, response);
				
			} catch (Exception e) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
				request.setAttribute("Err", e.getMessage());
				dispatcher.forward(request, response);
			}
		}

	}



