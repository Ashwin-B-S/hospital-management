<%@ page import="io.jsonwebtoken.*,javax.security.auth.Subject" contentType="text/html" language="java" %>
<html>
<head>
<script type="text/javascript" src="JavaScript/Patient.js"></script>
<title>Hospital Management</title>
<link rel="stylesheet" href="CSS/Patient.css">
</head>
<body onload="PatitentRecord(<%=id%>)" onload="encrypt()">
	<%!String id;%>
	<%id=(String)session.getAttribute("id");%>
	<div class="head" >
		<a href="http://localhost:8080/HospitalManagement/Home.jsp" style="text-decoration: none;">Log out</a>
	</div>
	
	<div class="back">
		<div class = "report" id="PatRec">
		</div>
		
		<div class = "doctor" id="DocInfo">
		</div>
	</div>
	
	<div class="tail">
		<div class="reqbox" id = "Req">
		</div>
	</div>
	
	<div class="tail">
		<div class="device" id = "trust">
		</div>
	</div>
	
	<div class="chatroom" >
		<div id="content"></div>
			<div class = "text" id="list">	
				<input type="text" id="h" class="box" placeholder="type your message here" />
				<input type="button" name = "10" value="send" class ="btn" onclick="sendText()" />
			</div>
		</div>
	</div>
	
</body>
</html>
