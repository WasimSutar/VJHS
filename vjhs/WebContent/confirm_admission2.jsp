<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<link rel="stylesheet" type="text/css" href="css_files/style.css" />
</head>
<body>
	<div class="head700">
		<h1>Vignana Jyothi High School (E.M.)</h1>
	</div>
	<div class="mainMenuStyle">
		<div class="menuStyle">
			<a href="overview.profile"><span
				class="profileStyle mainMenuSubStyle">Profile</span></a> <a
				href="add.student"><span
				class="mainMenuSubStyle studentProfile activeProfile">Students</span></a>
			<a href="add.teacher"><span
				class="mainMenuSubStyle teacherProfile">Teachers</span></a> <a
				href="academic_calander.schedule"><span
				class="mainMenuSubStyle scheduleProfile">Schedule</span></a> <a
				href="attendance.examinations"><span
				class="mainMenuSubStyle examsProfile">Exams</span></a> <a href="#"><span
				class="mainMenuSubStyle smsProfile">SMS</span></a> <a href="#"><span
				class="mainMenuSubStyle libraryProfile">Library</span></a> <a href="#"><span
				class="mainMenuSubStyle vehiclesProfile">Vehicles</span></a> <a href="#"><span
				class="mainMenuSubStyle accountsProfile">Accounts</span></a>
		</div>
	</div>
	<div class="mainBody">
		<div class="mainBodyStyle">
			<div class="mainLeftBodyStyle">
				<div class="leftPaneHeadding">Manage Students</div>
				<ul>
					<li class="activeLeftPane"><a href="add.student">Add
							Student</a></li>
					<li><a href="view.student">View Students</a></li>
				</ul>
			</div>
			<div class="mainRightBodyStyle">
				<form action="regform.student" enctype="multipart/form-data"
					method="post" id="registrationform" name="registrationform">
					<fmt:bundle basename="com.vjhs.labels.label">
						<div class="adminContactDet">
							<fieldset class="adminDetStyle">
								<legend>Admission Details</legend>
								<div class="admissionLeft">
									<div class="fulWidth">
										<label class="leftLabel"><fmt:message key="PHOTO"></fmt:message></label>
										<label class="rightLabelText2"> <c:out
												value="${sessionScope.student.photo}"></c:out></label>
									</div>
									<div class="fulWidth">
										<label class="leftLabel"><fmt:message
												key="ADMISSION_NO"></fmt:message></label> <label
											class="rightLabelText2"> <c:out
												value="${sessionScope.student.admissionNo}"></c:out>
										</label>
									</div>
									<div class="fulWidth">
										<label class="leftLabel"><fmt:message key="DOA"></fmt:message></label>
										<label class="rightLabelText2"><fmt:formatDate
												type="date" value="${sessionScope.student.dateOfAdmission}" />
										</label>
									</div>
									<div class="fulWidth">
										<label class="leftLabel"><fmt:message
												key="ADMISSION_CLASS"></fmt:message></label> <label
											class="rightLabelText2"><c:out
												value="${sessionScope.student.classAdmitted}"></c:out> </label>
									</div>
									<div class="fulWidth">
										<label class="leftLabel"><fmt:message
												key="MEDIUM_OF_INSTRUCTION"></fmt:message></label> <label
											class="rightLabelText2"><c:out
												value="${sessionScope.student.medium}"></c:out></label>
									</div>
								</div>
								<div class="admissionRight"></div>
							</fieldset>
							<fieldset class="conDetStyle">
								<legend>Contact Details</legend>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="RESIDENCE"></fmt:message></label>
									<label class="rightLabelText2"><c:out
											value="${sessionScope.student.residence}"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="NATIONALITY"></fmt:message></label>
									<label class="rightLabelText2"><c:out
											value="${sessionScope.student.nationality}"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="STATE"></fmt:message></label>
									<label class="rightLabelText2"><c:out
											value="${sessionScope.student.state}"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="FATHER_ADDRESS"></fmt:message></label> <label
										class="rightLabelText2"><c:out
											value="${sessionScope.student.address}"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="PHONE_NO"></fmt:message></label>
									<label class="rightLabelText2"><c:out
											value="${sessionScope.student.mobile}"></c:out></label>
								</div>
							</fieldset>
						</div>
						<div class="perDetStyle">
							<fieldset class="perDetails">
								<legend>Personal Details</legend>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="NAME_OF_STUDENT"></fmt:message></label> <label
										class="rightLabelText2"><c:out
											value="${sessionScope.student.studentName}"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="DOB"></fmt:message></label>
									<label class="rightLabelText2"><fmt:formatDate
											type="date" value="${sessionScope.student.dateOfBirth}" /></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="GENDER"></fmt:message></label>
									<label class="rightLabelText2"><c:out
											value="${sessionScope.student.gender}"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="FATHER_NAME"></fmt:message></label>
									<label class="rightLabelText2"><c:out
											value="${sessionScope.student.fatherName}"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="MOTHER_NAME"></fmt:message></label>
									<label class="rightLabelText2"><c:out
											value="${sessionScope.student.motherName}"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="MOTHER_TONGUE"></fmt:message></label> <label
										class="rightLabelText2"><c:out
											value="${sessionScope.student.motherTongue}"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="FATHER_OCCUPATION"></fmt:message></label> <label
										class="rightLabelText2"><c:out
											value="${sessionScope.student.fatherOccupation}"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="RELIGION"></fmt:message></label>
									<label class="rightLabelText2"><c:out
											value="${sessionScope.student.religion}"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="CASTE"></fmt:message></label>
									<label class="rightLabelText2"><c:out
											value="${sessionScope.student.caste}"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="COC"></fmt:message></label>
									<label class="rightLabelText2"> <c:out
											value="${sessionScope.student.coc}"></c:out>
									</label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="MARKS_OF_IDENTITY"></fmt:message></label> <label
										class="rightLabelText2"><c:out
											value="${sessionScope.student.identityMarks}"></c:out></label>
								</div>
							</fieldset>
						</div>
						<div class="preSchoolDetStyle">
							<fieldset>
								<legend>Previous School Details</legend>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="PREVIOUS_SCHOOL"></fmt:message></label> <label
										class="rightLabelText2"><c:out
											value="${sessionScope.student.previousSchool}"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="TC_NUMBER"></fmt:message></label>
									<label class="rightLabelText2"><c:out
											value="${sessionScope.student.tcNumber}"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="TC_DATE"></fmt:message></label>
									<label class="rightLabelText2"><fmt:formatDate
											type="date" value="${sessionScope.student.tcDate}" /></label>
								</div>
							</fieldset>
						</div>
						<div class="minHeightDiv"></div>
					</fmt:bundle>
				</form>
			</div>
		</div>
	</div>
	<div class="footerStyle">© 2015 All rights Reserved | Vignana
		Jyothi High School</div>
</body>
</html>