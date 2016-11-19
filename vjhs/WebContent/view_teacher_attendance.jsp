<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: View Teacher Attendance</title>
<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<script type="text/javascript" src="js_files/jquery.js"></script>
<script type="text/javascript"
	src="js_files/ie-emulation-modes-warning.js"></script>

<link rel="stylesheet" href="css_files/carousel.css">
<link rel="stylesheet" href="css_files/vjhs_util.css" />

<script type="text/javascript">
	function getTeacherMonthAtData() {
		var selectedDate = $('#teacherAtDate').val();
		alert('Ajax call to get the details of teachers month report');
		$('.toGetDataForMonth').show();
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
							<label>View Teacher Attendance Report</label>
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
											<option value='<c:out value="${teacher.employeeId}"></c:out>'><c:out
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
							<label class="viewPLeft">Year :&nbsp;&nbsp;&nbsp;</label> <label
								class="viewPRight"> <select name="year" id="year">
									<option value="select"><fmt:message key="SELECT" /></option>
									<option value="13-14"><fmt:message key="13-14" /></option>
									<option value="14-15"><fmt:message key="14-15" /></option>
									<option value="15-16"><fmt:message key="15-16" /></option>
									<option value="16-17"><fmt:message key="16-17" /></option>
									<option value="17-18"><fmt:message key="17-18" /></option>
									<option value="18-19"><fmt:message key="18-19" /></option>
									<option value="19-20"><fmt:message key="19-20" /></option>
									<option value="20-21"><fmt:message key="20-21" /></option>
									<option value="21-22"><fmt:message key="21-22" /></option>
									<option value="22-23"><fmt:message key="22-23" /></option>
									<option value="23-24"><fmt:message key="23-24" /></option>
									<option value="24-25"><fmt:message key="24-25" /></option>
							</select>
							</label>
						</div>
						<div class="forPadding">
							<label class="viewPLeft">Month :&nbsp;&nbsp;&nbsp;</label> <label
								class="viewPRight"> <select name="monthAttn"
								id="monthAttn">
									<option value="<fmt:message key="SELECT"/>"><fmt:message
											key="SELECT" /></option>
									<option value="<fmt:message key="JAN"/>"><fmt:message
											key="JAN" /></option>
									<option value="<fmt:message key="FEB"/>"><fmt:message
											key="FEB" /></option>
									<option value="<fmt:message key="MAR"/>"><fmt:message
											key="MAR" /></option>
									<option value="<fmt:message key="APR"/>"><fmt:message
											key="APR" /></option>
									<option value="<fmt:message key="MAY"/>"><fmt:message
											key="MAY" /></option>
									<option value="<fmt:message key="JUN"/>"><fmt:message
											key="JUN" /></option>
									<option value="<fmt:message key="JUL"/>"><fmt:message
											key="JUL" /></option>
									<option value="<fmt:message key="AUG"/>"><fmt:message
											key="AUG" /></option>
									<option value="<fmt:message key="SEP"/>"><fmt:message
											key="SEP" /></option>
									<option value="<fmt:message key="OCT"/>"><fmt:message
											key="OCT" /></option>
									<option value="<fmt:message key="NOV"/>"><fmt:message
											key="NOV" /></option>
									<option value="<fmt:message key="DEC"/>"><fmt:message
											key="DEC" /></option>
							</select>
							</label>
						</div>

						<div>&nbsp;</div>
						<div class="forPadding forButtons">
							<input type="submit" value="Get"
								onclick="getTeacherMonthAtData()" /> <input type="reset"
								value="Reset" />
						</div>
						<div class="toGetDataForMonth">
							<div class="forPadding">
								<div class="forPadding">
									&nbsp;<br>&nbsp;
								</div>
								<div class="forTeacherDet forPadding">
									<div class="forPadding empNameRes">
										<label>Employee Name :&nbsp;&nbsp;</label> <label>Phani
											Pavan Panangipalli</label>
									</div>
									<div class="forPadding empNumberRes">
										<label>Employee Number :&nbsp;&nbsp;</label> <label>105109</label>
									</div>
								</div>
								<table class="viewTeacherAtten" border="1">
									<tr>
										<th>Date</th>
										<th>Attendance Status</th>
									</tr>
									<c:forEach begin="1" end="10">
										<tr>
											<td>10/10/2015</td>
											<td>Present</td>
										</tr>
									</c:forEach>
								</table>
							</div>
							<div class="forPadding">&nbsp;</div>
							<div class="forPadding attSummHead">
								<label>Attendance Report Summary for the Month</label>
							</div>
							<div class="forPadding">
								<table class="viewTeacherAttenStatus" border="1">
									<tr>
										<th>Number of Days Attended:</th>
										<td></td>
									</tr>
									<tr>
										<th>Number of Working Days:</th>
										<td></td>
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