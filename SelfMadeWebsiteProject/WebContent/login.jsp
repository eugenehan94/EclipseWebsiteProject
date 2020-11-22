<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<<<<<<< HEAD
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

	<h1>Sign In</h1>
	<form action="Login">
		Enter username : <input type="text" name="uname"><br>
		Enter password : <input type="password" name="pass"><br>
		<a href="resetCheck.jsp" id="linkMove">Reset your password</a> <br>
		<input type="submit" value="Login">
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
			session.invalidate();
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


<!-- The follow code is for JSTL version for the above scriplet tags -->

	<c:set var="wrongLogin" value="${wrongLogin}"></c:set>
	<c:set var="signUpSucess" value="${signUpStatus}"></c:set>
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
		<c:when test ="${signUpSucess != null}">
		You have successfully signed up.
		</c:when>
	</c:choose>
	
	
=======
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

	<h1>Sign In</h1>
	<form action="Login">
		Enter username : <input type="text" name="uname"><br>
		Enter password : <input type="password" name="pass"><br>
		<a href="resetCheck.jsp" id="linkMove">Reset your password</a> <br>
		<input type="submit" value="Login">
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
			session.invalidate();
		}

		String passReset = (String) session.getAttribute("passReset");
		if (passReset != null) {
			out.println(passReset);
			session.removeAttribute("passReset");
			session.invalidate();
		}
		%>
	</div>


>>>>>>> refs/remotes/origin/master

</body>
</html>