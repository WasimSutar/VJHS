<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Fee Structure</title>
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
					<li><a href="overview.profile">Overview</a></li>
					<li><a href="classstrength.profile">Classes &amp;
							Strengths</a></li>
					<li class="activeLeftPane"><a href="feestructure.profile">Fee
							Structure</a></li>
				</ul>
			</div>
			<div class="mainRightBodyStyle">
				<fmt:bundle basename="com.vjhs.labels.label">
					<div>
						<fieldset>
							<legend>Fee Structure Overview</legend>
							<table id="example" class="display compact">
								<thead>
									<tr>
										<th><fmt:message key="CLASS"></fmt:message></th>
										<th><fmt:message key="ADMISSION_FEE"></fmt:message></th>
										<th><fmt:message key="APPLICATION_FEE"></fmt:message></th>
										<th><fmt:message key="TUTION_FEE"></fmt:message></th>
										<th><fmt:message key="BOOKS_FEE"></fmt:message></th>
										<th><fmt:message key="EXAMINATION_FEE"></fmt:message></th>
										<th><fmt:message key="OTHER_FEE"></fmt:message></th>
										<th><fmt:message key="TOTAL_FEE"></fmt:message></th>
										<th><fmt:message key="UPDATE"></fmt:message></th>
									</tr>
								</thead>

								<tbody>
									<c:forEach items="${feeStruList}" var="feeStructure">
										<c:url value="editFeeStru.profile" var="modifyClass">
											<c:param name="className" value="${feeStructure.className}" />
										</c:url>
										<tr>
											<td><c:out value="${feeStructure.className}"></c:out></td>
											<td><c:out value="${feeStructure.admissionFee}"></c:out></td>
											<td><c:out value="${feeStructure.applicationFee}"></c:out></td>
											<td><c:out value="${feeStructure.tutionFee}"></c:out></td>
											<td><c:out value="${feeStructure.booksFee}"></c:out></td>
											<td><c:out value="${feeStructure.examFee}"></c:out></td>
											<td><c:out value="${feeStructure.otherFee}"></c:out></td>
											<td><c:out value="${feeStructure.totalFee}"></c:out></td>
											<td><a href="<c:out value="${modifyClass}"></c:out>">Modify</a></td>
										</tr>
									</c:forEach>

								</tbody>
							</table>
						</fieldset>
					</div>
					<div class="minHeightDiv"></div>
				</fmt:bundle>
			</div>
		</div>
	</div>
	<div class="footerStyle">© 2015 All rights Reserved | Vignana
		Jyothi High School</div>
</body>
</html>