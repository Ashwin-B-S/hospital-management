<%@ page contentType="text/html" language="java" %>
<html>
<head>
<title>Hospital Management</title>
<link rel="stylesheet" href="CSS/General.css">
<script type="text/javascript" src="JavaScript/General.js"></script>
</head>
<body onload="UserPassword(<%=id%>)" >
	<%!
		String id;
	%>
	<%
		 id=(String)session.getAttribute("id");
	%>

			<form method="post" action="adduserpassword" class="container" id="newlogin">
				<h2>Username</h2>
				<div class="line">
					<input type="text" class="box" required name="username" id="username" placeholder="enter username here"/>
				</div>
				<h2>New Password</h2>
				<div class="line">
					<input type="password" class="box" required name="password" id="password" placeholder="enter password here"/>
				</div>
				<h2>Confirm Password</h2>
				<div class="line">
					<input type="password" class="box" required name="password1" id="password1" placeholder="re-enter password here"/>
				</div>
				<input type="submit" class="btn" value="Confirm"> 
			</form>

			<form method="post" action="changepassword" class="container" id="oldlogin">
				<span id = "uname"></span>
				<h2>New Password</h2>
				<div class="line">
					<input type="password" class="box" required name="password" id="password" placeholder="enter password here"/>
				</div>
				<h2>Confirm Password</h2>
				<div class="line">
					<input type="password" class="box" required name="password1" id="password1" placeholder="re-enter password here"/>
				</div>
				<input type="submit" class="btn" value="Set"> 
			</form>
</body>
</html>
