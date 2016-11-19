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
					<div>
						<h4><c:out value="${messageOverview}"></c:out></h4>
					</div>
					<form action="editOverview.profile" method="post" id="overviewForm"
						name="overviewForm">
						<fmt:bundle basename="com.vjhs.labels.label">

							<label class="confirm_left"><fmt:message key="SCHOOL_NAME"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${overview.schoolName }"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message key="HEADQUARTERS"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${overview.headquarters }"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message key="BRANCHES"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${overview.branches }"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message key="CITY"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${overview.city }"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message key="DISTRICT"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${overview.district }"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message key="STATE"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${overview.state }"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message key="PHONE_NO"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${overview.phoneNo }"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message key="MOBILE_NO"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${overview.mobileNo }"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message key="EMAIL"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${overview.email }"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message key="STUDENTS"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${overview.noOfStudents }"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message key="TEACHERS"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${overview.noOfStudents }"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message key="START_YEAR"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${overview.startYear }"></c:out></label>
							<br>
							<br />
							<label class="confirm_left">&nbsp;</label>
							<input type="submit" id="edit" value="Edit" />
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