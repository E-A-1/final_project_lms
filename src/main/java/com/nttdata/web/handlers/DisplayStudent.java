package com.nttdata.web.handlers;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.nttdata.dao.BookDetailsDao;
import com.nttdata.dao.StudentDAO;
import com.nttdata.domain.BookDetails;
import com.nttdata.domain.Student;
import com.nttdata.mvc.HttpRequestHandler;

public class DisplayStudent implements HttpRequestHandler {
		static Logger log = Logger.getLogger(DisplayBook.class);

		@Override
		public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

			StudentDAO dao= new StudentDAO();
			

			try {

				List<Student> list = dao.getStudentDetails();
				if (list.size() > 0) {

					RequestDispatcher dispatcher = request.getRequestDispatcher("DisplayStudent.jsp");

					request.setAttribute("studentList", list);
					dispatcher.forward(request, response);
				}

				else {
					RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
					request.setAttribute("Err", "error listing students...");
					dispatcher.forward(request, response);
				}

			} catch (Exception e) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
				request.setAttribute("Err", e.getMessage());
				dispatcher.forward(request, response);
			}
		}

	}


