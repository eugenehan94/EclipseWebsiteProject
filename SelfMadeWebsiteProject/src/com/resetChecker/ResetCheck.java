package com.resetChecker;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.loginDao.DAO;

@WebServlet("/ResetCheck")
public class ResetCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DAO dao = new DAO();

	public ResetCheck() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String user = request.getParameter("checkUser");
		String areaCode = request.getParameter("areaCode");
		String phoneNumber = request.getParameter("phoneNumber");

		HttpSession session = request.getSession();
		
		session.setAttribute("ResetCheck", null);
		
		if (dao.check(user, areaCode, phoneNumber)) {

			session.setAttribute("user", user);
			response.sendRedirect("resetPass.jsp");

		} else {
			session.setAttribute("Wrong info",
					"We have trouble with reset, you might be entering in the wrong credentials");
			response.sendRedirect("resetCheck.jsp");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
