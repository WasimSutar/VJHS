<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Marks</title>

<script type="text/javascript" src="js_files/jquery.js"></script>
<script type="text/javascript" src="js_files/ie-emulation-modes-warning.js"></script>

<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<link rel="stylesheet" href="css_files/carousel.css">
<link rel="stylesheet" href="css_files/vjhs_util.css" />

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
						<div class="forPadding adminNoDiv">
							<label class="viewPLeft">Student Admission No :&nbsp;&nbsp;&nbsp;</label>
							<label class="viewPRight">
								<select name="admissionNo" id="admissionNo" onchange="getTableData()">
									<option value="select"><fmt:message key="SELECT"/> </option>
									<option value="1211">1211</option>
									<option value="1212">1212</option>
								</select>
							</label>
						</div>
						<div class="forPadding">
							<div class="orLabel"><label>-- OR -- </label></div>
						</div>
						<div class="forPadding">
							<label class="viewPLeft">Class :&nbsp;&nbsp;&nbsp;</label>
							<label class="viewPRight">
								<select name="className" id="classType" onchange="getStudentsAdminData()">
									<option value="select"><fmt:message key="SELECT"/> </option>
									<option value="nursery"><fmt:message key="NURSERY"/> </option>
									<option value="lkg"><fmt:message key="LKG"/> </option>
									<option value="ukg"><fmt:message key="UKG"/> </option>
									<option value="first"><fmt:message key="FIRST_STANDARD"/> </option>
									<option value="second"><fmt:message key="SECOND_STANDARD"/> </option>
									<option value="third"><fmt:message key="THIRD_STANDARD"/> </option>
									<option value="fourth"><fmt:message key="FOURTH_STANDARD"/> </option>
									<option value="fifth"><fmt:message key="FIFTH_STANDARD"/> </option>
									<option value="sixth"><fmt:message key="SIXTH_STANDARD"/> </option>
									<option value="seventh"><fmt:message key="SEVENTH_STANDARD"/> </option>
									<option value="eight"><fmt:message key="EIGHT_STANDARD"/> </option>
									<option value="nineth"><fmt:message key="NINETH_STANDARD"/> </option>
									<option value="tenth"><fmt:message key="TENTH_STANDARD"/> </option>
								</select>
							</label>
						</div>
						
						<div class="forPadding">
							<label class="viewPLeft">Student Name :&nbsp;&nbsp;&nbsp;</label>
							<label class="viewPRight">
								<select name="examType" id="examType">
									<option value="select"><fmt:message key="SELECT"/> </option>
								</select>
							</label>
						</div>
					
						<div class="forPadding forButtons">
							<input type="submit" value="Submit"/>
							<input type="reset" value="Reset"/>
						</div>
						<div class="resultData">
							<c:import url="student_marks_child.jsp"></c:import>
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