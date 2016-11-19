<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Teachers Time Table</title>
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="css_files/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="css_files/style.css" />
<script type="text/javascript">
	function getClassData(className) {
		$('.showClassData').show();
		$('.showInitial').hide();
		$('.classNamePlace').html(className);
		$('#updateCT').hide();
		$('#editCT,#deleteCT').show();
	}

	function editClassTT() {
		$('#updateCT').show();
		$('#editCT,#deleteCT').hide();
		$('.viewCttTable input').css('border', '1px solid black');
	}

	function deleteClassTT() {

	}

	function updateClassTT() {

	}

	function onChangeTeacher() {
		$('#updateCT').hide();
		$('#editCT,#deleteCT').show();
		$('.viewCttTable input').css('border', '1px solid #fff');
		var teachName = $('#teacherName').val();
		if (teachName == 'select') {
			$('.showClassData').hide();
		} else {
			$('.showClassData').show();
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
					<li><a href="view.teacher">View Teachers</a></li>
					<li><a href="attendance.teacher">Attendance</a></li>
					<li><a href="viewAttendance.teacher">View Attendance</a></li>
					<li><a href="addtt.teacher">Add Time Table</a></li>
					<li class="activeLeftPane"><a href="viewtt.teacher">View
							Time Table</a></li>
				</ul>
			</div>
			<div class="mainRightBodyStyle">
				<form name="updateCTable" method="post" id="updateCTable" action="#">
					<div>
						<fieldset>
							<legend>View / Update Time Table</legend>
							<div class="fulWidth">
								<label class="leftLabel">Please select Teacher to get
									Time Table</label> <label class="rightLabel"> <select
									name="teacherName" id="teacherName"
									onchange="onChangeTeacher()">
										<option value="select">--Select--</option>
										<option value="phani">Phani</option>
										<option value="wasim">Wasim</option>
								</select>
								</label>
							</div>
							<div class="fulWidth">
								<table class="viewCttTable">
									<tr>
										<th></th>
										<th><label class="ttLabel">Period&nbsp;I</label></th>
										<th><label class="ttLabel">Period&nbsp;II</label></th>
										<th><label class="ttLabel">Period&nbsp;III</label></th>
										<th><label class="ttLabel">Period&nbsp;IV</label></th>
										<th><label class="ttLabel">Period&nbsp;V</label></th>
										<th><label class="ttLabel">Period&nbsp;VI</label></th>
										<th><label class="ttLabel">Period&nbsp;VII</label></th>
										<th><label class="ttLabel">Period&nbsp;VIII</label></th>
									</tr>
									<tr>
										<th class="thLabel">MON</th>
										<td><input type="text" name="a1" id="a1" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="a2" id="a2" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="a3" id="a3" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="a4" id="a4" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="a5" id="a5" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="a6" id="a6" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="a7" id="a" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="a8" id="a8" value=""
											class="ttLabel" /></td>
									</tr>
									<tr>
										<th class="thLabel">TUE</th>
										<td><input type="text" name="b1" id="b1" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="b2" id="b2" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="b3" id="b3" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="b4" id="b4" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="b5" id="b5" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="b6" id="b6" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="b7" id="b7" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="b8" id="b8" value=""
											class="ttLabel" /></td>
									</tr>
									<tr>
										<th class="thLabel">WED</th>
										<td><input type="text" name="c1" id="c1" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="c2" id="c2" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="c3" id="c3" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="c4" id="c4" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="c5" id="c5" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="c6" id="c6" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="c7" id="c7" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="c8" id="c8" value=""
											class="ttLabel" /></td>
									</tr>
									<tr>
										<th class="thLabel">THU</th>
										<td><input type="text" name="d1" id="d1" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="d2" id="d2" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="d3" id="d3" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="d4" id="d4" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="d5" id="d5" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="d6" id="d6" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="d7" id="d7" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="d8" id="d8" value=""
											class="ttLabel" /></td>
									</tr>
									<tr>
										<th class="thLabel">FRI</th>
										<td><input type="text" name="e1" id="e1" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="e2" id="e2" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="e3" id="e3" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="e4" id="e4" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="e5" id="e5" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="e6" id="e6" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="e7" id="e7" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="e8" id="e8" value=""
											class="ttLabel" /></td>
									</tr>
									<tr>
										<th class="thLabel">SAT</th>
										<td><input type="text" name="f1" id="f1" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="f2" id="f2" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="f3" id="f3" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="f4" id="f4" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="f5" id="f5" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="f6" id="f6" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="f7" id="f7" value=""
											class="ttLabel" /></td>
										<td><input type="text" name="f8" id="f8" value=""
											class="ttLabel" /></td>
									</tr>
								</table>
							</div>
						</fieldset>
					</div>
					<div class="formButtons">
						<input type="submit" class="btnStyle" id="submit" name="Submit"
							value="Add / Update"> &nbsp;&nbsp; <input
							class="btnStyle" type="reset" id="reset" name="reset"
							value="Clear">
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="footerStyle">© 2015 All rights Reserved | Vignana
		Jyothi High School</div>
</body>
</html>