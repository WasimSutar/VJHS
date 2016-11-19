<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Progress Report</title>
<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<script type="text/javascript" src="js_files/jquery.js"></script>
<script type="text/javascript" src="js_files/ie-emulation-modes-warning.js"></script>

<link rel="stylesheet" href="css_files/carousel.css">
<link rel="stylesheet" href="css_files/vjhs_util.css" />
<script type="text/javascript">
	function getStudentsAdminData(){
		if($('#examType').val() != 'select'){
			alert('To get class Admin No for AJAX');
			$('.adminNoDiv').show();
		}else{
			alert('Please select Examination Name first');
			$('#classType').prop('selectedIndex',0);
		}
	}
	
	function getTableData(){
		alert('To get subjects and to prompt to fill marks');
		$('.getAfterAdminNo').show();
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
						<div class="forPadding">
							<label class="viewPLeft">Examination Name :&nbsp;&nbsp;&nbsp;</label>
							<label class="viewPRight">
								<select name="examType" id="examType">
									<option value="select"><fmt:message key="SELECT"/> </option>
									<option value="FA1"><fmt:message key="FA1"/> </option>
									<option value="FA2"><fmt:message key="FA2"/> </option>
									<option value="FA3"><fmt:message key="FA3"/> </option>
									<option value="FA4"><fmt:message key="FA4"/> </option>
									<option value="FA5"><fmt:message key="FA5"/> </option>
									<option value="SA1"><fmt:message key="SA1"/> </option>
									<option value="SA2"><fmt:message key="SA2"/> </option>
									<option value="SA3"><fmt:message key="SA3"/> </option>
									<option value="PAE"><fmt:message key="PAE"/> </option>
									<option value="AE"><fmt:message key="AE"/> </option>
								</select>
							</label>
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
						<div class="getAfterAdminNo">
						<div>&nbsp;</div>
						<div class="forPadding">
							<label class="heddingLabel">Marks Report  :</label>
							<table class="progressReportTab">
								<tr>
									<th>Subjects</th>
									<th>Marks / Out of</th>
									<th>Grade Points</th>
								</tr>
								<c:forEach begin="1" end="10">
									<tr>
										<td>Mathematics</td>
										<td><input type="text" name="mark1" id="mark1" maxlength="3"/>&nbsp;&nbsp;/&nbsp;&nbsp;<label class="outOfMarks">100</label></td>
										<td><label>A1</label></td>
									</tr>
								</c:forEach>
							</table>
						</div>
						<div class="forPadding">
							<table class="totalMarksTab">
								<tr class="totalMarksTR">
									<td class="left"><label>Total Marks :</label></td>
									<td class="middle"><label class="totalMarks"></label>&nbsp;&nbsp;/&nbsp;&nbsp;<label class="outOfMarks">600</label></td>
								</tr>
							</table>
						</div>
						<div class="forPadding">
							<label class="heddingLabel">Attendance Report  :</label>
							<table class="progressReportTab">
								<tr>
									<th>Months</th>
									<th>
										<select name="monthAttn" id="monthAttn">
											<option value="<fmt:message key="SELECT"/>"><fmt:message key="SELECT"/></option>
											<option value="<fmt:message key="JAN"/>"><fmt:message key="JAN"/></option>
											<option value="<fmt:message key="FEB"/>"><fmt:message key="FEB"/></option>
											<option value="<fmt:message key="MAR"/>"><fmt:message key="MAR"/></option>
											<option value="<fmt:message key="APR"/>"><fmt:message key="APR"/></option>
											<option value="<fmt:message key="MAY"/>"><fmt:message key="MAY"/></option>
											<option value="<fmt:message key="JUN"/>"><fmt:message key="JUN"/></option>
											<option value="<fmt:message key="JUL"/>"><fmt:message key="JUL"/></option>
											<option value="<fmt:message key="AUG"/>"><fmt:message key="AUG"/></option>
											<option value="<fmt:message key="SEP"/>"><fmt:message key="SEP"/></option>
											<option value="<fmt:message key="OCT"/>"><fmt:message key="OCT"/></option>
											<option value="<fmt:message key="NOV"/>"><fmt:message key="NOV"/></option>
											<option value="<fmt:message key="DEC"/>"><fmt:message key="DEC"/></option>
										</select>
									</th>
								</tr>
								<tr>
									<td class="left"><label>Number of Working Days :</label></td>
									<td class="middle"><label></label></td>
								</tr>
								<tr>
									<td class="left"><label>Number of Days Present :</label></td>
									<td class="middle"><label></label></td>
								</tr>
							</table>
						</div>
						<div class="forPadding">
							<label class="heddingLabel">Report Summary :</label>
							<table class="totalMarksTab">
								<tr class="totalMarksTR">
									<td class="left"><label>Marks Percentage ( % ) :</label></td>
									<td class="middle"><label></label></td>
								</tr>
								<tr class="totalMarksTR">
									<td class="left"><label>Grade Points Average ( GPA ) :</label></td>
									<td class="middle"><label></label></td>
								</tr>
								<tr class="totalMarksTR">
									<td class="left"><label>Attendance Percentage ( % ) :</label></td>
									<td class="middle"><label></label></td>
								</tr>
							</table>
						</div>
						<div class="forPadding forButtons">
							<input type="submit" value="Add"/>&nbsp;
							<input type="reset" value="Reset"/>
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