<%@ page import="java.sql.*,io.jsonwebtoken.*,javax.security.auth.Subject" contentType="text/html" language="java" %>
<html>
<head>
<title>Hospital Management</title>
<script type="text/javascript" src="JavaScript/Doctor.js"></script>
<link rel="stylesheet" href="CSS/Doctor.css">
<link 
</head>
<body onload="DoctorData(<%=id%>)">		
	<div class="logout">
		<a href="http://localhost:8080/HospitalManagement/Home.jsp">Log Out</a>
	</div>
	<%!
		String id;
	%>
		<%
		id=(String)session.getAttribute("id");
		%>
		
		<div class = "head" id = "greet"></div>
		
		<div class = "back">
			<Span id = "title"></span>
			<Span id = "pat"></span>
		</div>
		
		<div class = "back1">
			<Span id = "general"></span>
			<Span id = "gen"></span>
		</div>
		
		<div class="req" id = "req">
			<Span id = "reqtitle"></span>
			<Span id = "availreq"></span>
		</div>
		
		<div class = "head" id = "userpassword"></div>
	
		
	<div class = "chat" id = "uname" >

		<div class = "contact" id = "con">
	
		</div>
		<div class="chatroom" >
			<div id="content"></div>		
			<div class = "text" id="list">	
				<input type = "text" id="h" class="box" placeholder="type your message here" />
				<button class ="btn" onclick="sendText()" >Send</button>
			</div>
		</div>
	</div>
</body>
</html>
	