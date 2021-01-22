<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

<div class = "resetCheckContainer">
	<div class = "resetCheckContent">
	
	
	<form action="ResetCheck" id="resetCheckForm">
		<div id = "inputBoxContainer">
			<label>Enter Username:</label> <input type="text" name="checkUser">
		</div>
		<div id = "inputBoxContainer">
			<label>Enter Phone Number: </label> <input type="text" id="areaCodeInput" name="areaCode" maxlength="3">
			<input type="text" name="phoneNumber" maxlength="7">
		</div>
		<input type="submit" value="Continue" id="resetCheckBtn">
	</form>
	

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

	</div>
</div>
</body>
</html>