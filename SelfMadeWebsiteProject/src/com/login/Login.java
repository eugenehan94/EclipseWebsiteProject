package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.loginDao.DAO;

@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DAO dao = new DAO();

	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String user = request.getParameter("uname");
		String pass = request.getParameter("pass");
		HttpSession session = request.getSession();

		session.setAttribute("wrongLogin", null); // for the JSTL

		if (dao.check(user, pass)) {

			session.setAttribute("username", user);
			response.sendRedirect("welcome.jsp");

		} else {
			session.setAttribute("Wrong Login",
					"We have trouble signing you in, you might be entering in the wrong password");
			response.sendRedirect("login.jsp");

			session.setAttribute("wrongLogin", "wrong"); // for the JSTL

			if (dao.check(user, pass)) {

				session.setAttribute("username", user);
				response.sendRedirect("welcome.jsp");

			} else {
				session.setAttribute("Wrong Login",
						"We have trouble signing you in, you might be entering in the wrong password");
				response.sendRedirect("login.jsp");

			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
