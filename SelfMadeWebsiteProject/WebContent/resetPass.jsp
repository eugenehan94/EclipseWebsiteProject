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

	<p>Select a new password</p>
	<br> Hello ${user}
	<form action="ResetPass" method="post">
		Enter new password: <input type="text" name="newPass" required> <input
			type="submit" value="Submit">
	</form>

</body>
</html>