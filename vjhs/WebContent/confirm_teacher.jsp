<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html 5>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Registration</title>

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
						<label>Review and Confirm Teacher Details</label>
					</div>
						<fmt:bundle basename="com.vjhs.labels.label">
							<c:if test="${sessionScope.teacher!=null}">
							<label class="confirm_left"><fmt:message
									key="EMPLOYEE_ID"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.employeeId }"></c:out> </label>
							<br>

							<label class="confirm_left"><fmt:message
									key="NAME_OF_TEACHER"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.teacherName }"></c:out> </label>
							<br>

							<label class="confirm_left"><fmt:message
									key="TEACHER_FATHER_NAME"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.fatherOrHusbundName}"></c:out> </label>
							<br>




							<label class="confirm_left"><fmt:message key="RELIGION"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.religion}"></c:out> </label>
							<br>

							<label class="confirm_left"><fmt:message key="CASTE"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.caste}"></c:out> </label>
							<br>


							<label class="confirm_left"><fmt:message key="GENDER"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.gender}"></c:out> </label>
							<br>

							<label class="confirm_left"><fmt:message
									key="MARITAL_STATUS"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.maritalStatus }"></c:out> </label>
							<br>

							<label class="confirm_left"><fmt:message key="DOB"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.dateOfBirth }"></c:out> </label>
							<br>
							<label class="confirm_left"><fmt:message
									key="DATE_OF_JOINING"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.dateOfJoining }"></c:out> </label>
							<br>

							<label class="confirm_left"><fmt:message key="ADDRESS"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.addresss }"></c:out> </label>
							<br>

							<label class="confirm_left"><fmt:message key="CITY"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.city }"></c:out> </label>
							<br>

							<label class="confirm_left"><fmt:message key="STATE"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.state }"></c:out> </label>
							<br>


							<label class="confirm_left"><fmt:message
									key="NATIONALITY"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.nationality }"></c:out> </label>
							<br>

							<label class="confirm_left"><fmt:message key="PHONE_NO"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.phone }"></c:out> </label>
							<br>

							<label class="confirm_left"><fmt:message
									key="QUALIFICATION"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.qualification }"></c:out> </label>
							<br>

							<label class="confirm_left"><fmt:message key="EXPERIENCE"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.experiance }"></c:out> </label>
							<br>

							<label class="confirm_left"><fmt:message key="SUBJECTS"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.subjects }"></c:out> </label>
							<br>

							<label class="confirm_left"><fmt:message key="CLASSES"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.classes }"></c:out> </label>
							<br>


							<label class="confirm_left"><fmt:message
									key="CLASS_TEACHER"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.class_teacher }"></c:out> </label>
							<br>

							<label class="confirm_left"><fmt:message
									key="DESIGNATION"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.designation }"></c:out> </label>
							<br>


							<label class="confirm_left"><fmt:message key="LOGIN_ID"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.user_id }"></c:out> </label>
							<br>

							<label class="confirm_left"><fmt:message key="PASSWORD"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out value="${sessionScope.teacher.password }"></c:out> </label>
							<br>
							<label class="confirm_left">&nbsp;</label>
							<label class="confim_button"> <input type="button"
								id="confirm_teacher" name="confirm_button" value="Confirm">
								&nbsp;&nbsp; <input type="button" id="print" name="print"
								value="Print"> &nbsp;&nbsp; <input type="button"
								id="modify_teacher" name="modigy" value="Modify">
							</label>
							</c:if>
						</fmt:bundle>
				</div>
			</div>
		</div>
		<div class="footer">
			<c:import url="adminfooter.jsp"></c:import>
		</div>
	</div>

</body>
</html>