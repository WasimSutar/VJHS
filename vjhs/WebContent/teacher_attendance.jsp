<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Attendance</title>
<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<script type="text/javascript"
	src="js_files/ie-emulation-modes-warning.js"></script>
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery-ui.js"></script>
<script type="text/javascript" src="js_files/jquery.validate.js"></script>
<script type="text/javascript" src="js_files/register.js"></script>

<link rel="stylesheet" href="css_files/carousel.css">
<link rel="stylesheet" type="text/css" href="css_files/jquery-ui.css">
<link rel="stylesheet" href="css_files/vjhs_util.css" />
<script type="text/javascript">
	function getMonthName() {
		var selectedDate = $('#teacherAtDate').val();
		if (selectedDate.length > 0) {
			$('.selectedDate').html(selectedDate);
			$('.teacherAttenDiv').show();
			var empId = $('#empNo').val();
			var empName = $('#empName').val();
			$(function() {
				$.ajax({
					type : "POST",
					url : "getTeacherStatus.teacher",
					data : {
						'empName' : empName,
						'selectedDate' : selectedDate,
						'empId' : empId
					},
					datatype : "xml",
					async : "true",
					success : function(xml) {
						$(xml).find('TEACHER_REQ_DATE').each(function() {
							var status = $(this).find('TEACHER_STATUS').text();
							alert(status);
							$('#dayStatus').val(status);
						});
					},
					error : function() {
						alert("Error occured while getting XML");
					}
				});
			});
			var dayStatus = $('#dayStatus').val()
			if (dayStatus.length > 0) {
				if (dayStatus == "Present") {
					$('#status1').prop('checked', true);
				} else if (dayStatus == "Absent") {
					$('#status2').prop('checked', true);
				} else if (dayStatus == "Leave") {
					$('#status3').prop('checked', true);
				} else if (dayStatus == "Halfday") {
					$('#status4').prop('checked', true);
				} else {
					$('#status5').prop('checked', true);
				}
			}
		} else {
			$('.teacherAttenDiv').hide();
		}
	}

	function placeResult() {
		var status = $("[name='status']:checked").val();
		$('#dayStatus').val(status);
	}
</script>
</head>
<body>

	<div class="container">
		<div class="header">
			<c:import url="adminheader.jsp"></c:import>
		</div>

		<div class="body_content" style="width: 1170px;">
			<fmt:bundle basename="com.vjhs.labels.label">
				<form action="addTeacherAtten.teacher" method="POST"
					name="addTeacherAtten" id="addTeacherAtten">
					<div class="viewMiddleClTT">
						<div class="viewFull">
							<div class="forPadding mainHeader">
								<label>Add Teacher Attendance Report</label>
							</div>
							<div>
								<h4>
									<c:out value="${message}"></c:out>
								</h4>
							</div>
							<div class="forPadding">
								<div class="leftSpace">&nbsp;</div>
								<div class="empNoAlign">
									<label class="viewPLeft">Employee Number
										:&nbsp;&nbsp;&nbsp;</label> <label class="viewPRight"> <select
										name="empNo" id="empNo">
											<option value="select"><fmt:message key="SELECT" />
											</option>
											<c:forEach items="${teacherList}" var="teacher">
												<option
													value='<c:out value="${teacher.employeeId}"></c:out>'><c:out
														value="${teacher.employeeId}"></c:out></option>
											</c:forEach>
									</select>
									</label>
								</div>
								<div class="orAlign">
									<label>-- OR -- </label>
								</div>
								<div class="empNameAlign">
									<label class="viewPLeft">Employee Name
										:&nbsp;&nbsp;&nbsp;</label> <label class="viewPRight"> <select
										name="empName" id="empName">
											<option value="select"><fmt:message key="SELECT" />
											</option>
											<c:forEach items="${teacherList}" var="teacher">
												<option
													value='<c:out value="${teacher.teacherName}"></c:out>'><c:out
														value="${teacher.teacherName}"></c:out></option>
											</c:forEach>
									</select>
									</label>
								</div>
								<div class="rightSpace">&nbsp;</div>
							</div>

							<div class="forPadding">
								<label class="viewPLeft">Select Date :&nbsp;&nbsp;&nbsp;</label>
								<label class="viewPRight"> <input type="date"
									name="teacherAtDate" id="teacherAtDate" class="datepicker"
									onchange="getMonthName()" />
								</label>
							</div>
							<div>&nbsp;</div>

							<div class="forPadding teacherAttenDiv">

								<table class="teacherAttendance" border="1">
									<tr>
										<th class="daysClass">Days</th>
										<th>Present</th>
										<th>Absent</th>
										<th>Leave</th>
										<th>HalfDay</th>
										<th>Holiday</th>
										<th class="statusAtten">Attendance Status</th>
									</tr>
									<tr>
										<th class="daysClass"><label class="selectedDate"></label></th>
										<td><input type="radio" id="status1" name="status"
											value="Present" onclick="placeResult()"></td>
										<td><input type="radio" id="status2" name="status"
											value="Absent" onclick="placeResult()"></td>
										<td><input type="radio" id="status3" name="status"
											value="Leave" onclick="placeResult()"></td>
										<td><input type="radio" id="status4" name="status"
											value="Halfday" onclick="placeResult()"></td>
										<td><input type="radio" id="status5" name="status"
											value="Holiday" onclick="placeResult()"></td>
										<td class="statusAtten"><label><input type="text"
												name="dayStatus" id="dayStatus" /></label></td>
									</tr>
								</table>
								<div>
									&nbsp;<br>&nbsp;<br>
								</div>
								<div class="forPadding forButtons">
									<input type="submit" value="Add" /> &nbsp;
									<!-- <input type="button" value="Update">&nbsp; -->
									<input type="reset" value="Reset" />
								</div>
							</div>

						</div>
					</div>
				</form>
			</fmt:bundle>
		</div>
		<div class="footer">
			<c:import url="adminfooter.jsp"></c:import>
		</div>

	</div>
</body>
</html>