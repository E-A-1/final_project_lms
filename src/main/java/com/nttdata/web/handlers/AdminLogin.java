package com.nttdata.web.handlers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.nttdata.mvc.HttpRequestHandler;
import com.nttdata.dao.AdminDao;
import com.nttdata.dao.BookDetailsDao;
import com.nttdata.dao.DAOAppException;
import com.nttdata.domain.Admin;
import com.nttdata.domain.BookDetails;

public class AdminLogin implements HttpRequestHandler {

	public static Logger log = Logger.getLogger(AdminLogin.class);

	public void handle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int adminid = Integer.parseInt(request.getParameter("admin_id"));
		String password = request.getParameter("password");
		int flag = -1;
		List<Admin> admin = null;
		AdminDao dao = new AdminDao();
		try {
			admin = dao.getAdminDetails(adminid, password);
			log.info(admin);
			for (Object object : admin) {

				Admin user = (Admin) object;
				if (user.getPassword().equals(password)) {
					flag = 0;
					break;
				}
			}
			log.info("Flag in login " + flag);
			if (flag == 0) {
				HttpSession session = request.getSession();

				// Set the userId in the HttpSession
				session.setAttribute("userId", admin.get(0).getAdminId());
				BookDetailsDao dao1 = new BookDetailsDao();
				List<BookDetails> list = dao1.getBooks();
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("adminhome.jsp");
				request.setAttribute("bookList", list);
				request.setAttribute("Name", adminid);
				dispatcher.forward(request, response);

			} else {
				RequestDispatcher dispatcher = request
						.getRequestDispatcher("AdminLogin.jsp");
				request.setAttribute("Err",
						"username and password is incorrect");
				dispatcher.forward(request, response);
			}

		} catch (Exception e) {
			RequestDispatcher dispatcher = request
					.getRequestDispatcher("error.jsp");
			request.setAttribute("Err", e.getMessage());
			dispatcher.forward(request, response);

		}

	}
}
