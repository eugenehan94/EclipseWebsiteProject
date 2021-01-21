<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sign Up Page</title>
<link type="text/css" rel="stylesheet" href="design.css" />
<script type="text/javascript" src="javascript.js"></script>
</head>
<body>
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	%>

	<ul>
		<li><a href="home.jsp">Home</a></li>
	</ul>

 <div class = "signUpContainer"> <!-- Form -->

	<div class = "signUpContent">
	
	<h1 id = "signUpHeader">Sign-up For A Profile</h1>
	
	
	<form action="SignUp" method="post" id = "signUpFormContent">

		<label>Enter new username: </label>
		<input type="text" name="newUser"><br>
		<label>Enter new password: </label>
		<input type="password" name="newPass"><br>
		<label>Enter phone number: </label>
		<input type="text" name="areaCode">
		<input type="text" name="phoneNumber"><br> 
		<input type="checkbox" name="agreed"> I have read the <a href="#"
			id = "termsAndConditions">
			terms and conditions</a> <br> 
			<input type="submit" value="Submit" id= "signUpSubmitBtn"><br>
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



	<!-- The Modal -->
	<div id="myModal" class="modal">

		<!-- Modal content -->
		<div class="modal-content">
			<span class="close">&times;</span>
			
			<h3>AGREEMENT TO TERMS</h3>
			<p> These Terms and Conditions constitute a
				legally binding agreement made between you, whether personally or on
				behalf of an entity ("you") and [business entity name] ("we," "us"
				or "our"), concerning your access to and use of the [website
				name.com] website as well as any other media form, media channel,
				mobile website or mobile application related, linked, or otherwise
				connected thereto (collectively, the "Site"). You agree that by
				accessing the Site, you have read, understood, and agree to be bound
				by all of these Terms and Conditions. If you do not agree with all
				of these Terms and Conditions, then you are expressly prohibited
				from using the Site and you must discontinue use immediately.
				Some more text............................................</p>

		</div>
	</div>
		
		</div> <!-- div after container -->
		
		
</div>		
		
</body>
</html>