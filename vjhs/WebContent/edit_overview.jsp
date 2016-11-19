<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Overview</title>

<script type="text/javascript" src="js_files/ie-emulation-modes-warning.js"></script>
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery-ui.js"></script>
<script type="text/javascript" src="js_files/jquery.validate.js"></script>
<script type="text/javascript" src="js_files/register.js"></script>

<link rel="stylesheet" type="text/css" href="css_files/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css_files/carousel.css">
<link rel="stylesheet" type="text/css" href="css_files/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css_files/forms.css">


</head>
<body>
	<div class="container">
		<div class="header">
			<c:import url="adminheader.jsp"></c:import>
		</div>
		<div class="body_content" style="width: 1170px;">
			<div class="viewMiddleClTT">
				<div class="viewFull">
					<div class="headBar">
						<label>Overview</label>
					</div>

					<form action="updOverview.profile" method="post" id="overviewForm"
						name="overviewForm">
						<fmt:bundle basename="com.vjhs.labels.label">

							<label class="formleft"><fmt:message key="SCHOOL_NAME"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="school_name" id="school_name"
								maxlength="100" required class="formright"
								placeholder="Enter School name" value='<c:out value="${overview.schoolName }"></c:out>' />
							<br>

							<label class="formleft"><fmt:message key="HEADQUARTERS"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="headquarter" id="headquarter"
								maxlength="30" required class="formright"
								placeholder="Enter Headquarters" value='<c:out value="${overview.headquarters }"></c:out>' />
							<br>

							<label class="formleft"><fmt:message key="BRANCHES"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="branches" class="txt" id="branches"
								onkeypress="return allowletters(event)" maxlength="40" required
								class="formright" placeholder="Enter Branches" value='<c:out value="${overview.branches }"></c:out>' />
							<br>

							<label class="formleft"><fmt:message key="CITY"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="city" id="city" class="txt"
								maxlength="30" required class="formright"
								placeholder="Enter City name" value='<c:out value="${overview.city }"></c:out>' />
							<br>

							<label class="formleft"><fmt:message key="DISTRICT"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="district" id="district" class="txt"
								maxlength="30" required class="formright"
								placeholder="Enter District name" value='<c:out value="${overview.district }"></c:out>' />
							<br>

							<label class="formleft"><fmt:message key="STATE"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="state" id="state" class="txt"
								maxlength="30" required class="formright"
								placeholder="Enter State name" value='<c:out value="${overview.state }"></c:out>' />
							<br>

							<label class="formleft"><fmt:message key="PHONE_NO"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="tel" name="phone" id="phone" maxlength="10"
								onkeypress="return allownumber(event)" required
								class="formright" placeholder="Enter Phone number" value='<c:out value="${overview.phoneNo }"></c:out>' />
							<br>

							<label class="formleft"><fmt:message key="MOBILE_NO"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="tel" name="mobile" id="mobile" maxlength="10"
								onkeypress="return allownumber(event)" required
								class="formright" placeholder="Enter Mobile number" value='<c:out value="${overview.mobileNo }"></c:out>' />
							<br>

							<label class="formleft"><fmt:message key="EMAIL"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="email" name="email" id="email" maxlength="100"
								required class="formright" placeholder="Enter email id" value='<c:out value="${overview.email }"></c:out>' />
							<br>

							<label class="formleft"><fmt:message key="STUDENTS"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="number" name="students" id="students" required
								class="formright" min="0" readonly="readonly" value='<c:out value="${overview.noOfStudents }"></c:out>' />
							<br>

							<label class="formleft"><fmt:message key="TEACHERS"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="number" name="teachers" id="teachers" required
								class="formright" min="0" readonly="readonly" value='<c:out value="${overview.noOfStudents }"></c:out>' />
							<br>

							<label class="formleft"><fmt:message key="START_YEAR"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="start_year" id="start_year"
								maxlength="4" required class="formright"
								placeholder="Enter Start year" value='<c:out value="${overview.startYear }"></c:out>'/>
							<br>
							<br />
							<label class="formleft">&nbsp;</label>
							<input type="submit" id="update" value="Update" />&nbsp;<input
								type="button" id="cancelOverveiwEdit" value="Cancel">
						</fmt:bundle>
					</form>
				</div>
			</div>
		</div>
		<div class="footer">
			<c:import url="adminfooter.jsp"></c:import>
		</div>
	</div>
</body>
</html>