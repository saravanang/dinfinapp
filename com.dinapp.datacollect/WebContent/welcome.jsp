<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seyon Financial Service - Welcome</title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
</head>
<body>
	<div id="container">
		<div id="header">
			<div class="holder">
				<span>
					<a class="logo-img" title="Seyon Finacial Service" href="./"><img alt="Seyon Financial Service" src="img/din-appopti.jpg"></img></a>
				</span>
				<p align="right"><b> <font color="#B6B6B6">Corporate Office:</b> No. 10 Annai Illam 1st Floor, V.P.K Street, Perungudi, Chennai-600096
						<b>Corp. Branch Name:</b>CHNMAIN  <b>Corp. Branch Code: </b>001<br>   						
						<b>Corp. Phone Number:</b>+91-44-22222222,+91-44-22222222 (Customer Line)</font>
				</p>						
				<li><h1 class="comtitleh1">Financial Service</h1></li>										
				<ul id="header-top" class="header-top-nav-right">
					<!-- li>Emp ID:<c:out value="${logindetails.li_userid}"/></li>	
					<li>Emp Name:<c:out value="${empdetails.ei_fname} ${empdetails.ei_mname} ${empdetails.ei_lname}"/></li-->
					<li>Emp ID: <label><%= session.getAttribute("userid") %></label></li>
					<li>Emp Name: <label><%= session.getAttribute("username") %></label></li>
					<li>Last Logged: <label><%= session.getAttribute("lstlogin") %></label><li>
					<li>Role:</li>
					<li><a href="employee.jsp"><label>View/Edit</label></a></li>					
				</ul>
				<ul id="menu-top" class="menu">
					<li class="section"><a href="customer.jsp">Customer</a></li>	
					<li class="link"><a href="employee.jsp">Employee</a></li>	
					<li class="link"><a href="admin.jsp">Admin</a></li>	
					<li class="link"><a href="reports.jsp">Reports</a></li>	
					<li class="link"><a href="logout">Sign Out</a></li>					
				</ul>
			</div>
		</div>
	</div>
</body>
</html>