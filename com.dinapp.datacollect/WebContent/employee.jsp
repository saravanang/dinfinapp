<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seyon Financial Service - Add Employee Info</title>
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/customerinfo.css" />
<script type="text/javascript" src="scripts/dinfinapp.js"> </script>
	
</head>
<body>
<body>
<% if (session.getAttribute("userid") != null) { %>
	<jsp:include page="welcome.jsp"></jsp:include>
	<div id="body-header">
		<div id="container">
				<label id="page-header">Add Employee Information</label>						
		</div>
		<!-- <form id="entry_form" class="form-label topLabel " target="submit_form_here" action="addEmployee" method="post" enctype="multipart/form-data" onsubmit="submitForm(this);"> -->
		<form id="entry_form" class="form-label topLabel " action="addEmployee" method="post" onsubmit="submitForm(this);"> 
			<ul>
				<li class="buttons">
						<div>
	                    	<input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Create Employee"/>
	                    </div>
				</li>
				<fieldset class="marginleft">
					<legend class="desc font">Personal Details</legend>
					<li id="frmEName" class="name notranslate name">
						<span>
							<label class="desc" id="lblEName" for="fldEName">Employee</label>
							<select id="select" class="field select fn" name="fldENseltitle"> 
								<option value=""></option>
								<option value="MR">Mr.</option>
								<option value="MS">Ms.</option>
								<option value="MRS">Mrs.</option>
							</select>
								<label for="lblENtitle">Title</label>
						</span>
						<span>
							<label class="desc" id="lblEName" for="fldEName">Name</label>
							<input id="fldENfirst" name="fldENfirst" class="field text fn" value="" size="45" tabindex="1" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
							<label for="lblENfirst">First</label>
						</span>
						<span>
							<br><input id="fldENlast" name="fldENlast" class="field text ln" value="" size="45" tabindex="2" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
							<label for="lblENlast">Last</label>
						</span>
						<span>
							<br><input id="fldENmiddle" name="fldENmiddle" class="field text" value="" size="10" tabindex="3" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
							<label for="lblENmiddle">Middle</label>
						</span>
						<span class="sep">
							<label class="desc" id="lblBdate" for="fldBdate">Birth</label>
							<input id="fldBDday" name="fldBDday" type="text" class="field text" value="" size="2" maxlength="2"	tabindex="5" onkeyup="handleInput(this);" onchange="handleInput(this);"/>
							<label for="lblBDday">DD</label>
						</span>
						<span class="symbol"><br>/</span>
						<span>
							<label class="desc" id="lblBdate" for="fldBdate">Date</label>
							<input id="fldBDmon" name="fldBDmon" type="text" class="field text" value="" size="2" maxlength="2" tabindex="6" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblBDmon">MM</label>
						</span>
						<span class="symbol"><br>/</span>
						<span>
						 	<br><input id="fldBDyr" name="fldBDyr" type="text" class="field text" value="" size="4" maxlength="4" tabindex="7" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="fldBDyr">YYYY</label>
						</span>
						<span id="cal18">
							<br><img id="pick18" class="datepicker" src="/images/icons/calendar.png" alt="Pick." />
						</span>
						<span class="sep">
							<label class="desc" id="lblGender" for="fldGender">Gender</label>
							<input id="fldGM" name="fldG" type="radio" class="field text" value="" tabindex="7" onkeyup="handleInput(this);" onchange="handleInput(this);" />  M
						</span>
						<span>
							<br><input id="fldGF" name="fldG" type="radio" class="field text" tabindex="7" onkeyup="handleInput(this);" onchange="handleInput(this);" />  F
						</span>					
						<span class="sep">
							<label class="desc" id="lblMstatus" for="fldMstatus">Martial Status</label>						
							<input id="fldMSs" name="fldMS" type="radio" class="field text" value="" onkeyup="handleInput(this);" onchange="handleInput(this);" />  Single
							<input id="fldMSm" name="fldMS" type="radio" class="field text" value="" onkeyup="handleInput(this);" onchange="handleInput(this);" />  Married							
						</span>		
					</li>	
					<li id="frmFSName" class="name notranslate name">						 
						<span>
							<label class="desc" id="lblEFSName" for="fldEFSName">Father's / </label>
							<select id="select" class="field select fn" name="fldEFSseltitle"> 
							<option value=""></option>
							<option value="MR">Mr.</option>
							<option value="MS">Ms.</option>
							<option value="MRS">Mrs.</option>
						</select>
							<label for="lblEFSNtitle">Title</label>
						</span>
						<span>
							<label class="desc" id="lblFSName" for="fldEFSName">Spouse Name</label>
							<input id="fldEFSNfirst" name="fldFSNfirst" class="field text fn" value="" size="45" tabindex="30" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
							<label for="lblEFSNfirst">First</label>
						</span>
						<span>
							<br><input id="fldEFSNlast" name="fldEFSNlast" class="field text ln" value="" size="45" tabindex="31" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
							<label for="lblEFSNlast">Last</label>
						</span>
						<span>
							<br><input id="fldEFSNmiddle" name="fldEFSNmiddle" class="field text" value="" size="10" tabindex="32" onkeyup="handleInput(this);" onchange="handleInput(this);" type="text">
							<label for="lblEFSNmiddle">Middle</label>
						</span>
						<span class="sep">
							<label class="desc" id="lblNDep" for="fldNDep">No. Of Dependents</label>
							<input id="fldNDepno" name="fldNDepno" type="text" class="field text" value="" size="2" maxlength="2" onkeyup="handleInput(this);" onchange="handleInput(this);" />						
						</span>	
						
						<span class="sep">
							<label class="desc" id="lblReli" for="fldReli">Religion</label>
							<input id="fldReliD" name="fldReliD" type="text" class="field text" value="" size="10" maxlength="10" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblReliN">Name</label>							
						</span>									
						<span>
							<br>
							<input id="fldReliDSC" name="fldReliDSC" type="checkbox" class="field text" value="" onkeyup="handleInput(this);" onchange="handleInput(this);" /> SC
							<input id="fldReliDST" name="fldReliDST" type="checkbox" class="field text" value="" onkeyup="handleInput(this);" onchange="handleInput(this);" /> ST
							<input id="fldReliDOBC" name="fldReliDOBC" type="checkbox" class="field text" value="" onkeyup="handleInput(this);" onchange="handleInput(this);" /> OBC
							<input id="fldReliDOT" name="fldReliDOT" type="checkbox" class="field text" value="" onkeyup="handleInput(this);" onchange="handleInput(this);" /> Others
						</span>									
					</li>
				</fieldset>
				<fieldset class="marginleft">
					<legend class="desc font">Education Details</legend>
					<li id="frmEEduDet" class="name notranslate name">
						<span>
							<label class="desc" id="lblEduDet" for="fldEduDet">Education</label>
							<select id="fldEduDet" name="fldEduDet" class="field select" onkeyup="handleInput(this);" onchange="handleInput(this);">
								<option selected value="">Select</option>
								<option value="UG">Under Gradutate</option>
								<option value="G">Graduate</option>
								<option value="PG">Post Graduate</option>
								<option value="OT">Others</option>
							</select>
							<label for="lblEDQual">Degree</label>								
						</span>
						<span>
							<label class="desc" id="lblEduQual" for="fldEduQual">Qualification</label>
							<input id="fldEduQual" name="fldEduQual" type="text" class="field text" value="" size="30" maxlength="30" onkeyup="handleInput(this);" onchange="handleInput(this);" />
						</span>	
					</li>					
				</fieldset>
				<fieldset class="marginleft">
					<legend class="desc font">Address Details</legend>
					<li id="frmEAddrP" class="name notranslate name">
						<span>
							<label class="desc" id="lblEAType" for="fldEAType">Current</label>
							<select id="select" class="field select fn" name="fldEAType"> 
								<option selected="selected" value="CURR">Current</option>								
							</select>
								<label for="lblEAType">Type</label>
						</span>
						<span>							
							<label class="desc" id="lblEAType" for="fldEAType">Address</label>
							<input id="fldEAddr1P" name="fldEAddr1P" type="text" class="field text" value="" size="50" maxlength="50" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblEAddr1PN">Address 1</label>
						</span>
						<span>
							<br><input id="fldEAddr2P" name="fldEAddr2P" type="text" class="field text" value="" size="50" maxlength="50" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblEAddr2PN">Address 2</label>
						</span>
						<span>
							<br><input id="flEAreaP" name="fldEAreaP" type="text" class="field text" value="" size="30" maxlength="30" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblEAreaP">Area</label>
						</span>
						<span>
							<br><input id="fldECityP" name="fldECityP" type="text" class="field text" value="" size="30" maxlength="30" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblECityP">City</label>
						</span>
						<li>
							<span>
								<select id="select" class="field select fn" name="fldEStateP">
									<option selected="selected" value="">-----  Select  -----</option>
									<option value="IN029">ANDAMAN AND NICOBAR ISLANDS</option>
									<option value="IN001">ANDHRA PRADESH</option>
									<option value="IN002">ARUNACHAL PRADESH</option>
									<option value="IN003">ASSAM</option>
									<option value="IN004">BIHAR</option>
									<option value="IN030">CHANDIGARH</option>
									<option value="IN005">CHATTISGARH</option>
									<option value="IN031">DADRA AND NAGAR HAVELI</option>
									<option value="IN032">DAMAN AND DIU</option>
									<option value="IN034">DELHI</option>
									<option value="IN006">GOA</option>
									<option value="IN007">GUJARAT</option>
									<option value="IN008">HARYANA</option>
									<option value="IN009">HIMACHAL PRADESH</option>
									<option value="IN010">JAMMU AND KASHMIR</option>
									<option value="IN011">JHARKHAND</option>
									<option value="IN012">KARNATAKA</option>
									<option value="IN013">KERALA</option>
									<option value="IN033">LAKSHADWEEP</option>
									<option value="IN014">MADHYA PRADESH</option>
									<option value="IN015">MAHARASHTRA</option>
									<option value="IN016">MANIPUR</option>
									<option value="IN017">MEGHALAYA</option>
									<option value="IN018">MIZORAM</option>
									<option value="IN019">NAGALAND</option>
									<option value="IN020">ORISSA</option>
									<option value="IN035">PONDICHERRY</option>
									<option value="IN021">PUNJAB</option>
									<option value="IN022">RAJASTHAN</option>
									<option value="IN023">SIKKIM</option>
									<option value="IN024">TAMIL NADU</option>
									<option value="IN025">TRIPURA</option>
									<option value="IN026">UTTAR PRADESH</option>
									<option value="IN027">UTTARAKHAND</option>
									<option value="IN028">WEST BENGAL</option>	
								</select>							
								<label for="lblEStatePN">State</label>
							</span>
							<span>
								<input id="fldEPinCP" name="fldEPinCP" type="text" class="field text" value="" size="6" maxlength="6" onkeyup="handleInput(this);" onchange="handleInput(this);" />
								<label for="lblECPN">Pincode</label>
							</span>
						</li>
					</li>
					<li id="frmEAddrP" class="name notranslate name">
						<span>
							<label class="desc" id="lblEAType" for="fldEAType">Permanent</label>
							<select id="select" class="field select fn" name="fldEAType"> 
								<option selected="selected" value="PRM">Perm</option>								
							</select>
								<label for="lblEAType">Type</label>
						</span>
						<span>		
							<label class="desc" id="lblEAType" for="fldEAType">Address</label>					
							<input id="fldEAddr1P" name="fldEAddr1P" type="text" class="field text" value="" size="50" maxlength="50" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblEAddr1PN">Address 1</label>
						</span>
						<span>
							<br><input id="fldEAddr2P" name="fldEAddr2P" type="text" class="field text" value="" size="50" maxlength="50" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblEAddr2PN">Address 2</label>
						</span>
						<span>
							<br><input id="flEAreaP" name="fldEAreaP" type="text" class="field text" value="" size="30" maxlength="30" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblEAreaP">Area</label>
						</span>
						<span>
							<br><input id="fldECityP" name="fldECityP" type="text" class="field text" value="" size="30" maxlength="30" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblECityP">City</label>
						</span>
						<li>
							<span>
								<select id="select" class="field select fn" name="fldEStateP">
									<option selected="selected" value="">-----  Select  -----</option>
									<option value="IN029">ANDAMAN AND NICOBAR ISLANDS</option>
									<option value="IN001">ANDHRA PRADESH</option>
									<option value="IN002">ARUNACHAL PRADESH</option>
									<option value="IN003">ASSAM</option>
									<option value="IN004">BIHAR</option>
									<option value="IN030">CHANDIGARH</option>
									<option value="IN005">CHATTISGARH</option>
									<option value="IN031">DADRA AND NAGAR HAVELI</option>
									<option value="IN032">DAMAN AND DIU</option>
									<option value="IN034">DELHI</option>
									<option value="IN006">GOA</option>
									<option value="IN007">GUJARAT</option>
									<option value="IN008">HARYANA</option>
									<option value="IN009">HIMACHAL PRADESH</option>
									<option value="IN010">JAMMU AND KASHMIR</option>
									<option value="IN011">JHARKHAND</option>
									<option value="IN012">KARNATAKA</option>
									<option value="IN013">KERALA</option>
									<option value="IN033">LAKSHADWEEP</option>
									<option value="IN014">MADHYA PRADESH</option>
									<option value="IN015">MAHARASHTRA</option>
									<option value="IN016">MANIPUR</option>
									<option value="IN017">MEGHALAYA</option>
									<option value="IN018">MIZORAM</option>
									<option value="IN019">NAGALAND</option>
									<option value="IN020">ORISSA</option>
									<option value="IN035">PONDICHERRY</option>
									<option value="IN021">PUNJAB</option>
									<option value="IN022">RAJASTHAN</option>
									<option value="IN023">SIKKIM</option>
									<option value="IN024">TAMIL NADU</option>
									<option value="IN025">TRIPURA</option>
									<option value="IN026">UTTAR PRADESH</option>
									<option value="IN027">UTTARAKHAND</option>
									<option value="IN028">WEST BENGAL</option>	
								</select>							
								<label for="lblEStatePN">State</label>
							</span>
							<span>
								<input id="fldEPinCP" name="fldEPinCP" type="text" class="field text" value="" size="6" maxlength="6" onkeyup="handleInput(this);" onchange="handleInput(this);" />
								<label for="lblECPN">Pincode</label>
							</span>
						</li>
					</li>						
				</fieldset>
				<fieldset class="marginleft">
					<legend class="desc font">Bank Information</legend>
					<li id="frmEName" class="name notranslate name">
						<span>
							<label class="desc" id="lblEBAcNo" for="fldEBAcNo">Bank Account No.</label>
							<input id="fldEBAcNo" name="fldEBAcNo" type="text" class="field text" value="" size="30" maxlength="30" onkeyup="handleInput(this);" onchange="handleInput(this);" />
						</span>
						<span class="sep">
							<label class="desc" id="lblEBAcType" for="fldEBAcType">Account Type</label>
							<select id="select" class="field select fn" name="fldBAcType">
								<option selected="selected" value="">-----  Select  -----</option>
								<option value="CHK">Checking</option>
								<option value="SAV">Savings</option>
							</select>
						</span> 
						<span class="sep">
							<label class="desc" id="lblEBName" for="fldEBName">Bank Name</label>
							<select id="select" class="field select fn" name="fldEBName"> 
								<option selected="selected" value="">-----  Select  -----</option>
								<option value="IND07">ABHYUDAYA CO-OP BANK LTD</option>
								<option value="IND11">ABU DHABI COMMERCIAL BANK</option>
								<option value="IND09">ALLAHABAD BANK</option>
								<option value="IND10">ANDHRA BANK</option>
								<option value="IND12">AXIS BANK</option>
								<option value="IND13">BANK OF AMERICA</option>
								<option value="IND14">BANK OF BAHRAIN AND KUWAIT</option>
								<option value="IND15">BANK OF BARODA</option>
								<option value="IND16">BANK OF CEYLON</option>
								<option value="IND17">BANK OF INDIA</option>
								<option value="IND18">BANK OF MAHARASHTRA</option>
								<option value="IN102">BANK OF TOKYO-MITSUBISHI UFJ LTD</option>
								<option value="IND19">BARCLAYS BANK PLC</option>
								<option value="IND20">BASSEIN CATHOLIC CO-OP BANK LTD</option>
								<option value="IND21">BNP PARIBAS</option>
								<option value="IND22">CANARA BANK</option>
								<option value="IND23">CENTRAL BANK OF INDIA</option>
								<option value="IN103">CHINATRUST COMMERCIAL BANK</option>
								<option value="IND24">CITIBANK NA</option>
								<option value="IND25">CITIZENCREDIT CO-OPERATIVE BANK LTD</option>
								<option value="IND26">CITY UNION BANK LTD</option>
								<option value="IND02">CORPORATION BANK (CORP BANK)</option>
								<option value="IND27">CREDIT AGRICOLE CORP N INVSMNT BANK</option>
								<option value="IND28">DBS BANK LTD</option>
								<option value="IND29">DENA BANK</option>
								<option value="IND30">DEUTSCHE BANK AG</option>
								<option value="IND31">DEVELOPMENT CREDIT BANK LIMITED</option>
								<option value="IND04">DHANLAKSHMI BANK LTD</option>
								<option value="IND32">DICGC</option>
								<option value="IND33">DOMBIVLI NAGARI SAHAKARI BANK LIMITED</option>
								<option value="IND34">FIRSTRAND BANK LIMITED</option>
								<option value="IND35">HDFC BANK LTD</option>
								<option value="IND36">HSBC</option>
								<option value="IND37">ICICI BANK LTD</option>
								<option value="IND38">IDBI BANK LTD</option>
								<option value="IND39">INDIAN BANK</option>
								<option value="IND40">INDIAN OVERSEAS BANK</option>
								<option value="IND06">INDUSIND BANK LTD</option>
								<option value="IND41">ING VYSYA BANK LTD</option>
								<option value="IND42">JANAKALYAN SAHAKARI BANK LTD</option>
								<option value="IND43">JANATA SAHAKARI BANK LTD (PUNE)</option>
								<option value="IND44">JPMORGAN CHASE BANK NA</option>
								<option value="IND45">KAPOLE CO OP BANK</option>
								<option value="IND46">KARNATAKA BANK LTD</option>
								<option value="IND47">KARUR VYSYA BANK</option>
								<option value="IND05">KOTAK MAHINDRA BANK</option>
								<option value="IND48">MAHANAGAR CO-OP BANK LTD</option>
								<option value="IND49">MAHARASHTRA STATE CO OPERATIVE BANK</option>
								<option value="IND50">MASHREQ BANK PSC</option>
								<option value="IND51">MIZUHO CORPORATE BANK LTD</option>
								<option value="IND52">NEW  INDIA CO-OPERATIVE  BANK  LTD</option>
								<option value="IND53">NKGSB CO-OP BANK LTD</option>
								<option value="IND54">NUTAN NAGARIK SAHAKARI BANK LTD</option>
								<option value="IND55">OMAN INTERNATIONAL BANK SAOG</option>
								<option value="IND56">ORIENTAL BANK OF COMMERCE</option>
								<option value="IND57">PARSIK JANATA SAHAKARI BANK LTD</option>
								<option value="IND58">PUNJAB AND MAHARASHTRA CO-OP BANK LTD</option>
								<option value="IND59">PUNJAB AND SIND BANK</option>
								<option value="IND60">PUNJAB NATIONAL BANK</option>
								<option value="IND61">RAJKOT NAGARIK SAHAKARI BANK LTD</option>
								<option value="IND62">RESERVE BANK OF INDIA</option>
								<option value="IND63">SHINHAN BANK</option>
								<option value="IND64">SOCIETE GENERALE</option>
								<option value="IND03">SOUTH INDIAN BANK</option>
								<option value="IND65">STANDARD CHARTERED BANK</option>
								<option value="IND66">STATE BANK OF BIKANER AND JAIPUR</option>
								<option value="IND67">STATE BANK OF HYDERABAD</option>
								<option value="IND68">STATE BANK OF INDIA</option>
								<option value="IND69">STATE BANK OF MAURITIUS LTD</option>
								<option value="IND70">STATE BANK OF MYSORE</option>
								<option value="IND71">STATE BANK OF PATIALA</option>
								<option value="IND72">STATE BANK OF TRAVANCORE</option>
								<option value="IND73">SYNDICATE BANK</option>
								<option value="IND74">TAMILNAD MERCANTILE BANK LTD</option>
								<option value="IND75">THE AHMEDABAD MERCANTILE CO-OPERATIVE BANK LTD</option>
								<option value="IND76">THE BANK OF NOVA SCOTIA</option>
								<option value="IND77">THE BHARAT CO-OPERATIVE BANK (MUMBAI) LTD</option>
								<option value="IND01">THE CATHOLIC SYRIAN BANK (CSB)</option>
								<option value="IND78">THE COSMOS CO-OPERATIVE BANK LTD</option>
								<option value="IND79">THE FEDERAL BANK LTD</option>
								<option value="IND80">THE GREATER BOMBAY CO-OP BANK LTD</option>
								<option value="IND81">THE JAMMU AND KASHMIR BANK LTD</option>
								<option value="IND82">THE KALUPUR COMMERCIAL CO OP BANK LTD</option>
								<option value="IND83">THE KALYAN JANATA SAHAKARI BANK LTD</option>
								<option value="IND84">THE KARAD URBAN CO-OP BANK LTD</option>
								<option value="IN101">THE KARNATAKA STATE CO-OPERATIVE APEX BANK LTD</option>
								<option value="IND85">THE LAKSHMI VILAS BANK LTD</option>
								<option value="IND86">THE MEHSANA URBAN COOPERATIVE BANK LTD</option>
								<option value="IND87">THE NAINITAL BANK LIMITED</option>
								<option value="IN104">THE NASIK MERCHANTS CO-OP BANK LTD</option>
								<option value="IND88">THE RATNAKAR BANK LTD</option>
								<option value="IND89">THE ROYAL BANK OF SCOTLAND NV</option>
								<option value="IND90">THE SARASWAT CO-OPERATIVE BANK LTD</option>
								<option value="IND91">THE SHAMRAO VITHAL CO-OPERATIVE BANK LIMITED</option>
								<option value="IND92">THE SURAT PEOPLES CO-OP BANK LTD</option>
								<option value="IND93">THE TAMILNADU STATE APEX COOPERATIVE BANK LIMITED</option>
								<option value="IND94">THE THANE JANATA SAHAKARI BANK LTD</option>
								<option value="IND95">THE WEST BENGAL STATE COOPERATIVE BANK LTD</option>
								<option value="IND96">UBS AG</option>
								<option value="IND97">UCO BANK</option>
								<option value="IND08">UNION BANK OF INDIA</option>
								<option value="IND98">UNITED BANK OF INDIA</option>
								<option value="IND99">VIJAYA BANK</option>
								<option value="IN100">YES BANK LIMITD</option>
							</select>							
						</span>
						<span class="sep">
							<label class="desc" id="lblEBState" for="fldEBState">Bank State</label>
							<select id="select" class="field select fn" name="fldEBState">
								<option selected="selected" value="">-----  Select  -----</option>
								<option value="IN029">ANDAMAN AND NICOBAR ISLANDS</option>
								<option value="IN001">ANDHRA PRADESH</option>
								<option value="IN002">ARUNACHAL PRADESH</option>
								<option value="IN003">ASSAM</option>
								<option value="IN004">BIHAR</option>
								<option value="IN030">CHANDIGARH</option>
								<option value="IN005">CHATTISGARH</option>
								<option value="IN031">DADRA AND NAGAR HAVELI</option>
								<option value="IN032">DAMAN AND DIU</option>
								<option value="IN034">DELHI</option>
								<option value="IN006">GOA</option>
								<option value="IN007">GUJARAT</option>
								<option value="IN008">HARYANA</option>
								<option value="IN009">HIMACHAL PRADESH</option>
								<option value="IN010">JAMMU AND KASHMIR</option>
								<option value="IN011">JHARKHAND</option>
								<option value="IN012">KARNATAKA</option>
								<option value="IN013">KERALA</option>
								<option value="IN033">LAKSHADWEEP</option>
								<option value="IN014">MADHYA PRADESH</option>
								<option value="IN015">MAHARASHTRA</option>
								<option value="IN016">MANIPUR</option>
								<option value="IN017">MEGHALAYA</option>
								<option value="IN018">MIZORAM</option>
								<option value="IN019">NAGALAND</option>
								<option value="IN020">ORISSA</option>
								<option value="IN035">PONDICHERRY</option>
								<option value="IN021">PUNJAB</option>
								<option value="IN022">RAJASTHAN</option>
								<option value="IN023">SIKKIM</option>
								<option value="IN024">TAMIL NADU</option>
								<option value="IN025">TRIPURA</option>
								<option value="IN026">UTTAR PRADESH</option>
								<option value="IN027">UTTARAKHAND</option>
								<option value="IN028">WEST BENGAL</option>	
							</select>							
						</span>
						<span class="sep">
							<label class="desc" id="lblEBCity" for="fldEBCity">Bank City</label>
							<select id="select" class="field select fn" name="fldEBCity">
							<option selected="selected" value="">-----  Select  -----</option>
								<option value="ND491">ARIYALUR</option>
								<option value="ND492">CHENNAI</option>
								<option value="ND493">COIMBATORE</option>
								<option value="ND494">CUDDALORE</option>
								<option value="ND495">DHARMAPURI</option>
								<option value="ND496">DINDIGUL</option>
								<option value="ND497">ERODE</option>
								<option value="ND498">KANCHIPURAM</option>
								<option value="ND499">KANYAKUMARI</option>
								<option value="ND500">KARUR</option>
								<option value="ND501">KRISHNAGIRI</option>
								<option value="ND502">MADURAI</option>
								<option value="ND503">NAGAPATTINAM</option>
								<option value="ND504">NAMAKKAL</option>
								<option value="ND505">NILGIRIS</option>
								<option value="ND506">PERAMBALUR</option>
								<option value="ND507">PUDUKKOTTAI</option>
								<option value="ND508">RAMANATHAPURAM</option>
								<option value="ND509">SALEM</option>
								<option value="ND510">SIVAGANGA</option>
								<option value="ND511">THANJAVUR</option>
								<option value="ND512">THENI</option>
								<option value="ND513">TIRUCHIRAPPALLI</option>
								<option value="ND514">TIRUNELVELI</option>
								<option value="ND515">TIRUVALLUR</option>
								<option value="ND516">TIRUVANNAMALAI</option>
								<option value="ND517">TIRUVARUR</option>
								<option value="ND518">TUTICORIN</option>
								<option value="ND519">VELLORE</option>
								<option value="ND520">VILLUPURAM</option>
								<option value="ND521">VIRUDHUNAGAR</option>
							</select>							
						</span>
					</li>
					<li>
						<span>
							<label class="desc" id="lblEBArea" for="fldEBArea">Bank Area</label>
							<input id="fldEBBrArea" name="fldEBBrArea" type="text" class="field text" value="" size="30" maxlength="10" onkeyup="handleInput(this);" onchange="handleInput(this);" />							
						</span>
						<span class="sep">
							<label class="desc" id="lblEBIFSC" for="fldEBIFSC">Bank IFSC</label>
							<input id="fldEBIFSC" name="fldEBIFSC" type="text" class="field text" value="" size="30" maxlength="10" onkeyup="handleInput(this);" onchange="handleInput(this);" />							
						</span>	
					</li>
				</fieldset>
				<fieldset class="marginleft">
					<legend class="desc font">Previous Experience</legend>
					<li id="frmEPreCompExp" class="name notranslate name">
						<span>
							<label class="desc" id="lblEPreCompN" for="fldEPreCompN">Company Name</label>
							<input id="fldEPreCompN" name="fldEPreCompN" type="text" class="field text" value="" size="45" maxlength="10" onkeyup="handleInput(this);" onchange="handleInput(this);" />												
						</span>
						<span class="sep">
							<label class="desc" id="lblEPRole" for="fldERole">Role</label>
							<input id="fldERole" name="fldERole" type="text" class="field text" value="" size="20" maxlength="10" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblEPreCompN">Worked As</label>
						</span>
						<span class="sep">
							<label class="desc" id="lblEPYrsExp" for="fldEPYrsExp">Experience</label>
							<input id="fldEPYrsExp" name="fldEPYrsExp" type="text" class="field text" value="" size="2" maxlength="2" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblEYrsExpN">No. of Years</label>						
						</span>	
						<span class="sep">
							<label class="desc" id="lblEPSepK" for="fldEPSepK">Specialist In</label>
							<input id="fldEPSepK" name="fldEPSepK" type="text" class="field text" value="" size="25" maxlength="2" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblEPSepK">Skills</label>						
						</span>
						<span class="sep">
							<label class="desc" id="lblEPFrmDD" for="fldEPFrmDD">From</label>
							<input id="fldEPFrmDD" name="fldEPFrmDD" type="text" class="field text" value="" size="2" maxlength="2"	tabindex="5" onkeyup="handleInput(this);" onchange="handleInput(this);"/>
							<label for="lblEPFrmDD">DD</label>
						</span>
						<span class="symbol"><br>/</span>
						<span>
							<label class="desc" id="lblEPFrmMM" for="fldEPFrmMM">Date</label>
							<input id="fldEPFrmMM" name="fldEPFrmMM" type="text" class="field text" value="" size="2" maxlength="2" tabindex="6" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblEPFrmMM">MM</label>
						</span>
						<span class="symbol"><br>/</span>
						<span>
						 	<br><input id="fldEPFrmYR" name="fldEPFrmYR" type="text" class="field text" value="" size="4" maxlength="4" tabindex="7" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="fldEPFrmYR">YYYY</label>
						</span>
						<span id="cal18">
							<br><img id="pick18" class="datepicker" src="/images/icons/calendar.png" alt="Pick." />
						</span>	
						<span class="sep">
							<label class="desc" id="lblEPToDD" for="fldEPFrmDD">To</label>
							<input id="fldEPToDD" name="fldEPToDD" type="text" class="field text" value="" size="2" maxlength="2"	tabindex="5" onkeyup="handleInput(this);" onchange="handleInput(this);"/>
							<label for="lblEPToDD">DD</label>
						</span>
						<span class="symbol"><br>/</span>
						<span>
							<label class="desc" id="lblEPToMM" for="fldEPToMM">Date</label>
							<input id="fldEPToMM" name="fldEPToMM" type="text" class="field text" value="" size="2" maxlength="2" tabindex="6" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblEPToMM">MM</label>
						</span>
						<span class="symbol"><br>/</span>
						<span>
						 	<br><input id="fldEPToYR" name="fldEPToYR" type="text" class="field text" value="" size="4" maxlength="4" tabindex="7" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="fldEPToYR">YYYY</label>
						</span>
						<span id="cal18">
							<br><img id="pick18" class="datepicker" src="/images/icons/calendar.png" alt="Pick." />
						</span>	
						<span class="sep">
							<label class="desc" id="lblEPSal" for="fldEPSal">Salary</label>
							<input id="fldEPSal" name="fldEPSal" type="text" class="field text" value="" size="10" maxlength="10" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblEPSalN">Per Month</label>
						</span>						
					</li>
					<li id="frmEPreCompAdd" class="name notranslate name">
						<span>
							<label class="desc" id="lblEPComAddr1" for="fldEPComAddr1">Address</label>
							<select id="select" class="field select fn" name="fldEPAType"> 
								<option selected="selected" value="WRK">Work</option>								
							</select>
								<label for="lblEPAType">Type</label>
						</span>
						<span>							
							<br><input id="fldEPComAddr1" name="fldEPComAddr1" type="text" class="field text" value="" size="50" maxlength="50" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblEPComAddr1N">Address 1</label>
						</span>
						<span>
							<br><input id="fldEPComAddr2" name="fldEPComAddr2" type="text" class="field text" value="" size="50" maxlength="50" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblEPComAddr2N">Address 2</label>
						</span>
						<span>
							<br><input id="fldEPComArea" name="fldEPComArea" type="text" class="field text" value="" size="30" maxlength="30" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblEPComAreaN">Area</label>
						</span>
						<span>
							<br><input id="fldEPComCity" name="fldEPComCity" type="text" class="field text" value="" size="30" maxlength="30" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblEPComCityN">City</label>
						</span>
						<li>
							<span>
								<select id="select" class="field select fn" name="fldEPComState">
									<option selected="selected" value="">-----  Select  -----</option>
									<option value="IN029">ANDAMAN AND NICOBAR ISLANDS</option>
									<option value="IN001">ANDHRA PRADESH</option>
									<option value="IN002">ARUNACHAL PRADESH</option>
									<option value="IN003">ASSAM</option>
									<option value="IN004">BIHAR</option>
									<option value="IN030">CHANDIGARH</option>
									<option value="IN005">CHATTISGARH</option>
									<option value="IN031">DADRA AND NAGAR HAVELI</option>
									<option value="IN032">DAMAN AND DIU</option>
									<option value="IN034">DELHI</option>
									<option value="IN006">GOA</option>
									<option value="IN007">GUJARAT</option>
									<option value="IN008">HARYANA</option>
									<option value="IN009">HIMACHAL PRADESH</option>
									<option value="IN010">JAMMU AND KASHMIR</option>
									<option value="IN011">JHARKHAND</option>
									<option value="IN012">KARNATAKA</option>
									<option value="IN013">KERALA</option>
									<option value="IN033">LAKSHADWEEP</option>
									<option value="IN014">MADHYA PRADESH</option>
									<option value="IN015">MAHARASHTRA</option>
									<option value="IN016">MANIPUR</option>
									<option value="IN017">MEGHALAYA</option>
									<option value="IN018">MIZORAM</option>
									<option value="IN019">NAGALAND</option>
									<option value="IN020">ORISSA</option>
									<option value="IN035">PONDICHERRY</option>
									<option value="IN021">PUNJAB</option>
									<option value="IN022">RAJASTHAN</option>
									<option value="IN023">SIKKIM</option>
									<option value="IN024">TAMIL NADU</option>
									<option value="IN025">TRIPURA</option>
									<option value="IN026">UTTAR PRADESH</option>
									<option value="IN027">UTTARAKHAND</option>
									<option value="IN028">WEST BENGAL</option>	
								</select>							
								<label for="lblEPComStateN">State</label>
							</span>
							<span>
								<input id="fldEPComPinC" name="fldEPComPinC" type="text" class="field text" value="" size="6" maxlength="6" onkeyup="handleInput(this);" onchange="handleInput(this);" />
								<label for="lblEPComPinCN">Pincode</label>
							</span>
						</li>
					</li>
				</fieldset>
				<fieldset class="marginleft">
					<legend class="desc font">Official Details</legend>
					<li id="frmEName" class="name notranslate name">
						<span>
							<label class="desc" id="lblERole" for="fldERole">Employee Role </label>
							<select multiple id="select" class="field select fn" name="fldERole"> 
								<option value="MD">Managing Director</option>
								<option value="BPA">Business Partners</option>
								<option value="BOD">Board of Directors</option>
								<option value="CEO">Chief Executive Officer</option>							
								<option value="BMR">Branch Manager</option>
								<option value="SUP">Supervisor</option>
								<option value="EXE">Executive</option>
								<option value="ATT">Attendent</option>
							</select>
						</span>
						<span class="sep">
							<label class="desc" id="lblEBranch" for="fldEBranch">Branch </label>
							<select multiple id="select" class="field select fn" name="fldEBranch">
								<option value="000">All Branches (ALLBRAN)</option>
								<option value="001">Chennai Main (CHNMAIN)</option>
								<option value="002">Chennai Adyar (CHNADYR)</option>
							</select>
						</span>
						<span class="sep">
							<label class="desc" id="lblEStatus" for="fldEStatus">Employee Status </label>
							<select id="select" class="field select fn" name="fldEStatus"> 
								<option value=""></option>
								<option value="A">Active</option>
								<option value="I">In Active</option>
							</select>
						</span >
						<span class="sep">
							<label class="desc" id="lblECLogin" for="fldEECLogin">Create Login ID </label>
							<input id="fldECLogin" name="fldReliDSC" type="checkbox" class="field text" value="" onkeyup="handleInput(this);" onchange="handleInputthis);" />  Yes 
						</span>
						<span class="sep">
							<label class="desc" id="lblELStatus" for="fldELStatus">Login Status </label>
							<select id="select" class="field select fn" name="fldELStatus"> 
								<option value=""></option>
								<option value="A">Active</option>
								<option value="I">In Active</option>
							</select>
						</span>
						<span class="sep">
							<label class="desc" id="lblESal" for="fldESal">Salary</label>
							<input id="fldESal" name="fldESal" type="text" class="field text" value="" size="10" maxlength="10" onkeyup="handleInput(this);" onchange="handleInput(this);" />
							<label for="lblESalN">Per Month</label>
						</span>					
					</li>
				</fieldset>			
				<li class="buttons bot">
						<div>
	                    	<input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Create Employee"/>
	                    </div>
				</li>
			</ul>		
		</form>
	</div>
	<%} else { %>
	<jsp:forward page="index.jsp"></jsp:forward>
	<%} %>
</body>
</html>