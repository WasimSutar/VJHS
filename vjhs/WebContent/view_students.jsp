<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS::View Students</title>
<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="css_files/jquery.dataTables.css">
<link rel="stylesheet" href="css_files/forms.css">
<script type="text/javascript">
	/* Custom filtering function which will search data in column four between two values */
	$.fn.dataTable.ext.search.push(function(settings, data, dataIndex) {
		var min = parseInt($('#min').val(), 10);
		var max = parseInt($('#max').val(), 10);
		var age = parseFloat(data[3]) || 0; // use data for the age column

		if ((isNaN(min) && isNaN(max)) || (isNaN(min) && age <= max)
				|| (min <= age && isNaN(max)) || (min <= age && age <= max)) {
			return true;
		}
		return false;
	});

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
	<div class="container">
		<div class="header">
			<c:import url="adminheader.jsp"></c:import>
		</div>
		<div class="body_content" style="width: 1170px;">
			<div class="viewMiddleClTT">
				<div class="viewFull">
					<div class="headBar">
						<label>View Students</label>
					</div>
					<div>
						<div class="fulWidth">
							<label>Minimum Class:</label> <input type="text" id="min"
								name="min">
						</div>
						<div class="fulWidth">
							<label>Maximum Class:</label> <input type="text" id="max"
								name="max">
						</div>

					</div>

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
								<!-- <th>Mother Name</th> -->
							<!-- 	<th>Residence</th> -->
								<th>Mobile Number</th>
								<!-- <th>Class Admitted</th> -->
							</tr>
						</thead>

						<tfoot>
							<tr>
								<th>Admission Number</th>
								<th>Student Name</th>
								<th>Class</th>
								<th>DOB</th>
								<th>Gender</th>
								<th>Caste Category</th>
								<th>Father Name</th>
								<!-- <th>Mother Name</th> -->
								<!-- <th>Residence</th> -->
								<th>Mobile Number</th>
								<!-- <th>Class Admitted</th> -->
							</tr>
						</tfoot>

						<tbody>
							<c:forEach items="${studentsList}" var="student">
								<tr>
									<th><c:out value="${student.admissionNo}"></c:out></th>
									<th><c:out value="${student.studentName}"></c:out></th>
									<th><c:out value="${student.currentClass}"></c:out></th>
									<th><c:out value="${student.dateOfBirth}"></c:out></th>
									<th><c:out value="${student.gender}"></c:out></th>
									<th><c:out value="${student.coc}"></c:out></th>
									<th><c:out value="${student.fatherName}"></c:out></th>
									<%-- <th><c:out value="${student.motherName}"></c:out></th> --%>
									<%-- <th><c:out value="${student.residence}"></c:out></th> --%>
									<th><c:out value="${student.mobile}"></c:out></th>
									<%-- <th><c:out value="${student.classAdmitted}"></c:out></th> --%>
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