<%@ page contentType="text/html" language="java" %>
<html>
<head>
<title>Identity Provider</title>
<meta charset="utf-8" />
<style>
	#loader {
	  position: absolute;
	  left: 50%;
	  top: 50%;
	  z-index: 1;
	  width: 120px;
	  height: 120px;
	  margin: -76px 0 0 -76px;
	  border: 16px solid #f3f3f3;
	  border-radius: 50%;
	  border-top: 16px solid #3498db;
	  -webkit-animation: spin 2s linear infinite;
	  animation: spin 2s linear infinite;
	}

	@-webkit-keyframes spin {
	  0% { -webkit-transform: rotate(0deg); }
	  100% { -webkit-transform: rotate(360deg); }
	}

	@keyframes spin {
	  0% { transform: rotate(0deg); }
	  100% { transform: rotate(360deg); }
	}

	/* Add animation to "page content" */
	.animate-bottom {
	  position: relative;
	  -webkit-animation-name: animatebottom;
	  -webkit-animation-duration: 1s;
	  animation-name: animatebottom;
	  animation-duration: 1s
	}

	@-webkit-keyframes animatebottom {
	  from { bottom:-100px; opacity:0 } 
	  to { bottom:0px; opacity:1 }
	}

	@keyframes animatebottom { 
	  from{ bottom:-100px; opacity:0 } 
	  to{ bottom:0; opacity:1 }
	}

	#myDiv {
	  display: none;
	  text-align: center;
	}
</style>
<script>
function load(){
	var xmlhttp;
    if (window.XMLHttpRequest){
        xmlhttp = new XMLHttpRequest();
    }else{
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    }
	xmlhttp.responseType = 'json';
    xmlhttp.open("POST", "LoadReq", true);
    xmlhttp.onreadystatechange = function(){
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200){
            var data = xmlhttp.response;
			console.log(data.req);
			Req = document.getElementById("req");
			pr = document.createElement('h2');
			pr.innerHTML = "<input type=\"hidden\" name=\"SAMLRequest\" value=\""+data.req+"\"/>";
			Req.appendChild(pr);
        }
    }
    xmlhttp.send(null);
	setTimeout('redir()',1000);
}
function redir(){
	document.forms["redirect"].submit();
}
</script>
</head>
<body onload="load()">				
		<div id="loader"></div>
		<form id="redirect" action="http://192.168.10.236:8080/IdentityProvider/SSO" method="post">
			<span id="req"></span>
		</form>
    </body>
</html>