package com.resetPass;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.loginDao.DAO;



@WebServlet("/ResetPass")
public class ResetPass extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DAO dao = new DAO();

	public ResetPass() {
		super();
		// TODO Auto-generated constructor stub
	}

	// Switch to doPost eventually - b/c sending info to database
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String pass = request.getParameter("newPass");

		HttpSession session = request.getSession();
		String user = (String) session.getAttribute("user");

		
		dao.update(user, pass);
		session.setAttribute("passReset","You have successfully reset your password");
		response.sendRedirect("login.jsp");

	}

}
