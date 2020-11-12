<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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



</body>
</html>