package com.nttdata.web.handlers;

import java.io.IOException;
import java.util.List;

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

public class ListRequest implements HttpRequestHandler {
	static Logger log = Logger.getLogger(DisplayBook.class);

	@Override
	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		BookRequestDao dao = new BookRequestDao();

		try {
			String action = request.getParameter("action");
			if (action.equals("open")) {
				List<BookRequest> list = dao.getAllRequestToBeConfirmedByTheAdmin();
				if (list.size() > 0) {
					RequestDispatcher dispatcher = request.getRequestDispatcher("..\\Pages\\DisplayRequest.jsp");

					request.setAttribute("bookRequestList", list);
					dispatcher.forward(request, response);
				}

				else {
					RequestDispatcher dispatcher = request.getRequestDispatcher("ErrorStudent.jsp");
					request.setAttribute("Err", "No Open Request Book Available");
					dispatcher.forward(request, response);
				}
			} else if (action.equals("confirm")) {
				int requestId = Integer.parseInt(request.getParameter("requestId"));
				int result = dao.confirmStatus("confirmed", requestId);
				if (result == 0) {
					RequestDispatcher dispatcher = request.getRequestDispatcher("ErrorAdmin.jsp");
					request.setAttribute("Err", "Requested book is not available ...");
					dispatcher.forward(request, response);
				} else {
					RequestDispatcher dispatcher = request.getRequestDispatcher("SuccessAdmin.jsp");
					request.setAttribute("message", "Successfully Approved the Request");
					dispatcher.forward(request, response);
				}
			}
			else if(action.equals("return")) {
				HttpSession session = request.getSession(false);
				int userId = (int) session.getAttribute("userId");
				List<BookRequest> list =dao.getBooksRequestByUser(userId,"confirmed");
				if (list.size() > 0) {
					RequestDispatcher dispatcher = request.getRequestDispatcher("..\\Pages\\ReturnBook.jsp");

					request.setAttribute("bookRequestList", list);
					dispatcher.forward(request, response);
				}

				else {
					RequestDispatcher dispatcher = request.getRequestDispatcher("ErrorStudent.jsp");
					request.setAttribute("Err", "No Books To Returned");
					dispatcher.forward(request, response);
				}
				
			}

		} catch (Exception e) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);
		}
	}

}
