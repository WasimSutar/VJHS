<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Overview</title>
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
				class="profileStyle mainMenuSubStyle activeProfile">Profile</span></a> <a
				href="add.student"><span class="mainMenuSubStyle studentProfile">Students</span></a>
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
				<div class="leftPaneHeadding">Manage Profile</div>
				<ul>
					<li class="activeLeftPane"><a href="overview.profile">Overview</a></li>
					<li><a href="classstrength.profile">Classes &amp;
							Strengths</a></li>
					<li><a href="feestructure.profile">Fee Structure</a></li>
				</ul>
			</div>
			<div class="mainRightBodyStyle">
				<form action="editOverview.profile" method="post" id="overviewForm"
					name="overviewForm">
					<fmt:bundle basename="com.vjhs.labels.label">
						<div>
							<fieldset>
								<legend>VJHS Overview</legend>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="SCHOOL_NAME"></fmt:message></label> <label
										class="rightLabelText"><c:out
											value="${overview.schoolName }"></c:out></label> <br>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="HEADQUARTERS"></fmt:message></label> <label
										class="rightLabelText"><c:out
											value="${overview.headquarters }"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="BRANCHES"></fmt:message></label> <label class="rightLabelText"><c:out
											value="${overview.branches }"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message key="CITY"></fmt:message></label>
									<label class="rightLabelText"><c:out
											value="${overview.city }"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="DISTRICT"></fmt:message></label> <label class="rightLabelText"><c:out
											value="${overview.district }"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message key="STATE"></fmt:message></label>
									<label class="rightLabelText"><c:out
											value="${overview.state }"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="PHONE_NO"></fmt:message></label> <label class="rightLabelText"><c:out
											value="${overview.phoneNo }"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="MOBILE_NO"></fmt:message></label> <label class="rightLabelText"><c:out
											value="${overview.mobileNo }"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message key="EMAIL"></fmt:message></label>
									<label class="rightLabelText"><c:out
											value="${overview.email }"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="STUDENTS"></fmt:message></label> <label class="rightLabelText"><c:out
											value="${overview.noOfStudents }"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="TEACHERS"></fmt:message></label> <label class="rightLabelText"><c:out
											value="${overview.noOfStudents }"></c:out></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="START_YEAR"></fmt:message></label> <label class="rightLabelText"><c:out
											value="${overview.startYear }"></c:out></label>
								</div>
							</fieldset>
						</div>
						<div class="formButtons">
							<input type="submit" id="edit" value="Edit" class="btnStyle" />
						</div>
					</fmt:bundle>
				</form>
			</div>
		</div>
	</div>
	<div class="footerStyle">© 2015 All rights Reserved | Vignana
		Jyothi High School</div>
</body>
</html>