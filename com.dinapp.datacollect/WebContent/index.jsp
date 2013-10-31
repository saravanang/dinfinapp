<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seyon Financial Service - Login</title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
</head>
<body>
<% if (session.getAttribute("userid") == null) { %>
<div id="header" class="clearfix">	
	<div id="header-container">		
		<span class="holder">
			<a class="logo-img" title="Seyon Financial Service" href="../"><img alt="Seyon Financial Service" src="img/din-appopti.jpg"></img></a>			
		</span>
		<p align="right"><b> <font color="#B6B6B6">Corporate Office:</b> No. 10 Annai Illam 1st Floor, V.P.K Street, Perungudi, Chennai-600096
			<b>Corp. Branch Name:</b>CHNMAIN  <b>Corp. Branch Code: </b>001<br>   						
			<b>Corp. Phone Number:</b>+91-44-22222222,+91-44-22222222 (Customer Line)</font>
		</p>
		<li><h1 class="comtitleh1">Financial Service</h1></li>			 
	</div>
</div>
<div id="body-header">
	<div id="container">
		<div class="loginbox">
			<h5>Employee Login</h5>
			<form action="welcome" method="post">
				<div id="body">	
					<div id="login-form">
						<table align="center">
							<tr>
								<td><label>Emp. ID:</label></td>
								<td><input class="field text fn" type="text" id="userID" name="userID" size="25" maxlength="6"></td>
							</tr>
							<tr>
								<td><label>Password:</label></td>
								<td><input class="field text fn" type="password" id="usrpasswd" name="usrpasswd" size="25" maxlength="15"></td>
							</tr>
							<tr>
								<td colspan="2" align="right"><input type="submit" name="login" id="login" value="Login"></td>
							</tr>							
						</table>
					</div>					
				</div>
			</form>			
		</div>
		<div id="error-login">
		   	<c:if test="${error != null}">
		   		${error}
			<c:set var="error" scope="request" value="${null}"/>
			</c:if>			
		</div>		
	</div>
</div>
<% } else { out.println("session valid");%>
<jsp:forward page="welcome.jsp"></jsp:forward>
<% } %>
</body>
</html>