<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS::View Teachers</title>
<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" language="javascript"
	src="js_files/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="css_files/jquery.dataTables.css">
<link rel="stylesheet" href="css_files/forms.css">
<script type="text/javascript">
	$(document).ready(function() {
		$('#example').dataTable();
	});
</script>
</head>
<body>
	<div class="container">
		<div class="header">
			<c:import url="adminheader.jsp"></c:import>
		</div>
		<div class="body_content"
			style="width: 1170px;">
			<div class="viewMiddleClTT">
				<div class="viewFull">
					<div class="headBar">
						<label>View Teacher</label>
					</div>
					<table id="example" class="display compact" cellspacing="0"
						width="100%">
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
						</tfoot>
						<tbody>
							<c:forEach items="${teacherList}" var="teacher">
							<c:url value="modifyTeacher.teacher" var="modifyTeacher">
							  <c:param name="empId"   value="${teacher.employeeId}" />
							</c:url>
							<c:url value="deleteTeacher.teacher" var="deleteTeacher">
							  <c:param name="empId"   value="${teacher.employeeId}" />
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
				</div>
			</div>
		</div>
	<div class="footer">
		<c:import url="adminfooter.jsp"></c:import>
	</div>
	</div>
</body>
</html>