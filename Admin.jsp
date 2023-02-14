<%@ page import="java.sql.*,io.jsonwebtoken.*,javax.security.auth.Subject" contentType="text/html" language="java" %>
<html>
<head>
<script type="text/javascript" src="JavaScript/Admin.js"></script>
<title>Hospital Management</title>
<link rel="stylesheet" href="CSS/Admin.css">
</head>
<body onload="AdminData(<%=id%>)">	
	<%!
		String id;
	%>
	<%
		id=(String)session.getAttribute("id");
	%>
	
	<div class = "log">
	<a href="http://localhost:8080/HospitalManagement/Home.jsp">Log Out</a>
	</div>
	
	<div class = "head" id = "greet"></div>
		
	<div class = "back">
		<h1 style="margin-bottom:15px;" >Covid Patients</h1>
		<Span id = "pat"></span>
	</div>
	
	<div class = "back1">
		<h1 style="margin-bottom:15px;" >General Patients</h1>
		<Span id = "gen"></span>
	</div>
		
	<div class="back1">
		<h1 style="margin-bottom:15px;" >Doctors</h1>
		<Span id = "doc"></span>
	</div>
	
	<div class="back1">
		<div class="Covid1">
			<a href="http://localhost:8080/HospitalManagement/AddAdmin.jsp">Add Admin</a>
		</div>
	</div>
	
	<div class="tail" id = "pass">
	</div>
		
</body>
</html>
	