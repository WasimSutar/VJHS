<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS::View Teachers</title>
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="css_files/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="css_files/style.css" />
<script type="text/javascript">
	$(document).ready(function() {
		$('#example').dataTable();
	});
</script>
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
				class="mainMenuSubStyle teacherProfile activeProfile">Teachers</span></a>
			<a href="academic_calander.schedule"><span
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
				<div class="leftPaneHeadding">Manage Teachers</div>
				<ul>
					<li><a href="add.teacher">Add Teachers</a></li>
					<li class="activeLeftPane"><a href="view.teacher">View
							Teachers</a></li>
					<li><a href="attendance.teacher">Attendance</a></li>
					<li><a href="viewAttendance.teacher">View Attendance</a></li>
					<li><a href="addtt.teacher">Add Time Table</a></li>
					<li><a href="viewtt.teacher">View Time Table</a></li>
				</ul>
			</div>
			<div class="mainRightBodyStyle">
				<div>
					<fieldset>
						<legend>View Teachers</legend>
						<table id="example" class="display compact">
							<thead>
								<tr>
									<th>Emp ID</th>
									<th>Emp Name</th>
									<th>DOJ</th>
									<th>Mobile</th>
									<th>Qualification</th>
									<th>Class Teacher</th>
									<th>Exp</th>
									<th>Modify</th>
									<th>Delete</th>
								</tr>
							</thead>
							<!-- 
						<tfoot>
							<tr>
								<th>Emp ID</th>
								<th>Emp Name</th>
								<th>DOJ</th>
								<th>Mobile</th>
								<th>Qualification</th>
								<th>Class Teacher</th>
								<th>Exp</th>
								<th>Modify</th>
								<th>Delete</th>
							</tr>
						</tfoot> -->
							<tbody>
								<c:forEach items="${teacherList}" var="teacher">
									<c:url value="modifyTeacher.teacher" var="modifyTeacher">
										<c:param name="empId" value="${teacher.employeeId}" />
									</c:url>
									<c:url value="deleteTeacher.teacher" var="deleteTeacher">
										<c:param name="empId" value="${teacher.employeeId}" />
									</c:url>
									<tr>
										<td><c:out value="${teacher.employeeId}"></c:out></td>
										<td><c:out value="${teacher.teacherName}"></c:out></td>
										<td><c:out value="${teacher.dateOfJoining}"></c:out></td>
										<td><c:out value="${teacher.phone}"></c:out></td>
										<td><c:out value="${teacher.qualification}"></c:out></td>
										<td><c:out value="${teacher.class_teacher}"></c:out></td>
										<td><c:out value="${teacher.experiance}"></c:out></td>
										<td><a href="<c:out value="${modifyTeacher}"></c:out>">Modify</a></td>
										<td><a href="<c:out value="${deleteTeacher}"></c:out>">Delete</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</fieldset>
				</div>
				<div class="minHeightDiv"></div>
			</div>
		</div>
	</div>
	<div class="footerStyle">� 2015 All rights Reserved | Vignana
		Jyothi High School</div>
</body>
</html>