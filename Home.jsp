<%@ page contentType="text/html" language="java" %>
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
		background-image: url('https://amritahospitals.org/wp-content/uploads/2022/09/amritahospital-fbd-scaled.jpg');
		background-size:100% 100%;
		display:flex;
	}
	.container{
		text-align:center;
		margin:auto;
		width:500px;
		max-width:50%;
		background:linear-gradient(to right,#1F5EF9,#01dbdf);
		justify-content: space-between;
		border-radius:15px;
		letter-spacing;10px;
		box-shadow:0 5px 30px 0 rgba(80,90,100,1);
	}
	.container img{
		margin:auto;
		padding:30px;
		max-width:50%;
		max-height:50%;
	}
	.container .h1{
		margin:auto;
		
	}
</style>
</head>
<body>
	<%
		session.invalidate();
	%>
	
	<div class="container">
		<a href = "http://localhost:8080/HospitalManagement/Patient/details" style = "text-decoration:none;">
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsWt2XeIGE7TNYpGNCdR_DsEfsF1kDtWIpsw&usqp=CAU">
			<h1>Patient Login</h1>
		</a>
	</div>
	<div class="container">
		<a href = "http://localhost:8080/HospitalManagement/Doctor/details" style = "text-decoration:none;">
			<img src="https://cdn-icons-png.flaticon.com/512/3774/3774293.png">
			<h1>Doctor Login</h1>
		</a>
	</div>
	<div class="container">
		<a href = "http://localhost:8080/HospitalManagement/Admin/details" style = "text-decoration:none;">
			<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKtGLM6eCoa6bmxVx3t3zUBJNEEgzePBcRzg&usqp=CAU">
			<h1>Admin Login</h1>
		</a>
	</div>
</body>
</html>
