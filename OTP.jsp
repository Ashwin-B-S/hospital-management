<%@ page contentType="text/html" language="java" %>
<html>
<head>
<title>Hospital Management</title>
<link rel="stylesheet" href="CSS/General.css">
</head>
<body>
	<div class="container">
	<form method="post" action="verify" class="login" id="login">
		<h1>Enter OTP Here</h1>
		<div class="line">
			<input type="number" class="box" required name="otp" id="mobile" placeholder="enter your OTP here"/>
		</div>
			<input type="submit" class="btn" style=""value="Verify"> 
	</form>
	</div>
</body>
</html>
