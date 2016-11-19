<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Attendance</title>

<script type="text/javascript" src="js_files/jquery.js"></script>
<script type="text/javascript"
	src="js_files/ie-emulation-modes-warning.js"></script>

<link rel="stylesheet" type="text/css"
	href="css_files/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css_files/carousel.css">
<link rel="stylesheet" type="text/css" href="css_files/vjhs_util.css" />

<script type="text/javascript">
	function getStudentsNames() {
		$(function() {
			var sendURL = 'getStudentName.examinations?className='
					+ $('#className option:selected').val();
			$.ajax({
				type : "POST",
				url : sendURL,
				dataType : "xml",
				cache : false,
				success : function(xml) {
					$('#studentName').find('option:not(:first)').remove();
					$('#admissionNo').find('option').not(':first').remove();
					$(xml).find('STUDENT').each(
							function() {
								var temp = '';
								var temp2 = '';
								var name = $(this).find('NAME').text();
								var adminNo = $(this).find('ADMIN_NO').text();
								temp = '<option value='+adminNo+' >' + name
										+ '</option>';
								temp2 = '<option value='+adminNo+' >' + adminNo
										+ '</option>';
								$('#studentName').append(temp);
								$("#admissionNo").append(temp2);
							});
				},
				error : function() {
					alert("An error occurred while processing XML file.");
				}
			});
		});
	}
	function getStudentAdminNo() {
		$('#admissionNo').val($('#studentName option:selected').val());
		$('#admissionNo').prop('readonly', true);
		$(function() {
			var count = 1;
			$.ajax({
				type : 'POST',
				url : 'getMonthDet.examinations',
				data : {
					'className' : $('#className option:selected').val(),
					'adminNo' : $('#admissionNo option:selected').val()
				},
				dataType : 'xml',
				cache : false,
				success : function(xml) {
					$(xml).find('MONTH_ATTEN').each(function() {
						var temp = '';
						var presentDays = $(this).find('PRESENT_DAYS').text();
						var workingDays = $(this).find('WORKING_DAYS').text();
						var percentage = $(this).find('PERCENTAGE').text();
						var cumulative = $(this).find('VALUE').text();
						$('#a' + count).val(presentDays);
						$('#w' + count).val(workingDays);
						$('#mp' + count).val(percentage);
						count++;
						if (cumulative != 0) {
							$('#cumPercentage').html(cumulative);
							cululative = 0;
						}
					});
					if ($('#cumPercentage').html() == '') {
						$('#cumPercentage').html('0.0');
					}
				},
				error : function() {
					alert("An error occurred while processing XML file.");
				}
			});
		});
	}

	function calPercentage(id) {
		var sub = id.substring(1, id.length);
		var subNo = parseFloat(sub) - 1;
		if (subNo >= 1) {
			var subVal = parseFloat($('#a' + subNo).val());
			if (subVal == '0' || isNaN(subVal)) {
				alert("Please enter Previous Month Attendance");
				$('#' + id).val('0.0');
				$('#a' + subNo).select();
				return;
			}
		}
		var attenDays = parseFloat($("#" + id).val());
		var workingDays = parseFloat($('#w' + sub).val());
		if (attenDays > workingDays) {
			alert('Number of Attended days should be less than or equals to Number of Working days');
			$('#' + id).val('0.0');
			$('#' + id).select();
			return;
		}
		if (attenDays == '' || isNaN(attenDays)) {
			$('#' + id).val('0.0');
			$('#mp' + sub).val('0.0');
			return;
		}
		var percentage = (attenDays * 100) / workingDays;
		$('#mp' + sub).val(round(percentage, 2));
		calCumulative(sub);
	}

	function calCumulative(sub) {
		var percentage = 0;
		var count = 0;
		var perCount = 0;
		for (count = 1; count <= sub; count++) {
			perCount = $('#mp' + count).val();
			percentage += parseFloat(perCount);
		}
		var cumPercentage = (percentage / sub);
		$('#cumPercentage').html(round(cumPercentage, 2));
	}
	function round(value, exp) {
		if (typeof exp === 'undefined' || +exp === 0)
			return Math.round(value);

		value = +value;
		exp = +exp;

		if (isNaN(value) || !(typeof exp === 'number' && exp % 1 === 0))
			return NaN;

		// Shift
		value = value.toString().split('e');
		value = Math.round(+(value[0] + 'e' + (value[1] ? (+value[1] + exp)
				: exp)));

		// Shift back
		value = value.toString().split('e');
		return +(value[0] + 'e' + (value[1] ? (+value[1] - exp) : -exp));
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
							<label>Add Student Attendance Report</label>
						</div>
						<div class="forPadding">
							<h3>
								<c:out value="${message}"></c:out>
							</h3>
						</div>
						<form action="addStudentAtten.examinations" method="POST"
							name="addStudentAtten" id="addStudentAtten">
							<div class="forPadding">
								<label class="viewPLeft">Class :&nbsp;&nbsp;&nbsp;</label> <label
									class="viewPRight"> <select name="className"
									id="className" onchange="getStudentsNames()">
										<option value="select"><fmt:message key="SELECT" />
										</option>
										<option value="nursery"><fmt:message key="NURSERY" />
										</option>
										<option value="lkg"><fmt:message key="LKG" />
										</option>
										<option value="ukg"><fmt:message key="UKG" />
										</option>
										<option value="first"><fmt:message
												key="FIRST_STANDARD" />
										</option>
										<option value="second"><fmt:message
												key="SECOND_STANDARD" />
										</option>
										<option value="third"><fmt:message
												key="THIRD_STANDARD" />
										</option>
										<option value="fourth"><fmt:message
												key="FOURTH_STANDARD" />
										</option>
										<option value="fifth"><fmt:message
												key="FIFTH_STANDARD" />
										</option>
										<option value="sixth"><fmt:message
												key="SIXTH_STANDARD" />
										</option>
										<option value="seventh"><fmt:message
												key="SEVENTH_STANDARD" />
										</option>
										<option value="eight"><fmt:message
												key="EIGHT_STANDARD" />
										</option>
										<option value="nineth"><fmt:message
												key="NINETH_STANDARD" />
										</option>
										<option value="tenth"><fmt:message
												key="TENTH_STANDARD" />
										</option>
								</select>
								</label>
							</div>

							<div class="forPadding">
								<label class="viewPLeft">Student Name
									:&nbsp;&nbsp;&nbsp;</label> <label class="viewPRight"> <select
									name="studentName" id="studentName"
									onchange="getStudentAdminNo()">
										<option value="select"><fmt:message key="SELECT" />
										</option>
								</select>
								</label>
							</div>
							<div class="forPadding ">
								<label class="viewPLeft">Student Admission No
									:&nbsp;&nbsp;&nbsp;</label> <label class="viewPRight"> <select
									name="admissionNo" id="admissionNo" onchange="getTableData()">
										<option value="select"><fmt:message key="SELECT" />
											<c:forEach items="${admissionList}" var="addminVal">
												<option value="${addminVal}">${addminVal}</option>
											</c:forEach>
								</select>
								</label>
							</div>
							<div>&nbsp;</div>
							<div class="forPadding">
								<table class="monthAttend" border="1">
									<tr>
										<th class="toShowNo"></th>
										<th>JUNE</th>
										<th>JULY</th>
										<th>AUGUST</th>
										<th>SEPTEMBER</th>
										<th>OCTOBER</th>
										<th>NOVEMBER</th>
										<th>DECEMBER</th>
										<th>JANUARY</th>
										<th>FEBRUARY</th>
										<th>MARCH</th>
										<th>APRIL</th>
									</tr>
									<tr>
										<th class="toShowNo">Number of Days Attended</th>
										<td><input type="text" class="attenInput" name="a1"
											id="a1" onchange="calPercentage(id)" /></td>
										<td><input type="text" class="attenInput" name="a2"
											id="a2" onchange="calPercentage(id)" /></td>
										<td><input type="text" class="attenInput" name="a3"
											id="a3" onchange="calPercentage(id)" /></td>
										<td><input type="text" class="attenInput" name="a4"
											id="a4" onchange="calPercentage(id)" /></td>
										<td><input type="text" class="attenInput" name="a5"
											id="a5" onchange="calPercentage(id)" /></td>
										<td><input type="text" class="attenInput" name="a6"
											id="a6" onchange="calPercentage(id)" /></td>
										<td><input type="text" class="attenInput" name="a7"
											id="a7" onchange="calPercentage(id)" /></td>
										<td><input type="text" class="attenInput" name="a8"
											id="a8" onchange="calPercentage(id)" /></td>
										<td><input type="text" class="attenInput" name="a9"
											id="a9" onchange="calPercentage(id)" /></td>
										<td><input type="text" class="attenInput" name="a10"
											id="a10" onchange="calPercentage(id)" /></td>
										<td><input type="text" class="attenInput" name="a11"
											id="a11" onchange="calPercentage(id)" /></td>
									</tr>
									<tr>
										<th class="toShowNo">Number of Working Days</th>
										<td><input type="text" class="attenInput" name="w1"
											id="w1" readonly /></td>
										<td><input type="text" class="attenInput" name="w2"
											id="w2" readonly /></td>
										<td><input type="text" class="attenInput" name="w3"
											id="w3" readonly /></td>
										<td><input type="text" class="attenInput" name="w4"
											id="w4" readonly /></td>
										<td><input type="text" class="attenInput" name="w5"
											id="w5" readonly /></td>
										<td><input type="text" class="attenInput" name="w6"
											id="w6" readonly /></td>
										<td><input type="text" class="attenInput" name="w7"
											id="w7" readonly /></td>
										<td><input type="text" class="attenInput" name="w8"
											id="w8" readonly /></td>
										<td><input type="text" class="attenInput" name="w9"
											id="w9" readonly /></td>
										<td><input type="text" class="attenInput" name="w10"
											id="w10" readonly /></td>
										<td><input type="text" class="attenInput" name="w11"
											id="w11" readonly /></td>
									</tr>
									<tr>
										<th class="toShowNo">Monthly Percentage</th>
										<td><input type="text" class="attenInput" name="mp1"
											id="mp1" readonly /></td>
										<td><input type="text" class="attenInput" name="mp2"
											id="mp2" readonly /></td>
										<td><input type="text" class="attenInput" name="mp3"
											id="mp3" readonly /></td>
										<td><input type="text" class="attenInput" name="mp4"
											id="mp4" readonly /></td>
										<td><input type="text" class="attenInput" name="mp5"
											id="mp5" readonly /></td>
										<td><input type="text" class="attenInput" name="mp6"
											id="mp6" readonly /></td>
										<td><input type="text" class="attenInput" name="mp7"
											id="mp7" readonly /></td>
										<td><input type="text" class="attenInput" name="mp8"
											id="mp8" readonly /></td>
										<td><input type="text" class="attenInput" name="mp9"
											id="mp9" readonly /></td>
										<td><input type="text" class="attenInput" name="mp10"
											id="mp10" readonly /></td>
										<td><input type="text" class="attenInput" name="mp11"
											id="mp11" readonly /></td>
									</tr>
								</table>
							</div>
							<div>&nbsp;</div>
							<div class="forPadding">
								<table class="cumulativePercen">
									<tr>
										<th>Cumulative Attendance Percentage ( % )</th>
										<th id="cumPercentage"></th>
									</tr>
								</table>
							</div>
							<div>
								&nbsp;<br>&nbsp;<br>
							</div>
							<div class="forPadding forButtons">
								<input type="submit" value="Add / Update" />&nbsp; <input
									type="reset" value="Reset" />
							</div>
						</form>
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