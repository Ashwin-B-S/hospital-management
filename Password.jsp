<%@ page contentType="text/html" language="java" %>
<html>
<head>
<title>Hospital Management</title>
<link rel="stylesheet" href="CSS/General.css">
<script type="text/javascript" src="JavaScript/General.js"></script>
</head>
<body onload="Password(<%=passcode%>)" >
	<%!
		String passcode;
	%>
	<%
		 passcode=(String)session.getAttribute("passcode");
	%>
	
			<form method="post" action="verifyadmin" class="container" id="oldlogin">
				<h1>Enter Password Here</h1>
				<div class="line">
					<input type="number" class="box" required name="passcode" id="passcode" placeholder="enter your password here"/>
				</div>
				<input type="submit" class="btn" value="Verify">
			</form>
		
			<form method="post" action="verifyadmin" class="container" id="newlogin">
				<h1>New Password</h1>
				<div class="line">
					<input type="number" class="box" required name="passcode" id="passcode" placeholder="enter new password"/>
				</div>
				<h1>Confirm Password</h1>
				<div class="line">
					<input type="number" class="box" required name="re-passcode" id="passcode" placeholder="re-enter password"/>
				</div>
				<input type="submit" class="btn" value="Verify">
			</form>
			

</body>
</html>
