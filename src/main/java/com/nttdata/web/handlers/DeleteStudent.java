package com.nttdata.web.handlers;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.nttdata.dao.BookDetailsDao;
import com.nttdata.dao.StudentDAO;
import com.nttdata.mvc.HttpRequestHandler;

public class DeleteStudent  implements HttpRequestHandler {

		public static Logger log = Logger.getLogger(DeleteStudent.class);

		public void handle(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
				
			
			StudentDAO dao = new StudentDAO();
			
			
			int studentId=Integer.parseInt(request.getParameter("studentId"));
			
				try {
					if(dao.deleteStudent(studentId)!=0) {
								RequestDispatcher dispatcher=request.getRequestDispatcher("..\\Pages\\DeleteSuccess.jsp");
								request.setAttribute("success", "Deleted Success");
								dispatcher.forward(request, response);

					}
					else {
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

