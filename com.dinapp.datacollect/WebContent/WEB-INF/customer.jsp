<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seyon Financial Service - Customer Information</title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/customerinfo.css" />
</head>
<body>
<% if (session.getAttribute("userid") != null) { %>
	<jsp:include page="welcome.jsp"></jsp:include>
	<div id="body-header">
		<div id="container">
				<label id="page-header">Add Customer Information</label>
		</div>
		<!-- <form id="entry_form" class="form-label topLabel " novalidate="" target="submit_form_here" action="/entries/customer-information/submit/" method="post" enctype="multipart/form-data" autocomplete="off" onsubmit="submitForm(this);">  -->
		<form id="entry_form" class="form-label topLabel " target="submit_form_here" action="/entries/customer-information/submit/" method="post" enctype="multipart/form-data" onsubmit="submitForm(this);">
			<ul>
				<fieldset class="marginleft">
					<legend class="desc font">Personal Details</legend>						
					<li id="frmAName" class="name notranslate name">
						<!--  <div id="section-sep">Personal Details</div> -->
						<span>
							<label class="desc" id="lblAName" for="fldAName">Applicant</label>
							<select id="select" class="field select fn" name="fldANseltitle"> 
								<option value=""></option>
								<option value="MR">Mr.</option>
								<option value="MS">Ms.</option>
								<option value="MRS">Mrs.</option>
							</select>
							<label for="lblANtitle">Title</label>
						</span>
						<span>
							<label class="desc" id="lblAName" for="fldAName">Name</label>
							<input id="fldANfirst" name="fldANfirst" class="field text fn" value="" size="45" tabindex="30" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
							<label for="lblANfirst">First</label>
						</span>
						<span>
							<br><input id="fldANlast" name="fldANlast" class="field text ln" value="" size="45" tabindex="31" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
							<label for="lblANlast">Last</label>
						</span>
						<span>
							<br><input id="fldANmiddle" name="fldANmiddle" class="field text" value="" size="10" tabindex="32" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
							<label for="lblANmiddle">Middle</label>
						</span>
						<span>
							<label class="desc" id="lblPANno" for="fldAName">PAN No.</label>
							<input id="fldPANno" name="fldPANno" class="field text" value="" size="15" tabindex="32" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
							<label for="lblPANNo">PAN Number</label>										
						</span>								
					</li>
					<li id="frmFSName" class="name notranslate name">						 
						<span>
							<label class="desc" id="lblFSName" for="fldFSName">Father's / </label>
							<select id="select" class="field select fn" name="fldFSseltitle"> 
							<option value=""></option>
							<option value="MR">Mr.</option>
							<option value="MS">Ms.</option>
							<option value="MRS">Mrs.</option>
						</select>
							<label for="lblFSNtitle">Title</label>
						</span>
						<span>
							<label class="desc" id="lblFSName" for="fldFSName"> Spouse Name</label>
							<input id="fldFSNfirst" name="fldFSNfirst" class="field text fn" value="" size="45" tabindex="30" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
							<label for="lblFSNfirst">First</label>
						</span>
						<span>
							<br><input id="fldFSNlast" name="fldFSNlast" class="field text ln" value="" size="45" tabindex="31" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
							<label for="lblFSNlast">Last</label>
						</span>
						<span>
							<br><input id="fldFSNmiddle" name="fldFSNmiddle" class="field text" value="" size="10" tabindex="32" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
							<label for="lblFSNmiddle">Middle</label>
						</span>
						<!-- <li id="frmPhone" class="date eurodate notranslate"> -->
					</li>
					<li>				
						<label class="desc" id="lblBdate" for="fldBdate">Birth Date</label>
						<span>
							<input id="fldBDday" name="fldBDday" type="text" class="field text" value="" size="2" maxlength="2"	tabindex="5" onkeyup="handleInput(this);" onchange="handleInput(this);"/>
							<label for="lblBDday">DD</label>
						</span>
						<span class="symbol">/</span>
						<span>
							<input id="fldBDmon" name="fldBDmon" type="text" class="field text" value="" size="2" maxlength="2" tabindex="6" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblBDmon">MM</label>
						</span>
						<span class="symbol">/</span>
						<span>
						 	<input id="fldBDyr" name="fldBDyr" type="text" class="field text" value="" size="4" maxlength="4" tabindex="7" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="fldBDyr">YYYY</label>
						</span>
						<span id="cal18">
							<img id="pick18" class="datepicker" src="/images/icons/calendar.png" alt="Pick a date." />
						</span>
					</li>
					<li>	
						<label class="desc" id="lblGender" for="fldGender">Gender</label>
						<span>
							<input id="fldGM" name="fldGM" type="radio" class="field text" value="" tabindex="7" onkeyup="handleInput(this);" onchange="handleInput(this);" />  M
						</span>
						<span>
							<input id="fldGF" name="fldGF" type="radio" class="field text" tabindex="7" onkeyup="handleInput(this);" onchange="handleInput(this);" />  F
						</span>
					</li>
					<li>	
						<label class="desc" id="lblMstatus" for="fldMstatus">Martial Status</label>
						<span>
							<input id="fldMSs" name="fldMSs" type="radio" class="field text" value="" onkeyup="handleInput(this);" onchange="handleInput(this);" />  Single
							<input id="fldMSm" name="fldMSm" type="radio" class="field text" value="" onkeyup="handleInput(this);" onchange="handleInput(this);" />  Married							
						</span>
					</li>
					<li>	
						<label class="desc" id="lblNDep" for="fldNDep">No. Of Dependents</label>
						<span>
							<input id="fldNDepno" name="fldNDepno" type="text" class="field text" value="" size="2" maxlength="2" onkeyup="handleInput(this);" onchange="handleInput(this);" />						
						</span>
					</li>
					<li id="frmEduDet" class="name notranslate name">
						<label class="desc" id="lblEduDet" for="fldEduDet">Education</label>
						<span>
							<select id="fldEduDet" name="fldEduDet" class="field select" onkeyup="handleInput(this);" onchange="handleInput(this);">
								<option selected value="">Select</option>
								<option value="UG">Under Gradutate</option>
								<option value="G">Graduate</option>
								<option value="PG">Post Graduate</option>
								<option value="OT">Others</option>
							</select>
							<label for="lblEDQual">Qualification</label>
							
						</span>
					</li>
					<li>
						<label class="desc" id="lblReli" for="fldReli">Religion</label>
						<span>
							<input id="fldReliD" name="fldReliD" type="text" class="field text" value="" size="10" maxlength="10" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblReliN">Name</label>							
						</span>									
						<span>
							<input id="fldReliDSC" name="fldReliDSC" type="checkbox" class="field text" value="" onkeyup="handleInput(this);" onchange="handleInput(this);" /> SC
							<input id="fldReliDST" name="fldReliDST" type="checkbox" class="field text" value="" onkeyup="handleInput(this);" onchange="handleInput(this);" /> ST
							<input id="fldReliDOBC" name="fldReliDOBC" type="checkbox" class="field text" value="" onkeyup="handleInput(this);" onchange="handleInput(this);" /> OBC
							<input id="fldReliDOT" name="fldReliDOT" type="checkbox" class="field text" value="" onkeyup="handleInput(this);" onchange="handleInput(this);" /> Others
						</span>	
					</li>
				</fieldset>
				<li id="frmName" class="name notranslate name">
					<div id="section-sep">Address Details</div>
				</li>
				<li id="frmName" class="name notranslate name">
					<div id="section-sep">Occupation Details</div>
				</li>
				<li id="frmName" class="name notranslate name">
					<div id="section-sep">Income and Banking Details</div>
				</li>
				
				<li id="frmComm" class="notranslate">
					<label class="desc" id="lblEmail" for="fldComm">Email</label>
					<div>
						<input id="Field22" name="Field22" type="email" spellcheck="false" class="field text large" value="" maxlength="255" tabindex="12" onkeyup="handleInput(this);" onchange="handleInput(this);" /> 
					</div>
				</li>
				<li id="frmPhone" class="notranslate phone">
					<div id="section-sep">Phone Numbers</div>
					<span>
						<label class="desc" id="lblHphone" for="fldHphone">Home</label>
						<input id="fldHphonec" class="field text" name="fldHphone" tabindex="13" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text" size="3" maxlength="2" value="" />
						<input id="fldHphone" class="field text medium" name="fldHphone" tabindex="13" onkeyup="handleInput(this);" onchange="handleInput(this);" type="tel" maxlength="255" value="" />
						<label for="fldHphone">Code</label>
					</span>
					<span>
						<label class="desc" id="lblMphone" for="fldMphone">Mobile</label>
						<input id="fldMphonec" class="field text" name="fldMphone" tabindex="13" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text" size="3" maxlength="2" value="" />
						<input id="fldMphone" class="field text medium" name="fldMphone" tabindex="13" onkeyup="handleInput(this);" onchange="handleInput(this);" type="tel" maxlength="255" value="" />
						<label for="fldMphone">Code</label>
					</span>
				</li>
			</ul>
		
		</form>	
	</div>
<%} else { %>
<jsp:forward page="index.jsp"></jsp:forward>
<%} %>
</body>
<div id="footer">
	
</div>
</html>