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
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="css_files/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="css_files/style.css" />
<script type="text/javascript">
	function addSubject() {
		$(".addSubjectPane").show();
		$('.updateSubjectPane').hide();
	}

	function editSub() {
		if ($('#subjectName:checked').size() == 0) {
			alert("Please Select atleast one subject");
			$(".updateSubjectPane").hide();
		} else if ($('#subjectName:checked').size() > 1) {
			alert("You cannot edit more than one subject at a time");
			$(".updateSubjectPane").hide();
		} else {
			$(".updateSubjectPane").show();
			$('.addSubjectPane').hide();
			$('#editSubName').val($('#subjectName:checked').val());
			var subId = $('#subjectName:checked').val();
			subId = '#' + subId;
			subId = subId.replace(/\s+/g, '');
			$('#editSubId').val($(subId).val());
		}
	}

	function deleteSubjects() {
		if ($('input:checkbox[name="subjectName"]:checked').size() == 0) {
			alert("Please Select atleast one subject");
		} else if ($('input:checkbox[name="subjectName"]:checked').size() > 1) {
			alert("You cannot delete more than one subject at a time");
		} else {
			var isDelete = confirm("delete subjects:"
					+ $('#subjectName:checked').val());
			if (isDelete) {
				var subId = $('#subjectName:checked').val();
				subId = '#' + subId;
				subId = subId.replace(/\s+/g, '');
				location.href = "deleteSubjects.examinations?subjectId="
						+ $(subId).val();
			}
		}
	}
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
					<li class="activeLeftPane"><a href="subjects.examinations">Subjects</a></li>
					<li><a href="schedule.examinations">Schedule</a></li>
					<li><a href="student_mark.examinations">Marks Report</a></li>
					<li><a href="progress_report.examinations">Progress Report</a></li>
					<li><a href="certificates.examinations">Certificates</a></li>
				</ul>
			</div>
			<div class="mainRightBodyStyle">
				<fmt:bundle basename="com.vjhs.labels.label">
					<div>
						<fieldset>
							<legend>Subjects</legend>
							<div class="fulWidth">
								<c:forEach var="subject" items="${subjectList}">
									<div class="fulWidth">
										<input type="hidden"
											id='<c:out value="${fn:replace(subject.subjectName,' ','')}"></c:out>'
											name="hideSubId"
											value='<c:out value="${subject.subjectId}"></c:out>' /> <input
											type="checkbox" id="subjectName" name="subjectName"
											value="${subject.subjectName}" />&nbsp;
										<c:out value="${subject.subjectName}"></c:out>
									</div>
								</c:forEach>
							</div>
							<div class="formButtonsLeft">
								<input type="button" class="btnStyle" id="add" name="add"
									value="Add" onclick="addSubject()" /> &nbsp;&nbsp; <input
									class="btnStyle" type="button" name="edit" id="edit"
									value="Edit" onclick="editSub()" /> &nbsp;&nbsp;<input
									type="button" class="btnStyle" name="delete" id="delete"
									value="Delete" onclick="deleteSubjects()" />
							</div>
						</fieldset>
					</div>
					<div class="addSubjectPane">
						<fieldset>
							<legend>Add Subject</legend>
							<form action="addSubjects.examinations" name="addSubPage"
								id="addSubPage" method="POST">
								<div class="fulWidth">
									<label class="leftLabel">Please Enter Subject ID </label><label
										class="rightLabel"><input type="text" id="SubId"
										name="SubId" /></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel">Please Enter Subject Name </label><label
										class="rightLabel"><input type="text" id="newSub"
										name="newSub" /></label>
								</div>
								<div class="formButtons">
									<input type="submit" id="addSubject" name="addSubject"
										class="btnStyle" value="Add Subject" />
								</div>
							</form>
						</fieldset>
					</div>
					<div class="updateSubjectPane">
						<fieldset>
							<legend>Update Subject</legend>
							<form action="updateSubjects.examinations" name="updateSubPane"
								id="updateSubPane" method="POST">
								<div class="fulWidth">
									<input type="hidden" id="editSubId" name="editSubId" /> <label
										class="leftLabel">Please modify Subject</label><label
										class="rightLabel"><input type="text" id="editSubName"
										name="editSubName" /></label>
								</div>
								<div class="formButtons">
									<input type="submit" id="addSubject" name="addSubject"
										value="Update Subject" class="btnStyle" />
								</div>
							</form>
						</fieldset>
					</div>
				</fmt:bundle>
			</div>
		</div>
	</div>
	<div class="footerStyle">© 2015 All rights Reserved | Vignana
		Jyothi High School</div>
</body>
</html>