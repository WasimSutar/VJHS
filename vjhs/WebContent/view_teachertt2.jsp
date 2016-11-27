<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Teachers Time Table</title>
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="css_files/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="css_files/style.css" />
<script type="text/javascript">
	function onChangeTeacher() {
		var empId = $('#empId option:selected').val();
		if (empId == '') {
			$('.techrTable').addClass('noHide');
			$('.showClassData').hide();
		} else {
			var urlPat = "getTeachertt.teacher?empId=" + empId;
			$(function() {
				$.ajax({
					type : "POST",
					url : urlPat,
					datatype : "xml",
					async : "true",
					beforeSend : function() {
						$('.teachTimTbl select').val('');
					},
					success : function(xml) {
						$(xml).find('LEVEL').each(function() {
							var day = $(this).find("DAY").text();
							var dayVal = getDayVal(day);
							$('#a' + dayVal).val($(this).find("PD1").text());
							$('#b' + dayVal).val($(this).find("PD2").text());
							$('#c' + dayVal).val($(this).find("PD3").text());
							$('#d' + dayVal).val($(this).find("PD4").text());
							$('#e' + dayVal).val($(this).find("PD5").text());
							$('#f' + dayVal).val($(this).find("PD6").text());
							$('#g' + dayVal).val($(this).find("PD7").text());
							$('#h' + dayVal).val($(this).find("PD8").text());
							$('#aC' + dayVal).val($(this).find("PCD1").text());
							$('#bC' + dayVal).val($(this).find("PCD2").text());
							$('#cC' + dayVal).val($(this).find("PCD3").text());
							$('#dC' + dayVal).val($(this).find("PCD4").text());
							$('#eC' + dayVal).val($(this).find("PCD5").text());
							$('#fC' + dayVal).val($(this).find("PCD6").text());
							$('#gC' + dayVal).val($(this).find("PCD7").text());
							$('#hC' + dayVal).val($(this).find("PCD8").text());
						});
						var count = 0;
						$(".teachTimTbl select").each(function() {
							if (this.value != "") {
								count++;
							}
						});
						if (count == 0) {
							$('.clsList').css({
								"border-top" : "1px solid #808080",
								"border-bottom" : "1px solid #808080",
								"border-left" : "1px solid #808080"
							});
							$('.subList').css({
								"border-top" : "1px solid #808080",
								"border-bottom" : "1px solid #808080",
								"border-right" : "1px solid #808080"
							});
							$('.teachTimTbl select').prop('disabled', false);
							$('#edit').hide();
							$('#submit').show();
						} else {
							$('.clsList').css({
								"border-top" : "1px solid #fff",
								"border-bottom" : "1px solid #fff",
								"border-left" : "1px solid #fff"
							});
							$('.subList').css({
								"border-top" : "1px solid #fff",
								"border-bottom" : "1px solid #fff",
								"border-right" : "1px solid #fff"
							});
							$('#edit').show();
							$('#submit').hide();
							$('.teachTimTbl select').prop('disabled', true);
						}
					},
					error : function() {
						alert("Error occured while getting XML");
					}
				});
			});
			$('.techrTable').removeClass('noHide');
		}
	}
	function getDayVal(day) {
		var dayVal = -1;
		if (day == 'MON') {
			dayVal = 1;
		} else if (day == 'TUE') {
			dayVal = 2;
		} else if (day == 'WED') {
			dayVal = 3;
		} else if (day == 'THU') {
			dayVal = 4;
		} else if (day == 'FRI') {
			dayVal = 5;
		} else if (day == 'SAT') {
			dayVal = 6;
		}
		return dayVal;
	}

	$(function() {
		$("#edit").click(function() {
			$('.clsList').css({
				"border-top" : "1px solid #808080",
				"border-bottom" : "1px solid #808080",
				"border-left" : "1px solid #808080"
			});
			$('.subList').css({
				"border-top" : "1px solid #808080",
				"border-bottom" : "1px solid #808080",
				"border-right" : "1px solid #808080"
			});
			$('.teachTimTbl select').prop('disabled', false);
			$('#edit').hide();
			$('#submit').show();
		});
	});

	function resetPage() {
		$('select').val("");
		$('.techrTable').addClass('noHide');
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
				class="mainMenuSubStyle teacherProfile activeProfile">Teachers</span></a>
			<a href="academic_calander.schedule"><span
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
				<div class="leftPaneHeadding">Manage Teachers</div>
				<ul>
					<li><a href="add.teacher">Add Teachers</a></li>
					<li><a href="view.teacher">View Teachers</a></li>
					<li><a href="attendance.teacher">Attendance</a></li>
					<li class="activeLeftPane"><a href="viewtt.teacher">Time
							Table</a></li>
				</ul>
			</div>
			<div class="mainRightBodyStyle">
				<form name="updateCTable" method="post" action="addtt.teacher">
					<div>
						<fieldset>
							<legend>View / Update Time Table</legend>
							<div class="fulWidth">
								<label class="leftLabelST">Please select Teacher to get
									Time Table</label> <label class="rightLabelST"> <select
									name="empId" id="empId" onchange="onChangeTeacher()">
										<option value="">Select</option>
										<c:forEach items="${teacherList}" var="teacher">
											<option value="${teacher.employeeId}">${teacher.teacherName}</option>
										</c:forEach>
								</select>
								</label>
							</div>
							<div class="techrTable noHide">
								<div class="fulWidth">
									<table class="teachTimTbl selectStyleAdd" border="1">
										<tr>
											<th></th>
											<th>Period I</th>
											<th>Period II</th>
											<th>Period III</th>
											<th>Period IV</th>
											<th>Period V</th>
											<th>Period VI</th>
											<th>Period VII</th>
											<th>Period VIII</th>
										</tr>

										<c:forEach begin="1" end="6" var="i">
											<tr>
												<th class="thLabel"><c:choose>
														<c:when test="${i == 1}">
       MON
       <input type="hidden" name="i${i}" id="i${i}" value="MON" />
														</c:when>
														<c:when test="${i==2}">
        TUE
        <input type="hidden" name="i${i}" id="i${i}" value="TUE" />
														</c:when>
														<c:when test="${i==3}">
        WED
        <input type="hidden" name="i${i}" id="i${i}" value="WED" />
														</c:when>
														<c:when test="${i==4}">
        THU
        <input type="hidden" name="i${i}" id="i${i}" value="THU" />
														</c:when>
														<c:when test="${i==5}">
        FRI
        <input type="hidden" name="i${i}" id="i${i}" value="FRI" />
														</c:when>
														<c:when test="${i==6}">
        SAT
        <input type="hidden" name="i${i}" id="i${i}" value="SAT" />
														</c:when>
													</c:choose></th>

												<td><select name="aC${i}" id="aC${i}" class="clsList">
														<option value="" />
														<c:forEach var="classList" items="${classList}">
															<option value="${classList.className}">${classList.className}</option>
														</c:forEach>
												</select><select name="a${i}" id="a${i}" class="subList">
														<option value="" />
														<c:forEach var="subList" items="${subjectList}">
															<option value="${subList.subjectId}">${subList.subjectName}</option>
														</c:forEach>
												</select></td>

												<td><select name="bC${i}" id="bC${i}" class="clsList">
														<option value="" />
														<c:forEach var="classList" items="${classList}">
															<option value="${classList.className}">${classList.className}</option>
														</c:forEach>
												</select><select name="b${i}" id="b${i}" class="subList">
														<option value="" />
														<c:forEach var="subList" items="${subjectList}">
															<option value="${subList.subjectId}">${subList.subjectName}</option>
														</c:forEach>
												</select></td>

												<td><select name="cC${i}" id="cC${i}" class="clsList">
														<option value="" />
														<c:forEach var="classList" items="${classList}">
															<option value="${classList.className}">${classList.className}</option>
														</c:forEach>
												</select><select name="c${i}" id="c${i}" class="subList">
														<option value="" />
														<c:forEach var="subList" items="${subjectList}">
															<option value="${subList.subjectId}">${subList.subjectName}</option>
														</c:forEach>
												</select></td>

												<td><select name="dC${i}" id="dC${i}" class="clsList">
														<option value="" />
														<c:forEach var="classList" items="${classList}">
															<option value="${classList.className}">${classList.className}</option>
														</c:forEach>
												</select><select name="d${i}" id="d${i}" class="subList">
														<option value="" />
														<c:forEach var="subList" items="${subjectList}">
															<option value="${subList.subjectId}">${subList.subjectName}</option>
														</c:forEach>
												</select></td>

												<td><select name="eC${i}" id="eC${i}" class="clsList">
														<option value="" />
														<c:forEach var="classList" items="${classList}">
															<option value="${classList.className}">${classList.className}</option>
														</c:forEach>
												</select><select name="e${i}" id="e${i}" class="subList">
														<option value="" />
														<c:forEach var="subList" items="${subjectList}">
															<option value="${subList.subjectId}">${subList.subjectName}</option>
														</c:forEach>
												</select></td>

												<td><select name="fC${i}" id="fC${i}" class="clsList">
														<option value="" />
														<c:forEach var="classList" items="${classList}">
															<option value="${classList.className}">${classList.className}</option>
														</c:forEach>
												</select><select name="f${i}" id="f${i}" class="subList">
														<option value="" />
														<c:forEach var="subList" items="${subjectList}">
															<option value="${subList.subjectId}">${subList.subjectName}</option>
														</c:forEach>
												</select></td>

												<td><select name="gC${i}" id="gC${i}" class="clsList">
														<option value="" />
														<c:forEach var="classList" items="${classList}">
															<option value="${classList.className}">${classList.className}</option>
														</c:forEach>
												</select><select name="g${i}" id="g${i}" class="subList">
														<option value="" />
														<c:forEach var="subList" items="${subjectList}">
															<option value="${subList.subjectId}">${subList.subjectName}</option>
														</c:forEach>
												</select></td>

												<td><select name="hC${i}" id="hC${i}" class="clsList">
														<option value="" />
														<c:forEach var="classList" items="${classList}">
															<option value="${classList.className}">${classList.className}</option>
														</c:forEach>
												</select><select name="h${i}" id="h${i}" class="subList">
														<option value="" />
														<c:forEach var="subList" items="${subjectList}">
															<option value="${subList.subjectId}">${subList.subjectName}</option>
														</c:forEach>
												</select></td>
											</tr>

										</c:forEach>
									</table>
								</div>
								<div class="formButtons">
									<input type="button" class="btnStyle" id="edit" value="Edit">
									<input type="submit" class="btnStyle" id="submit"
										value="Add / Update"> &nbsp;&nbsp; <input
										class="btnStyle" type="button" id="reset" value="Clear"
										onclick="resetPage()">
								</div>
							</div>
						</fieldset>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="footerStyle">© 2015 All rights Reserved | Vignana
		Jyothi High School</div>
</body>
</html>