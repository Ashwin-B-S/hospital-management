<%@ page import="java.sql.*,io.jsonwebtoken.*,javax.security.auth.Subject" contentType="text/html" language="java" %>
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
		background-image: url('https://thumbs.dreamstime.com/b/young-male-sysadmin-set-collection-man-working-computer-doing-technical-work-server-support-administration-isolated-156390553.jpg');
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
	<%!
		String id;
	%>
	<%
		if(session.getAttribute("subject")!=null || session.getAttribute("token")!=null){
			String token="";
			if(session.getAttribute("subject")!=null){
				Subject subject = (Subject)session.getAttribute("subject");
				token = subject.getPrincipals().iterator().next().getName();
			}else{
				token = String.valueOf(session.getAttribute("token"));
			}
			try{
				Claims claim = Jwts.parser().setSigningKey("HGSdbbwhsknw17234teg2sbITEU@TZf8duj3029zie2093874hds!@#$%^hbwgue897*J82YHSBN2IHFBD").parseClaimsJws(token).getBody();
				String exptm = String.valueOf(claim.get("exp"));
				id = String.valueOf(claim.get("ID"));
				String type= String.valueOf(claim.get("Type"));
				if(type.equals("patient")){
					response.sendRedirect("PatientDetails.jsp");
				}else if(type.equals("doctor")){
					response.sendRedirect("Doctor.jsp");
				}else if(type.equals("admin")){
					
				}else{
					response.sendRedirect("UserLogin.jsp");
				}
			}catch(Exception e){
				System.out.println(e);
				try{
					response.sendRedirect("UserLogin.jsp");
				}catch(Exception ex){
					System.out.println(ex);
				}
			}
		}else{
			response.sendRedirect("UserLogin.jsp");
		}
	%>	
	<div class="container">
	<form method="post" action="addadmin" class="login" id="login">
		<h1 style="margin-top:20px;">Add Admin</h1>
		<div class="line">
			<h2>Name</h2>
			<input type="text" required class="box" name="name" id="name" placeholder=" Enter name"/>
		</div>
		<div class="line">
			<h2>Age</h2>
			<input type="number" required class="box" name="age" id="age" placeholder="Enter age"/>
		</div>
		<div class="line">
			<h2>City</h2>
			<input type="text" required class="box" name="city" id="city" placeholder="Enter city"/>
		</div>
		<div class="line">
			<h2>Mobile</h2>
			<input type="number" required class="box" name="mobile" id="mobile" placeholder="Enter number"/>
		</div>
		<div class="line">
			<input type="submit" class="btn" value="Add"> 
		</div>
	</form>
	</div>
</body>
</html>
