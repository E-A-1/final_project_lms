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

		int id = Integer.parseInt(request.getParameter("id"));
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		long contactNo = Long.parseLong(request.getParameter("contactNo"));
		String role = request.getParameter("role");

		int flag = 0;

		try {
			if (role.equals("admin")) {
				AdminDao dao = new AdminDao();
				Boolean isExist = dao.validateAdminUser(id);
				if (isExist) {
					throw new Exception("Id is already taken");
				}
				Admin admin = new Admin(id, name, password, email, contactNo);
				validateAdminDetails(admin);

				flag = dao.insertAdmin(admin);

				log.info(admin);

			} else {
				StudentDAO dao = new StudentDAO();
				Boolean isExist = dao.validateStudentUser(id);
				if (isExist) {
					throw new Exception("Id is already taken");
				}
				Student student = new Student(id, name, password, email, contactNo);
				validateStudentDetails(student);

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

		} catch (Exception e) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);

		}

	}

	private void validateAdminDetails(Admin admin) throws Exception {
		if (Integer.toString(admin.getAdminId()).length() > 9) {
			throw new Exception("Admin Id should be less than 10");
		}
		if (admin.getPassword().length() < 4 || admin.getPassword().length() > 10) {
			throw new Exception("Password length should be greater than 4 and less than 10 ");
		}
		if (Long.toString(admin.getContactNumber()).length() < 8) {
			throw new Exception("Contact Number should be greater than 8  digit");
		}

		if (admin.getAdminName().length() > 30) {
			throw new Exception("Admin name should be less than 30");
		}

		if (admin.getEmail() == null || admin.getEmail() == "") {
			throw new Exception("Email id is mandatory");
		}
	}

	private void validateStudentDetails(Student student) throws Exception {
		if (Integer.toString(student.getStudentId()).length() > 9) {
			throw new Exception("Student Id should be less than 10");
		}
		if (student.getPassword().length() < 4 || student.getPassword().length() > 10) {
			throw new Exception("Password length should be greater than 4 and less than 10 ");
		}
		if (Long.toString(student.getContactNumber()).length() < 8) {
			throw new Exception("Contact Number should be greater than 8  digit");
		}

		if (student.getStudentName().length() > 30) {
			throw new Exception("Student name should be less than 30");
		}

		if (student.getEmail() == null || student.getEmail() == "") {
			throw new Exception("Email id is mandatory");
		}
	}

}
