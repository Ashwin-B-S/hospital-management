<%@ page contentType="text/html" language="java" %>
<html>
<head>
<title>Hospital Management</title>
<style>
	*{
		margin:0;
		padding:0;	
		box-sizing:border-box;
	}
	body{
		min-height:100vh;
		background-image: url('https://img.freepik.com/premium-photo/long-hospital-corridor-with-empty-seats_117023-1679.jpg?w=2000');
		background-size:100% 100%;
		display:flex;
	}
	.container{
		margin:auto;
		width:500px;
		max-width:90%;
		background:linear-gradient(to right,#1F5EF9,#01dbdf);
		text-align:center;
		border-radius:20px;
		
		box-shadow:0 5px 28px 0 rgba(69,90,100,.5);
	}
	.container .line h2{
		margin-bottom:10px;
		color:#00FF7F;
	}
	.container .line .box{
		width:300px;
		height:30px;
		border-width:medium;
		font-size:20px
	}
	.container .line{
		padding:10px;
	}
	.btn{		
		width:180px;
		height:40px;
		background:#27a327;
		cursor:pointer;
		outline:none;
		font-size:20px;
		color:white;
		border-radius:5px;
		margin-bottom:10px;
	}
	.btn:hover{
		opacity:.7;
	}
	
	.container:hover{
		box-shadow:0 5px 28px 0 rgba(69,90,100,.6);
	}
</style>
</head>
<body>
	<div class="container">
	<form method="post" action="registration" class="login" id="login">
		<h1 style="margin-top:20px;">Registration</h1>
		<div class="line">
			<h2>Name</h2>
			<input type="text" required class="box" name="name" id="name" placeholder=" Enter your name here "/>
		</div>
		<div class="line">
			<h2>Age</h2>
			<input type="number" required class="box" name="age" id="age" placeholder="Enter your age here "/>
		</div>
		<div class="line">
			<h2>City</h2>
			<input type="text" required class="box" name="city" id="city" placeholder="Enter our city here"/>
		</div>
		<div class="line">
			<h2>Mobile</h2>
			<input type="number" required class="box" name="mobile" id="mobile" placeholder="Enter your number here"/>
		</div>
		<div class="line">
			<input type="submit" class="btn" style=""value="Register"> 
		</div>
	</form>
	</div>
</body>
</html>
