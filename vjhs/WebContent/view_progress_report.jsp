<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Progress Report</title>
<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<script type="text/javascript" src="js_files/jquery.js"></script>
<script type="text/javascript"
	src="js_files/ie-emulation-modes-warning.js"></script>

<link rel="stylesheet" href="css_files/carousel.css">

<style type="text/css">

.viewMiddleClTT {
	margin: 10px 0;
	background-color: lightBlue;
	border-radius: 10px;
	min-height: 370px;
	display: inline-table;
}
.viewCttTable th, .viewCttTable td {
	padding: 2px 5px;
	width: 120px;
}

.viewCttTable input[type=text] {
	width: 90px;
	font: 12px;
	border: 1px solid rgb(0, 75, 141);
}


.viewCRight {
	padding: 10px 30px;
	margin: 10px;
	width: 1150px;
	float: left;
	border-radius: 10px;
	background-color: #fff;
	min-height: 346px;
}

.showClassData {
	display: none;
}

.viewCttTable th, .viewCttTable td {
	padding: 2px 5px;
	width: 120px;
}

.viewCttTable input[type=text] {
	width: 90px;
	font: 12px;
	border: 1px solid #fff;
}

input[type=submit], input[type=reset], input[type=button] {
	border: 0px;
	background: rgb(0, 75, 141);
	color: white;
	border-radius: 5px;
	width: 100px;
	height: 25px;
	font-weight: bold;
}

.classNamePlace {
	font-weight: bold;
}

#updateCT {
	display: none;
}
</style>
</head>
<body>

	<div class="container">
		<div class="header">
			<c:import url="adminheader.jsp"></c:import>
		</div>
		<div class="body_content" style="width: 1170px;">
			<div class="viewMiddleClTT">
				<div class="viewCRight">
					<div id="namedDiv">
						<label>Student Name : </label> <label>#######</label><br> <label>Class
							: </label> <label>$$$$$$$</label>

					</div>
					<div id="headDiv">
						<h4 align="center">SUMMATIVE ASSESSMENT</h4>
					</div>
					<div>

						<table align="center" border="3" class="viewCttTable">
							<tr>
								<td>Sl. No</td>
								<td>Subject</td>
								<td>Max. marks</td>

								<td>Marks obtained</td>
								<td>Grade points</td>
								<td>Remarks</td>
							</tr>
							<c:forEach begin="1" end="10">
								<tr>
									<td>~</td>
									<td>!</td>
									<td>%</td>
									<td>@</td>
									<td>#</td>
									<td>$</td>
									
								</tr>
							</c:forEach>

						</table>

					</div>
					<div id="headDiv">
						<h4 align="center">ATTENDANCE</h4>
					</div>

					<div>

						<table align="center" border="3" class="viewCttTable">
							<tr>
								<td>Month</td>
								<td>####</td>

							</tr>
							<c:forEach begin="1" end="2">
								<tr>
									<td>~</td>
									<td>!</td>


								</tr>
							</c:forEach>

						</table>

					</div>

					<div>
						<label>Percentage (%) : </label> <label>XX %</label><br> <label>Grade
							point average (GPA) : </label> <label>XX </label><br>

					</div>

					<div>
						<label>Class teacher</label> <label>Principal</label> &nbsp;
						&nbsp; <label>Father/Guardian</label>
					</div>
				</div>
			</div>



		</div>
		<div class="footer">
			<c:import url="adminfooter.jsp"></c:import>
		</div>
	</div>
</body>
</html>