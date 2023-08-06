package com.nttdata.web.handlers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.nttdata.dao.AdminDao;
import com.nttdata.dao.DAOAppException;
import com.nttdata.dao.StudentDAO;
import com.nttdata.dbcon.DBConnectionException;
import com.nttdata.dbfw.DBFWException;
import com.nttdata.domain.Admin;
import com.nttdata.domain.Student;
import com.nttdata.mvc.HttpRequestHandler;

public class Registration implements HttpRequestHandler {

	public static Logger log = Logger.getLogger(AdminLogin.class);

	public void handle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		int id = Integer.parseInt(request.getParameter("id"));
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		int contactNo = Integer.parseInt(request.getParameter("contactNo"));
		String role = request.getParameter("role");

		int flag = 0;

		try {
			if (role.equals("admin")) {
				Admin admin = new Admin(id, name, password, email, contactNo);
				AdminDao dao = new AdminDao();
				flag = dao.insertAdmin(admin);

				log.info(admin);

			} else {
				Student student = new Student(id, name, password, email, contactNo);
				StudentDAO dao = new StudentDAO();
				flag = dao.createNewStudent(student);
			}

			log.info("Flag in login " + flag);
			if (flag == 1) {
				RequestDispatcher dispatcher = null;
				if (role.equals("admin")) {
					dispatcher = request.getRequestDispatcher("adminhome.jsp");
				} else {
					dispatcher = request.getRequestDispatcher("StudentHome.jsp");
				}
				HttpSession session = request.getSession();

				// Set the userId in the HttpSession
				session.setAttribute("userId", id);
                dispatcher.forward(request, response);

			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
				request.setAttribute("Err", "something went wrong....");
				dispatcher.forward(request, response);
			}

		} catch (Exception  e) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);

		}

	}
}
