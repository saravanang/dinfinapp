<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seyon Financial Service - Customer Information</title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/customerinfo.css" />
<link rel="stylesheet" type="text/css" href="css/index.0034.css" />
<link rel="stylesheet" type="text/css" href="css/adminindex.0034.css" />
</head>
<body>
	<div id="container">
		<div id="header">
			<div class="holder">
				<!--  <a class="logo-img" href="../"><img alt="Seyon Financial Service" src="img/dinapp-logo.jpg" border="0" /></a> -->
				<ul id="header-top" class="header-top-nav">
					<li>Emp ID:</li>
					<li>Emp Name:</li>
					<li>Last Logged:<li>
				</ul>
				<ul id="menu-top" class="menu">
					<li class="section"><a href="../customer.jsp">Customer</a></li>	
					<li class="link"><a href="/">Employee</a></li>	
					<li class="link"><a href="/signup/">Admin</a></li>	
					<li class="link"><a href="/customers/">Reports</a></li>	
					<li class="link"><a href="/buzz/">Help</a></li>					
				</ul>
			</div>
		</div>
	</div>
	<div id="body-header">
		<div id="container">
				<label id="page-header">Add Customer Information</label>
		</div>
		<form id="entry_form" class="wufoo topLabel " novalidate="" target="submit_form_here" action="/entries/customer-information/submit/" method="post" enctype="multipart/form-data" autocomplete="off" onsubmit="submitForm(this);">
		<ul>
			<li id="foli26" class="name notranslate name     ">
				<label class="desc" id="title26" for="Field26">Name</label>
				<span>
					<input id="Field26" name="Field26" class="field text" value="" size="2" tabindex="29" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
					<label for="Field26">Title</label>
				</span>
				<span>
					<input id="Field27" name="Field27" class="field text fn" value="" size="8" tabindex="30" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
					<label for="Field27">First</label>
				</span>
				<span>
					<input id="Field28" name="Field28" class="field text ln" value="" size="12" tabindex="31" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
					<label for="Field28">Last</label>
				</span>
				<span>
					<input id="Field29" name="Field29" class="field text" value="" size="3" tabindex="32" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
					<label for="Field29">Suffix</label>
				</span>
			</li>
		</ul>
		
		</form>	
	</div>
</body>
</html>