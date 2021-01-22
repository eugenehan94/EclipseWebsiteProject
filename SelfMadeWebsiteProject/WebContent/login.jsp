<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign In Page</title>
<link rel="stylesheet" href="design.css">
</head>
<body>

	<ul>
		<li><a href="home.jsp">Home</a>
	</ul>


<div class = "loginContainer">

	<div class = "loginContent">

	<h1 id ="loginHeader">Sign In</h1>
	
	<form action="Login" id="loginFormContent">
		<div id = "inputBoxContainer">
			<label>Enter username : </label><input type="text" name="uname"><br>
		</div>
		<div id = "inputBoxContainer">
			<label>Enter password : </label><input type="password" name="pass"><br>
		</div>
		<div id = "inputBoxContainer">
			<a href="resetCheck.jsp">Reset your password</a> <br>
		</div>
		<input type="submit" value="Login" id="loginBtn">
	</form>

	<div class="errorBox">
		<%
			String message = (String) session.getAttribute("Wrong Login");

		if (message != null) {
			out.println(message);
			session.removeAttribute("Wrong Login");
		}

		String successful = (String) session.getAttribute("signUpSucess");
		if (successful != null) {
			out.println("You have successfully signed up");
			session.removeAttribute("signUpSucess");

		}

		String passReset = (String) session.getAttribute("passReset");
		if (passReset != null) {
			out.println(passReset);
			session.removeAttribute("passReset");
			session.invalidate();
		}
		%>
	</div>
	<br>


	<!-- The follow code is the JSTL version for the above scriplet tags -->

		<div class="errorBox">
		<c:set var="wrongLogin" value="${wrongLogin}"></c:set>
		<c:set var="signUpSucess" value="${signUpStatus}"></c:set>
		<c:set var="passReset1" value="${resetStatus1}"></c:set>
		
		<c:choose>
			<c:when test="${wrongLogin == null }">
			</c:when>
			<c:when test="${wrongLogin != null }">
				 You may have entered in the wrong information. We are having troubles signing you in. 
				 <c:remove var="wrongLogin"></c:remove>
			</c:when>
		</c:choose>
		
		<c:choose>
			<c:when test="${signUpSucess == null}">
			</c:when>
			<c:when test="${signUpSucess != null}">
		You have successfully signed up.
		<c:remove var="signUpSucess"></c:remove>
			</c:when>
		</c:choose>
		
		<c:choose>
			<c:when test="${passReset1 == null}">
			</c:when>
			<c:when test="${passReset1 != null}">
	You have successfully reset your password. JSTL
	<c:remove var="passReset1"></c:remove>
			</c:when>
		</c:choose>

		</div>
	</div>
</div>	

</body>
</html>