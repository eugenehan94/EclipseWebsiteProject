<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" href="design.css">
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	if (session.getAttribute("username") == null) {
		response.sendRedirect("home.jsp");
	}
	%>


	<div class="header">Welcome ${username}</div>
	<ul>
		<li><a>Button 1</a></li>
		<li><a>Button 2</a></li>
		<form action="Logout" border="2px solid black" style="float: right">
			<input type="submit" value="Logout">
		</form>
	</ul>
	<div class="row">
		<div class="column side left">
			<h3>Links column</h3>
			<a href=""> Link 1</a> <br> <a href=""> Link 2 </a> <br> <a href=""> Link 3</a> <br> <a
				href=""> Link 4</a>

		</div>

		<div class="column middle">

			<h3>Middle column</h3>
			Important information displayed in this middle column, important information displayed in this middle column,
			important information displayed in this middle column, important information displayed in this middle column,
			important information displayed in this middle column, important information displayed in this middle column,
			  
			<br>
			
		</div>

		<div class="column side right">
			<h3>Advertisement columns</h3>
			This is were the advertisements area usually at. Random text, Random
			text, Random text
		</div>
	</div>

	<div class="footer">
		
		<a href="">Random Link 1</a>
		<a href="" style="padding-left:5px">Random Link 2</a>
		<a href="" style="padding-left:5px">Random Link 3</a>
		<a href="" style="padding-left:5px">Random Link 4</a> <br>
		<div class="copyright">
		Copyright &#9400; 
		</div>
		
	</div>

</body>
</html>