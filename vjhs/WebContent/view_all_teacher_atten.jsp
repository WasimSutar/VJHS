<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: View Attendance</title>
<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<script type="text/javascript" src="js_files/jquery.js"></script>
<script type="text/javascript"
	src="js_files/ie-emulation-modes-warning.js"></script>

<link rel="stylesheet" href="css_files/carousel.css">
<link rel="stylesheet" href="css_files/vjhs_util.css" />
<script type="text/javascript">
	function getData() {
		var selectedDate = $('#teacherAtDate').val();
		if (selectedDate.length > 0) {
			alert('Ajax call to get all teachers day report	');
			$('.teacherAttenDiv').show();
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
				<div class="viewMiddleClTT">
					<div class="viewFull">
						<div class="forPadding mainHeader">
							<label>Teacher's Attendance Report</label>
						</div>
						<div class="forPadding">
							<label class="viewPLeft">Select Date :&nbsp;&nbsp;&nbsp;</label>
							<label class="viewPRight"> <input type="date"
								name="teacherAtDate" id="teacherAtDate" />
							</label>
						</div>
						<div>&nbsp;</div>
						<div class="forPadding forButtons">
							<input type="submit" value="Get" onclick="getData()" /> <input type="reset"
								value="Reset" />
						</div>
						<div class="teacherAttenDiv">
							<div>&nbsp;</div>
							<div class="forPadding teacherAttenDiv">
								<table class="teacherAttendanceReport" border="1">
									<tr>
										<th>Employee Number</th>
										<th>Employee Name</th>
										<th>Attendance Status</th>
									</tr>
									<c:forEach begin="1" end="5">
										<tr>
											<td>105109</td>
											<td>Phani Pavan Panangipalli</td>
											<td>Absent</td>
										</tr>
									</c:forEach>
								</table>
							</div>
							<div>&nbsp;</div>
							<div class="forPadding attSummHead">
								<label>Attendance Report Summary for the Day</label>
							</div>
							<div class="forPadding">
								<table class="overAllDayReport" border="1">
									<tr>
										<th>Present</th>
										<th>Absent</th>
										<th>Leave</th>
										<th>Half-Day</th>
										<th>Holiday</th>
									</tr>
									<tr>
										<td>20</td>
										<td>20</td>
										<td>20</td>
										<td>20</td>
										<td>20</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</fmt:bundle>
		</div>
		<div class="footer">
			<c:import url="adminfooter.jsp"></c:import>
		</div>

	</div>
</body>
</html>