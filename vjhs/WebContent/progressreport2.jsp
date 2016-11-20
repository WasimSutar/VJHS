<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Progress Report</title>
<script type="text/javascript" src="js_files/jquery.js"></script>
<link rel="stylesheet" type="text/css"
	href="css_files/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="css_files/style.css" />
<link rel="stylesheet" href="css_files/vjhs_util.css" />
<script type="text/javascript">
	
		
		function calculateSum(input) {
			var sum = 0;
			var sumval = $("#totalMark").val()
			if (!isNaN(sumval) && sumval.length != 0) {
				
				sum = parseFloat(sumval);
				
			}			
				if (!isNaN(input.value) && input.value.length != 0) {
					sum += parseFloat(input.value);
					alert(sum)
					$("#totalMark").val(sum);
				}
		}
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
	
	function handleChange(input) {
	    if( (input.value < 0) || (input.value > 100)){
	    	alert('Mark should be in between 0 and 100');
	    	input.value = ""
	    	input.focus();
	    	return;
	    }else{
	    	var mark = $("#totalMark").val()
	    	average = (sum/600) * 100;
		    var gpa = 0;
		    if ((average >=40) && (average<=50)){
		    	gpa = 5;
		    }else if ((average >50) && (average<=60)){
		    	gpa = 6;
		    }else if ((average >60) && (average<=70)){
		    	gpa = 7;
		    }else if ((average >70) && (average<=80)){
		    	gpa = 8;
		    }else if ((average >80) && (average<=90)){
		    	gpa = 9;
		    }else if ((average >90) && (average<=100)){
		    	gpa = 10;
		    }
	    	
	    }
	  }
	
	function isNumber(evt) {
	    evt = (evt) ? evt : window.event;
	    var charCode = (evt.which) ? evt.which : evt.keyCode;
	    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
	        return false;
	    }
	    return true;
	}
	
	function totalMarks(){
		var sum = 0;
		var average = 0;
		$(".num ").each(function() {
			if ($(this).val() && ($(this).val()).length != 0) {
				
				sum += parseFloat($(this).val());
				
			}
	    average = (sum/600) * 100;
	    var gpa = 0;
	    if ((average >=40) && (average<=50)){
	    	gpa = 5;
	    }else if ((average >50) && (average<=60)){
	    	gpa = 6;
	    }else if ((average >60) && (average<=70)){
	    	gpa = 7;
	    }else if ((average >70) && (average<=80)){
	    	gpa = 8;
	    }else if ((average >80) && (average<=90)){
	    	gpa = 9;
	    }else if ((average >90) && (average<=100)){
	    	gpa = 10;
	    }
	    
		$("#totalMark").val(sum);
		$('#marksaverage').html(Number((average).toFixed(2)) );
		$('#gpa').html(gpa);
		});
	}
	
	function clearMarks(){
	
		$(".num ").each(function() {
			$(this).val('') ;
		});
		
		$(".total").val('');
		
		$('#marksaverage').html("");
	}
	function getAttendancePercentage(){
		
	}
	function getStudentsNames() {
		$(function() {
			var sendURL = 'getMonthDet.examinations?className='
					+ $('#className option:selected').val()+'&adminNo='+ $('#admissionNo option:selected').val();
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
	
	function getWorkingDays() {
		$(function() {
			var sendURL = 'getMonthDet.examinations?className='
					+ $('#className option:selected').val()+'&adminNo='+ $('#admissionNo option:selected').val()+'&month='+$('#monthAttn option:selected').val();
			$.ajax({
				type : "POST",
				url : sendURL,
				dataType : "xml",
				cache : false,
				beforeSend: function(){
					$('#workingDays').html('');
					$('#presentDays').html('');
				},
				success : function(xml) {
					$(xml).find('MONTH_ATTEN').each(
							function() {
								var temp = '';
								var temp2 = '';
								alert($(this).find('PRESENT_DAYS').text());
								var presentDays = $(this).find('PRESENT_DAYS').text();
								var workingDays = $(this).find('WORKING_DAYS').text();
								alert(workingDays+"   "+presentDays);
								$('#workingDays').html(workingDays);
								$('#presentDays').html(presentDays);
								var average = (presentDays / workingDays) * 100;
								$('#attendanceaverage').html(average);
							});
				},
				error : function() {
					alert("An error occurred while processing XML file.");
				}
			});
		});
	}
	
	
	function getAdminssionNumbesByClassName() {
		$(function() {
			var sendURL = 'getAdminssionNumbesByClassName.examinations?className='
					+ $('#className option:selected').val();
			$.ajax({
				type : "POST",
				url : sendURL,
				dataType : "xml",
				cache : false,
				success : function(xml) {
					$('#admissionNo').find('option').not(':first').remove();
					$(xml).find('ADMISSION').each(
							function() {
								
								var temp = '';
								var temp2 = '';
								var adminNo = $(this).find('NUMBER').text();
								var name = $(this).find('NAME').text();
								temp2 = '<option value='+adminNo+' >' + name+" / "+adminNo
										+ '</option>';
								$("#admissionNo").append(temp2);
							});
				},
				error : function() {
					alert("An error occurred while processing XML file.");
				}
			});
		});
	}
	
	

	
	
</script>
</head>
<body>
	<div class="head700">
		<h1>Vignana Jyothi High School (E.M.)</h1>
	</div>
	<div class="mainMenuStyle">
		<div class="menuStyle">
			<a href="overview.profile"><span
				class="profileStyle mainMenuSubStyle">Profile</span></a> <a
				href="add.student"><span class="mainMenuSubStyle studentProfile">Students</span></a>
			<a href="add.teacher"><span
				class="mainMenuSubStyle teacherProfile">Teachers</span></a> <a
				href="academic_calander.schedule"><span
				class="mainMenuSubStyle scheduleProfile">Schedule</span></a> <a
				href="attendance.examinations"><span
				class="mainMenuSubStyle examsProfile activeProfile">Exams</span></a> <a
				href="#"><span class="mainMenuSubStyle smsProfile">SMS</span></a> <a
				href="#"><span class="mainMenuSubStyle libraryProfile">Library</span></a>
			<a href="#"><span class="mainMenuSubStyle vehiclesProfile">Vehicles</span></a>
			<a href="#"><span class="mainMenuSubStyle accountsProfile">Accounts</span></a>
		</div>
	</div>
	<div class="mainBody">
		<div class="mainBodyStyle">
			<div class="mainLeftBodyStyle">
				<div class="leftPaneHeadding">Manage Examinations</div>
				<ul>
					<li><a href="attendance.examinations">Attendance</a></li>
					<li><a href="subjects.examinations">Subjects</a></li>
					<li><a href="schedule.examinations">Schedule</a></li>
					<li><a href="student_mark.examinations">Marks Report</a></li>
					<li class="activeLeftPane"><a
						href="progress_report.examinations">Progress Report</a></li>
					<li><a href="certificates.examinations">Certificates</a></li>
				</ul>
			</div>
			<div class="mainRightBodyStyle">
				<fmt:bundle basename="com.vjhs.labels.label">
					<fieldset>
						<legend>Progress Report</legend>
						<div class="fulWidth">
							<label class="leftLabelST">Examination Name</label> <label
								class="rightLabelST"> <select name="examType"
								id="examType">
									<option value="select"><fmt:message key="SELECT" />
									</option>
									<option value="FA1"><fmt:message key="FA1" />
									</option>
									<option value="FA2"><fmt:message key="FA2" />
									</option>
									<option value="FA3"><fmt:message key="FA3" />
									</option>
									<option value="FA4"><fmt:message key="FA4" />
									</option>
									<option value="FA5"><fmt:message key="FA5" />
									</option>
									<option value="SA1"><fmt:message key="SA1" />
									</option>
									<option value="SA2"><fmt:message key="SA2" />
									</option>
									<option value="SA3"><fmt:message key="SA3" />
									</option>
									<option value="PAE"><fmt:message key="PAE" />
									</option>
									<option value="AE"><fmt:message key="AE" />
									</option>
							</select>
							</label>
						</div>
						<div class="fulWidth">
							<label class="leftLabelST">Class</label> <label
								class="rightLabelST"> <select name="className"
								id="className" onchange="getAdminssionNumbesByClassName();">
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
						<div class="fulWidth">
							<label class="leftLabelST">Student Name / Admission No </label> <label
								class="rightLabelST"> <select name="admissionNo"
								id="admissionNo" onchange="getTableData()">
									<option value="select"><fmt:message key="SELECT" />
									</option>
							</select>
							</label>
						</div>
						<div class="getAfterAdminNo">
							<div>&nbsp;</div>
							<div class="fulWidth">
								<label class="heddingLabel">Marks Report :</label>
								<table class="progressReportTab">
									<tr>
										<th>Subjects</th>
										<th>Marks / Out of 100</th>
										<th>Grade Points</th>
									</tr>
									<c:forEach var="subList" items="${subjectList}">
										<tr>
											<td><c:out value="${subList.subjectName}">${subList.subjectName}</c:out></td>
											<td><input type="text" name="mark1" class="num"
												id="mark1" onkeypress="return isNumber(event)"
												placeholder="0" onchange="handleChange(this);totalMarks()"
												maxlength="3" /></td>
											<td><label class="fonBold">A1</label></td>
										</tr>
									</c:forEach>
								</table>
							</div>
							<div class="fulWidth">
								<table class="totalMarksTab">
									<tr class="totalMarksTR">
										<td>
										<td class="left"><label class="fonBold">Total
												Marks :</label></td>
										<td class="middle"><label id="totalMarks"
											class="totalMarks"></label> <input class="total" type="text"
											name="totalMark" id="totalMark" readonly="readonly"
											style="font: bold;" placeholder="0.0" />

											&nbsp;&nbsp;/&nbsp;&nbsp;<label class="outOfMarks">600</label></td>
									</tr>
								</table>
							</div>
							<div class="fulWidth">
								<label class="heddingLabel">Attendance Report :</label>
								<table class="progressReportTab">
									<tr>
										<th>Months</th>
										<th><select name="monthAttn" id="monthAttn"
											onChange="getWorkingDays();">
												<option value=""><fmt:message key="SELECT" /></option>
												<option value="0"><fmt:message key="JAN" /></option>
												<option value="1"><fmt:message key="FEB" /></option>
												<option value="2"><fmt:message key="MAR" /></option>
												<option value="3"><fmt:message key="APR" /></option>
												<option value="5"><fmt:message key="JUN" /></option>
												<option value="6"><fmt:message key="JUL" /></option>
												<option value="7"><fmt:message key="AUG" /></option>
												<option value="8"><fmt:message key="SEP" /></option>
												<option value="9"><fmt:message key="OCT" /></option>
												<option value="10"><fmt:message key="NOV" /></option>
												<option value="11"><fmt:message key="DEC" /></option>
										</select></th>
									</tr>
									<tr>
										<td class="left "><label class="fonBold">Number
												of Working Days :</label></td>
										<td class="middle"><label id="workingDays"
											class="fonBold"></label></td>
									</tr>
									<tr>
										<td class="left"><label class="fonBold">Number of
												Days Present :</label></td>
										<td class="middle"><label id="presentDays"
											class="fonBold"></label></td>
									</tr>
								</table>
							</div>
							<div class="fulWidth">
								<label class="heddingLabel">Report Summary :</label>
								<table class="totalMarksTab">
									<tr class="totalMarksTR">
										<td class="left"><label class="fonBold">Marks
												Percentage ( % ) :</label></td>
										<td class="middle" id="marksaverage"><label></label></td>
									</tr>
									<tr class="totalMarksTR">
										<td class="left"><label class="fonBold">Grade
												Points Average ( GPA ) :</label></td>
										<td class="middle" id="gpa"><label></label></td>
									</tr>
									<tr class="totalMarksTR">
										<td class="left"><label class="fonBold">Attendance
												Percentage ( % ) :</label></td>
										<td class="middle" id="attendanceaverage"><label></label></td>
									</tr>
								</table>
							</div>
							<div class="formButtons">
								<input type="submit" value="Add" class="btnStyle" />&nbsp;&nbsp;
								<input type="reset" value="Reset" class="btnStyle" onclick="clearMarks()" />
							</div>
						</div>
					</fieldset>
				</fmt:bundle>
			</div>
		</div>
	</div>
	<div class="footerStyle">� 2015 All rights Reserved | Vignana
		Jyothi High School</div>
</body>
</html>