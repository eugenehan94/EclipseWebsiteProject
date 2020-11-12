<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get a New Password</title>
<link rel="stylesheet" href="design.css">
</head>
<body>

	<ul>
		<li><a href="home.jsp">Home</a>
	</ul>

	<form action="ResetCheck">
		Enter Username: <input type="text" name="checkUser"><br>
		Enter Phone Number <input type="text" name="areaCode" maxlength="3">
		<input type="text" name="phoneNumber" maxlength="7"> <br>

		<label id="AreaCode">Area code</label> <label id="Number">Number</label>

		<br> <input type="submit" value="Continue">
	</form>
	<br>

	<div class="errorBox">
		<%
			String message = (String) session.getAttribute("Wrong info");
		String user = (String) session.getAttribute("Reset");

		if (message != null) {
			out.println(message);
			session.removeAttribute("Wrong info");
		}
		%>
	</div>



</body>
</html>