<%@ page import="com.vjhs.pojo.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS::Registration</title>

<script type="text/javascript"
	src="js_files/ie-emulation-modes-warning.js"></script>
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery-ui.js"></script>
<script type="text/javascript" src="js_files/jquery.validate.js"></script>
<script type="text/javascript" src="js_files/register.js"></script>

<link rel="stylesheet" type="text/css"
	href="css_files/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css_files/carousel.css">
<link rel="stylesheet" type="text/css" href="css_files/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css_files/forms.css">


</head>
<body>
	<div class="container">
		<div class="header">
			<%@ include file="adminheader.jsp"%>
		</div>
		<div class="body_content" style="width: 1170px;">
			<div class="viewMiddleClTT">
				<div class="viewFull">
					<div class="headBar">
						<label>Confirm Student Admission</label>
					</div>

					<fmt:bundle basename="com.vjhs.labels.label">
						<c:if test="${sessionScope.student!=null}">
							<label class="confirm_left" style="float: left"><fmt:message
									key="PHOTO"></fmt:message></label>
							<b style="float: left">:</b>
							<c:out value="${sessionScope.student.photo}"></c:out>
							<br>
							<br>

							<label class="confirm_left"><fmt:message
									key="ADMISSION_NO"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.admissionNo}"></c:out></label>
							<br>
							<label class="confirm_left"><fmt:message key="DOA"></fmt:message></label>
							<b>:</b>
							<label class="confirm"> <fmt:formatDate type="date"
									value="${sessionScope.student.dateOfAdmission}" />
							</label>
							<br>
							<label class="confirm_left"><fmt:message
									key="NAME_OF_STUDENT"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.studentName}"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message key="DOB"></fmt:message></label>
							<b>:</b>
							<label class="confirm"> <fmt:formatDate type="date"
									value="${sessionScope.student.dateOfBirth}" />
							</label>
							<br>
							<label class="confirm_left"><fmt:message key="GENDER"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.gender}"></c:out></label>
							<br>
							<label class="confirm_left"><fmt:message
									key="NATIONALITY"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.nationality}"></c:out></label>
							<br>
							<label class="confirm_left"><fmt:message key="STATE"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.state}"></c:out></label>
							<br>
							<label class="confirm_left"><fmt:message key="RELIGION"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.religion}"></c:out></label>
							<br>
							<label class="confirm_left"><fmt:message key="CASTE"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.caste}"></c:out></label>
							<br>
							<label class="confirm_left"><fmt:message key="COC"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.coc}"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message
									key="MOTHER_TONGUE"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.motherTongue}"></c:out></label>
							<br>
							<label class="confirm_left"><fmt:message
									key="FATHER_NAME"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.fatherName}"></c:out></label>
							<br>
							<label class="confirm_left"><fmt:message
									key="MOTHER_NAME"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.motherName}"></c:out></label>
							<br>
							<label class="confirm_left"><fmt:message key="RESIDENCE"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.residence}"></c:out></label>
							<br>
							<label class="confirm_left"><fmt:message
									key="FATHER_OCCUPATION"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.fatherOccupation}"></c:out></label>
							<br>


							<label class="confirm_left"><fmt:message
									key="FATHER_ADDRESS"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.address}"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message key="PHONE_NO"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.mobile}"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message
									key="PREVIOUS_SCHOOL"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.previousSchool}"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message key="TC_YES_NO"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.tcYesNo}"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message key="TC_NUM"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.tcNumber}"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message key="TC_DATE"></fmt:message></label>
							<b>:</b>
							<label class="confirm"> <fmt:formatDate type="date"
									value="${sessionScope.student.tcDate}" />
							</label>
							<br>

							<label class="confirm_left"><fmt:message
									key="ADMISSION_CLASS"></fmt:message></label>
							<b>:</b>

							<label class="confirm"><c:out
									value="${sessionScope.student.classAdmitted}"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message
									key="MEDIUM_OF_INSTRUCTION"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.medium}"></c:out></label>
							<br>

							<label class="confirm_left"><fmt:message
									key="MARKS_OF_IDENTITY"></fmt:message></label>
							<b>:</b>
							<label class="confirm"><c:out
									value="${sessionScope.student.identityMarks}"></c:out></label>
							<br>

							<label class="reset_submit"> <input type="button"
								id="confirm_student" name="confirm_student" value="Confirm">
								&nbsp;&nbsp; <input type="button" id="print" name="print"
								value="Print"> &nbsp;&nbsp; <input type="button"
								id="modify_student" name="modify_student" value="Modify">
							</label>
						</c:if>
					</fmt:bundle>
				</div>
			</div>
		</div>
		<div class="footer">
			<%@ include file="adminfooter.jsp"%>
		</div>
	</div>

</body>
</html>