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
<script type="text/javascript" src="js_files/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="css_files/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="css_files/style.css" />
<script type="text/javascript">
	/* Custom filtering function which will search data in column four between two values */
	/* 	$.fn.dataTable.ext.search.push(function(settings, data, dataIndex) {
	 var min = parseInt($('#min').val(), 10);
	 var max = parseInt($('#max').val(), 10);
	 var age = parseFloat(data[3]) || 0; // use data for the age column
	 if ((isNaN(min) && isNaN(max)) || (isNaN(min) && age <= max)
	 || (min <= age && isNaN(max)) || (min <= age && age <= max)) {
	 return;
	 }
	 return;
	 }); */
	$(document).ready(function() {
		var table = $('#example').DataTable();
		// Event listener to the two range filtering inputs to redraw on input
		$('#min, #max').keyup(function() {
			table.draw();
		});
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
					<li><a href="add.student">Add Student</a></li>
					<li class="activeLeftPane"><a href="view.student">View
							Students</a></li>
				</ul>
			</div>
			<div class="mainRightBodyStyle">
				<div>
					<fieldset>
						<legend>View Students</legend>
						<table id="example" class="display compact">
							<thead>
								<tr>
									<th>Admission Number</th>
									<th>Student Name</th>
									<th>Class</th>
									<th>DOB</th>
									<th>Gender</th>
									<th>Caste Category</th>
									<th>Father Name</th>
									<th>Mobile Number</th>
									<th>Modify</th>
									<th>Delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${studentsList}" var="student">
									<c:url value="modifyStudent.student" var="modifyStudent">
										<c:param name="adminNo" value="${student.admissionNo}" />
									</c:url>
									<c:url value="deleteStudent.Student" var="deleteStudent">
										<c:param name="adminNo" value="${student.admissionNo}" />
									</c:url>
									<tr>
										<td><c:out value="${student.admissionNo}"></c:out></td>
										<td><c:out value="${student.studentName}"></c:out></td>
										<td><c:out value="${student.currentClass}"></c:out></td>
										<td><c:out value="${student.dateOfBirth}"></c:out></td>
										<td><c:out value="${student.gender}"></c:out></td>
										<td><c:out value="${student.coc}"></c:out></td>
										<td><c:out value="${student.fatherName}"></c:out></td>
										<td><c:out value="${student.mobile}"></c:out></td>
										<td><a href="<c:out value="${modifyStudent}"></c:out>">Modify</a></td>
										<td><a href="<c:out value="${deleteStudent}"></c:out>">Delete</a></td>
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
	<div class="footerStyle">© 2015 All rights Reserved | Vignana
		Jyothi High School</div>
</body>
</html>

<!-- <div>
	<div class="fulWidth">
		<label>Minimum Class:</label> <input type="text" id="min" name="min">
	</div>
	<div class="fulWidth">
		<label>Maximum Class:</label> <input type="text" id="max" name="max">
	</div>
</div>
 -->