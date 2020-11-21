package com.signup;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.loginDao.DAO;

@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;

	DAO dao = new DAO();

	public SignUp() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String newUser = request.getParameter("newUser");
		String newPass = request.getParameter("newPass");
		String areaCode = request.getParameter("areaCode");
		String phoneNumber = request.getParameter("phoneNumber");

		String signupSucess = "true";

		int areaCodeLength = areaCode.length();
		int phoneNumberLength = phoneNumber.length();
		int areaCodeInt;
		int phoneNumberInt;

		String page = "";

		session.setAttribute("signUpStatus", null); // for JSTL
		
		
		if (request.getParameter("agreed") != null) {
			if (!dao.check(newUser)) {
				if (areaCodeLength == 3 && phoneNumberLength == 7) {
					try {
						areaCodeInt = Integer.parseInt(areaCode);
						phoneNumberInt = Integer.parseInt(phoneNumber);
						dao.insert(newUser, newPass, areaCodeInt, phoneNumberInt);
						session.setAttribute("signUpSucess", signupSucess);
						
						session.setAttribute("signUpStatus", "true"); //Pass value back to JSTL value
						
						page = "login.jsp";
						response.sendRedirect(page);
					} catch (NumberFormatException ex) {

						session.setAttribute("failedSignUp", "Please satisfy the criterias of the sign up");
						page = "signUp.jsp";
						response.sendRedirect(page);
					}

				} else {
					page = "signUp.jsp";
					session.setAttribute("failedSignUp", "Please satisfy the criterias of the sign up");
					response.sendRedirect("signUp.jsp");

				}

			} else {

				session.setAttribute("exist", "The username is already taken");
				response.sendRedirect("signUp.jsp");
			}
		} else {
			
			session.setAttribute("checkboxUnchecked", "Please agree to the terms and conditions");
			response.sendRedirect("signUp.jsp");
		}

	}

}
