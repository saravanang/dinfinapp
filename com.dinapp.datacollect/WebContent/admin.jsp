<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seyon Financial Service - Admin</title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
</head>
<body>
<body>
<body>
<% if (session.getAttribute("userid") != null) { %>
	<jsp:include page="welcome.jsp"></jsp:include>
	<div id="body-header">
		<div id="container">
				<label id="page-header">Under Contruction !!!</label>
		</div>
<%} else { %>
<jsp:forward page="index.jsp"></jsp:forward>
<%} %>	
</body>
</body>
</html>