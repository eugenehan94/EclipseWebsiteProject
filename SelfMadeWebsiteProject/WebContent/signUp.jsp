<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="design.css" />
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	%>

	<ul>
		<li><a href="home.jsp">Home</a></li>
	</ul>

	<h1>Sign-up For A Profile</h1>
	<form action="SignUp" method="post">

		Enter new username: <input type="text" name="newUser"><br>
		Enter new password: <input type="password" name="newPass"><br>
		Enter phone number: <input type="text" name="areaCode"><input
			type="text" name="phoneNumber"><br> <input
			type="checkbox" name="agreed"> I have read the terms and
		conditions <br> <input type="submit" value="Submit"><br>
	</form>

	<div class="errorBox">
		<%
			String invalid = (String) session.getAttribute("failedSignUp");
		if (invalid != null) {
			out.println(invalid);
			session.removeAttribute("failedSignUp");
		}

		String exist = (String) session.getAttribute("exist");
		if (exist != null) {
			out.println(exist);
			session.removeAttribute("exist");
		}

		String uncheckedBox = (String) session.getAttribute("checkboxUnchecked");
		if (uncheckedBox != null) {
			out.println(uncheckedBox);
			session.removeAttribute("checkboxUnchecked");
		}
		%>
	</div>

</body>
</html>