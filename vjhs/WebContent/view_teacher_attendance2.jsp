<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS::View Teachers</title>
<script type="text/javascript" src="js_files/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery.validate.min.js"></script>
<script type="text/javascript" src="js_files/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="css_files/jquery-ui.css" />
<script type="text/javascript" src="js_files/vjhs_util.js"></script>
<script type="text/javascript" src="js_files/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="css_files/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="css_files/style.css" />
<script type="text/javascript">
	function creSelect(id) {
		var select = '<select name="attSta'+id+'" id="attSta'+id+'" class="selectType42"><option value="">Select</option><option value="Present">Present</option><option value="Absent">Absent</option><option value="Half-Day">Half-Day</option><option value="Leave">Leave</option><option value="Holiday">Holiday</option></select>'
		return select;
	}

	function getTeacherMonthAtData() {
		var selectedDate = $('#teacherAtDate').val();
		alert('Ajax call to get the details of teachers month report');
		$('.toGetDataForMonth').show();
	}

	function getEmpData() {
		var urlPat = "getTeacherStatus.teacher?selectedDate=" + $('#teacherAtDate').val();
		alert(urlPat);
		if (selectedDate.length > 0) {
			$(function() {
				$.ajax({
					type : "POST",
					url : urlPat,
					datatype : "xml",
					async : "true",
					success : function(xml) {
						$('.showTab').addClass("noHide");
						$('.teachAttenTab > tbody').empty();
						$(xml).find('EMP').each(
								function() {
									$('.teachAttenTab > tbody').append(
											'<tr><th>' + $(this).find('EMP_NAME').text()
													+ '</th><td>'
													+ creSelect($(this).find('EMP_ID').text())
													+ '</td></tr>');
									if ($(this).find('EMP_STATUS').text() == '') {
										$('#attSta' + $(this).find('EMP_ID').text()).val()
									}
									$('.showTab').removeClass("noHide");
								});
					},
					error : function() {
						alert("Error occured while getting XML");
					}
				});
			});
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
					<li class="activeLeftPane"><a href="attendance.teacher">Attendance</a></li>
					<li><a href="viewAttendance.teacher">View Attendance</a></li>
					<li><a href="addtt.teacher">Add Time Table</a></li>
					<li><a href="viewtt.teacher">View Time Table</a></li>
				</ul>
			</div>
			<div class="mainRightBodyStyle">
				<div>
					<fieldset>
						<legend>View Teacher Attendance Report</legend>
						<form action="addTeacherAtten.teacher" method="post">
							<div class="fulWidth">
								<label class="leftLabelST">Select Date</label> <label
									class="rightLabelST"> <input type="text"
									name="teacherAtDate" id="teacherAtDate" class="datepicker"
									onchange="getEmpData()" />
								</label>
							</div>
							<div class="fulWidth showTab noHide">
								<table class="teachAttenTab" border="1">
									<thead>
										<tr>
											<th>Employee Name</th>
											<th>Attendance Status</th>
										</tr>
									</thead>
									<tbody></tbody>
								</table>
							</div>
							<div class="formButtons showTab noHide">
								<input type="submit" class="btnStyle" id="submit" name="Submit"
									value="Add / Update"> &nbsp;&nbsp; <input
									class="btnStyle" type="reset" id="reset" name="reset"
									value="Clear">
							</div>
						</form>
					</fieldset>
				</div>
			</div>
		</div>
	</div>
	<div class="footerStyle">© 2015 All rights Reserved | Vignana
		Jyothi High School</div>
</body>
</html>