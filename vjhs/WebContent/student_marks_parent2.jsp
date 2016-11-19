<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Attendance</title>
<script type="text/javascript" src="js_files/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery-ui.js"></script>
<script type="text/javascript" src="js_files/jquery.dataTables.js"></script>
<script type="text/javascript" src="js_files/vjhs_util.js"></script>
<link rel="stylesheet" type="text/css" href="css_files/jquery-ui.css" />
<link rel="stylesheet" type="text/css"
	href="css_files/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="css_files/style.css" />
<link rel="stylesheet" href="css_files/vjhs_util.css" />
</head>
<body>
	<div class="head700">
		<h1>Vignana Jyothi High School (E.M.)</h1>
	</div>
	<div class="mainMenuStyle">
		<div class="menuStyle">
			<a href="overview.profile"><span
				class="profileStyle mainMenuSubStyle">Profile</span></a> <a
				href="add.student"><span class="mainMenuSubStyle studentProfile">Students</span></a>
			<a href="add.teacher"><span
				class="mainMenuSubStyle teacherProfile">Teachers</span></a> <a
				href="academic_calander.schedule"><span
				class="mainMenuSubStyle scheduleProfile">Schedule</span></a> <a
				href="attendance.examinations"><span
				class="mainMenuSubStyle examsProfile activeProfile">Exams</span></a> <a
				href="#"><span class="mainMenuSubStyle smsProfile">SMS</span></a> <a
				href="#"><span class="mainMenuSubStyle libraryProfile">Library</span></a>
			<a href="#"><span class="mainMenuSubStyle vehiclesProfile">Vehicles</span></a>
			<a href="#"><span class="mainMenuSubStyle accountsProfile">Accounts</span></a>
		</div>
	</div>
	<div class="mainBody">
		<div class="mainBodyStyle">
			<div class="mainLeftBodyStyle">
				<div class="leftPaneHeadding">Manage Examinations</div>
				<ul>
					<li><a href="attendance.examinations">Attendance</a></li>
					<li><a href="subjects.examinations">Subjects</a></li>
					<li><a href="schedule.examinations">Schedule</a></li>
					<li  class="activeLeftPane"><a href="student_mark.examinations">Marks Report</a></li>
					<li><a href="progress_report.examinations">Progress Report</a></li>
					<li><a href="certificates.examinations">Certificates</a></li>
				</ul>
			</div>
			<div class="mainRightBodyStyle">
			<fmt:bundle basename="com.vjhs.labels.label">
			<div>
					<fieldset>
					<legend>View Student Marks</legend>
						<div  class="fulWidth">
							<label class="leftLabelST">Student Admission No &nbsp;&nbsp;&nbsp;</label>
							<label class="rightLabelST">
								<select name="admissionNo" id="admissionNo" onchange="getTableData()">
									<option value="select"><fmt:message key="SELECT"/> </option>
									<option value="1211">1211</option>
									<option value="1212">1212</option>
								</select>
							</label>
						</div>
						<div class="fulWidth">
							<div class="orLabel"><label class="leftLabelST"> -- OR -- </label></div>
						</div>
						<div  class="fulWidth">
							<label class="leftLabelST">Class &nbsp;&nbsp;&nbsp;</label>
							<label class="rightLabelST">
								<select name="className" id="classType" onchange="getStudentsAdminData()">
									<option value="select"><fmt:message key="SELECT"/> </option>
									<option value="nursery"><fmt:message key="NURSERY"/> </option>
									<option value="lkg"><fmt:message key="LKG"/> </option>
									<option value="ukg"><fmt:message key="UKG"/> </option>
									<option value="first"><fmt:message key="FIRST_STANDARD"/> </option>
									<option value="second"><fmt:message key="SECOND_STANDARD"/> </option>
									<option value="third"><fmt:message key="THIRD_STANDARD"/> </option>
									<option value="fourth"><fmt:message key="FOURTH_STANDARD"/> </option>
									<option value="fifth"><fmt:message key="FIFTH_STANDARD"/> </option>
									<option value="sixth"><fmt:message key="SIXTH_STANDARD"/> </option>
									<option value="seventh"><fmt:message key="SEVENTH_STANDARD"/> </option>
									<option value="eight"><fmt:message key="EIGHT_STANDARD"/> </option>
									<option value="nineth"><fmt:message key="NINETH_STANDARD"/> </option>
									<option value="tenth"><fmt:message key="TENTH_STANDARD"/> </option>
								</select>
							</label>
						</div>
						
						<div  class="fulWidth">
							<label class="leftLabelST">Student Name &nbsp;&nbsp;&nbsp;</label>
							<label class="rightLabelST">
								<select name="examType" id="examType">
									<option value="select"><fmt:message key="SELECT"/> </option>
								</select>
							</label>
						</div>
					
						<div  class="formButtons">
							<input type="submit" value="Submit" class="btnStyle"/>&nbsp;&nbsp;
							<input type="reset" value="Reset" class="btnStyle"/>
						</div>
						</fieldset>
						<div  class="fulWidth">
							<c:import url="student_marks_child.jsp"></c:import>
						</div>
					</div>
			</fmt:bundle>
	</div>
	</div>
	</div>
	<div class="footerStyle">© 2015 All rights Reserved | Vignana
		Jyothi High School</div>
</body>
</html>