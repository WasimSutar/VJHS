<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Exam Time table</title>

<script type="text/javascript" src="js_files/ie-emulation-modes-warning.js"></script>
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery-ui.js"></script>
<script type="text/javascript" src="js_files/jquery.validate.js"></script>
<script type="text/javascript" src="js_files/register.js"></script>

<link rel="stylesheet" type="text/css" href="css_files/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css_files/carousel.css">
<link rel="stylesheet" type="text/css" href="css_files/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css_files/forms.css">
<!-- <link rel="stylesheet" type="text/css" href="css_files/vjhs_util.css"> -->
  
<style type="text/css">
.viewMiddleClTT {
	margin: 10px 0;
	background-color: #ADD8E6;
	border-radius: 10px;
	display: inline-table;
}

.viewFull {
	padding: 10px 30px;
	margin: 10px;
	width: 1150px;
	float: left;
	border-radius: 10px;
	background-color: #fff;
}

.descStyle {
	font-weight: bold;
	text-decoration: underline;
}

.leftLabel {
	text-align: right;
	padding-left:20%;
	padding-right:20%;
}

.forPadding {
	padding: 2px;
}

.exam_table {
	margin: auto;
	width: 100%;
	border-collapse: collapse;
}

.exam_table tr {
	height: 28px;
	vertical-align: middle;
	border: 1px solid #fff;
}

.exam_table tr:nth-child(odd) {
	background-color: lightBlue;
}

.exam_table tr:nth-child(even) {
	background-color: lightGrey;
}

.exam_table td, .exam_table th {
	text-align: center;
}

.exam_table th {
	color: #fff;
	background-color: rgb(0, 75, 141);
	
}

.exam_details {
	float: left;
	padding: 2%;
	padding-left:20%;
	padding-right:20%;
	width: 100%;
}
input[type=submit], input[type=reset], input[type=button] {
	border: 0px;
	background: #004B8D;
	color: white;
	border-radius: 5px;
	min-width: 100px;
	height: 25px;
	font-weight: bold;
}
.forButtons, .orLabel{
	text-align: center;
}
.forPadding{
	width: 100%;
}
</style> 
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
						<div>
							<h2 align="center">
								 <label class="descStyle">Summative-1 Examination Schedule</label>
							</h2>
							<hr>
							<label class="leftLabel">From :&nbsp;&nbsp;</label> <label
								class="descStyle ">START DATE</label> <label>To
								:&nbsp;&nbsp;</label> <label class="descStyle">END DATE</label> <br>
						<!-- </div>
						<div class="forPadding"> -->
							<label class="leftLabel">Class :&nbsp;&nbsp;</label> <select
								name="className" id="classType"
								onchange="getStudentsAdminData()">
								<option value="select"><fmt:message key="SELECT" />
								</option>
								<option value="nursery"><fmt:message key="NURSERY" />
								</option>
								<option value="lkg"><fmt:message key="LKG" />
								</option>
								<option value="ukg"><fmt:message key="UKG" />
								</option>
								<option value="first"><fmt:message key="FIRST_STANDARD" />
								</option>
								<option value="second"><fmt:message
										key="SECOND_STANDARD" />
								</option>
								<option value="third"><fmt:message key="THIRD_STANDARD" />
								</option>
								<option value="fourth"><fmt:message
										key="FOURTH_STANDARD" />
								</option>
								<option value="fifth"><fmt:message key="FIFTH_STANDARD" />
								</option>
								<option value="sixth"><fmt:message key="SIXTH_STANDARD" />
								</option>
								<option value="seventh"><fmt:message
										key="SEVENTH_STANDARD" />
								</option>
								<option value="eight"><fmt:message key="EIGHT_STANDARD" />
								</option>
								<option value="nineth"><fmt:message
										key="NINETH_STANDARD" />
								</option>
								<option value="tenth"><fmt:message key="TENTH_STANDARD" />
								</option>
							</select>
						</div>

						<div class="exam_details">
							<table class="exam_table">
								<tr>
									<th>Sl. no</th>
									<th>Subject</th>
									<th>Date</th>
									<th>Time</th>
									
								</tr>
								<c:forEach begin="1" end="6" var="k">
									<tr>
										<td>${k}</td>
										<td>Subject - ##</td>
										<td>Date- ##</td>
										<td>Time- ##</td>
									</tr>
								</c:forEach>
							</table>
							<div>
							
							<div>&nbsp;<br>&nbsp;<br></div>
						<div class="forPadding forButtons">
							<input type="submit" value="Add"/>&nbsp;
							<input type="button" value="Update">&nbsp;
							<input type="reset" value="Reset"/>
						</div>	
								<br />
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