<%@ page contentType="text/html" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Hospital Management</title>
<script>

function saml(){
(async () => {
	try{
		const device = await navigator.usb.requestDevice({filters: [ {vendorId: 0x05ac}, {vendorId: 0x04e8},{vendorId: 0x22b8},
    {vendorId: 0x0bb4}, {vendorId: 0x1004}, {vendorId: 0x0fce}, {vendorId: 0x18d1}, {vendorId: 0x12d1}, {vendorId: 0x2cB7},
    {vendorId: 0x22D9}, {vendorId: 0x0421} ]});
		if (device !== null) {
			var x = document.getElementById("hidden");
            pr = document.createElement('h2');
			let str = "<input type=\"hidden\" name=\"s_no\" value=\""+device.serialNumber+"\"/>"+
					  "<input type=\"hidden\" name=\"name\" value=\""+device.productName+"\"/>"+
					  "<input type=\"hidden\" name=\"prod_id\" value=\""+device.productId+"\"/>";
			pr.innerHTML = str;
			x.appendChild(pr);
			setTimeout('auth()', 1000);
			//window.location.href = "https://localhost:8443/HospitalManagement/saml?s_no="+device.serialNumber+"&name="+device.productName+"&prod_id="+device.productId;
		}
	}catch(er){
		window.location.href = "http://localhost:8080/HospitalManagement/IDP.jsp";
	}
})();
}

function auth()
    {
      document.forms["device"].submit();
    }
function load(name,pass){
	rec = doc;
	var chat;
    if (window.XMLHttpRequest){
        chat = new XMLHttpRequest();
    }else{
        chat = new ActiveXObject("Microsoft.XMLHTTP");
    }
    chat.open("POST", "j_security_check?j_username="+name+"&j_password="+pass, true);
    chat.onreadystatechange = function(){
        if (chat.readyState == 4 && chat.status == 200){
            document.getElementById("content").innerHTML = chat.responseText;
            olist = document.getElementById('list'); 
            olist.scrollTop = olist.scrollHeight;
        }
    }
    chat.send(null);
}
function Request(){
	console.log("Hello");
    if (window.XMLHttpRequest){
        chat = new XMLHttpRequest();
    }else{
        chat = new ActiveXObject("Microsoft.XMLHTTP");
    }
	console.log(chat);
    chat.open("POST", "192.168.10.236:8080/IdentityProvider/SamlRequest?", true);
    chat.onreadystatechange = function(){
        if (chat.readyState == 4 && chat.status == 200){
            document.getElementById("content").innerHTML = chat.responseText;
            olist = document.getElementById('list'); 
            olist.scrollTop = olist.scrollHeight;
        }
    }
    chat.send(null);
}
</script>
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
		margin:auto;
		width:500px;
		max-width:90%;
		background:linear-gradient(to right,#1F5EF9,#01dbdf);
		justify-content: space-between;
		border-radius:15px;
		letter-spacing;10px;
		box-shadow:0 5px 30px 0 rgba(80,90,100,1);
	}
	.container h1{
		margin-top:20px;
		color:#000080;
		text-align:center;
	}
	.line{
		padding:10px;
		text-align:center;
		margin-bottom:5px;
		background:transparent;
	}
	.line .box{
		padding:5px;
		width:330px;
		border-width: thick;
		border-color:#E56B36;
		font-size:20px;
		font-family:courier;
		text-align:center;
	}
	.line h3{
		margin-bottom:10px;
		color:#E6E6F6;	
		font-size:25px;
	}
	.btn{		
		width:200px;
		height:30px;
		background:linear-gradient(to left,#1F5EF9,#01dbdf);
		cursor:pointer;
		outline:none;
		font-size:20px;
		color:white;	
		border-radius:5px;
		margin-bottom:10px;
		margin-top:10px;
	}
	.btn:hover{
		opacity:.7;
	}
	.create{
		margin-left:10%;
		margin-bottom:20px;
		color:#E6E6F6;		
		font-size:20px;
		cursor:pointer;
	}
	.create a{
		color:#E6E6F6;		
		font-size:20px;
	}
	.create a:hover{
		cursor:pointer;
		color:#ADFF2F;
		opacity:.7;
	}
</style>
</head>
<body>
	<%
	String name=(String)session.getAttribute("username"),pass = (String)session.getAttribute("password");
		if(name!=null){
			out.println("<div onload=\"PatitentRecord(name,pass)\" >");
		}
	%>
	<div class="container">
	<form method="post" action="j_security_check" >
		<h1>Login Here</h1>
		<div class="line">
			<h3>Username</h3>
			<input type="text" class="box" required name="j_username" id="user" placeholder="Enter your username here"/>
		</div>
		<div class="line">
			<h3>Password</h3>
			<input type="password" class="box" required name="j_password" id="password" placeholder="Enter your password here"/>
		</div>
		<div class="line">
			<input type="submit" class="btn" style=""value="Sign in"> 
		</div>
	</form>
	<div class="create">
		<a onclick="saml()" style="text-decoration: none;">SAML</a>
		<a href="http://localhost:8080/HospitalManagement/login.jsp" style="text-decoration: none;margin-left:40%;">Sign in with mobile</a>
	</div>
	</div>
	<form id="device" action="https://localhost:8443/HospitalManagement/saml" method="POST">
		<span id="hidden"></span>
	</form>
</body>
</html>
