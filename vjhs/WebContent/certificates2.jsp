<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Certificates</title>
<script type="text/javascript" src="js_files/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery.validate.min.js"></script>
<script type="text/javascript" src="js_files/teacher_registration.js"></script>
<script type="text/javascript" src="js_files/vjhs_util.js"></script>
<script type="text/javascript" src="js_files/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="css_files/jquery-ui.css" />
<script type="text/javascript" src="js_files/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="css_files/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="css_files/style.css" />

<script type="text/javascript">
	$(function() {
		studyCertificate();
	});
	function studyCertificate() {
		$('.studyPane').addClass("activeBottomPane");
		$('.conductPane,.meritPane').removeClass("activeBottomPane");
		$('.viewFullRight,.study').show();
		$('.studyConduct,.merit').hide();
	}

	function studyConductCertificate() {
		$('.conductPane').addClass("activeBottomPane");
		$('.studyPane,.meritPane').removeClass("activeBottomPane");
		$('.viewFullRight,.studyConduct').show();
		$('.study,.merit').hide();
	}

	function meritCertificate() {
		$('.meritPane').addClass("activeBottomPane");
		$('.conductPane,.studyPane').removeClass("activeBottomPane");
		$('.viewFullRight,.merit').show();
		$('.study,.studyConduct').hide();
	}
	function getPrint(id) {
		/* $("#" + id).print(); */
		window.print();
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
					<li><a href="progress_report.examinations">Progress Report</a></li>
					<li class="activeLeftPane"><a href="certificates.examinations">Certificates</a></li>
				</ul>
			</div>
			<div class="mainRightBodyStyle">
				<fmt:bundle basename="com.vjhs.labels.label">
					<div class="fulWidth">
						<div class="subsPane fontSize14 studyPane">
							<a href="javascript:studyCertificate()">Study Certificate</a>
						</div>
						<div class="subsPane fontSize14 conductPane">
							<a href="javascript:studyConductCertificate()">Study-cum-Conduct
								Certificate</a>
						</div>
						<div class="subsPane fontSize14 meritPane">
							<a href="javascript:meritCertificate()">Merit Certificate</a>
						</div>
					</div>
					<div class="fulWidth">
						<div class="study">
							<fieldset>
								<legend>Details for Study Certificate</legend>
								<form action="studyCertificate" method="post">
									<div class="fulWidth">
										<label class="leftLabel">Admission Number</label><label
											class="rightLabel"><input type="text" name="adminNo"
											class="inputType40" id="adminNo" /></label>
									</div>
									<div class="formButtons">
										<input type="submit" value="Submit" class="btnStyle" />&nbsp;&nbsp;<input
											type="reset" class="btnStyle" value="Reset" />
									</div>
								</form>
							</fieldset>
						</div>
						<div class="studyConduct">
							<fieldset>
								<legend>Details for Study-cum-Conduct Certificate</legend>
								<form action="studyConductCert" method="post">
									<div class="fulWidth">
										<label class="leftLabel">Admission Number </label><label
											class="rightLabel"> <input type="text" name="adminNo"
											class="inputType40" id="adminNo" /></label>
									</div>
									<div class="fulWidth">
										<label class="leftLabel">Conduct</label><label
											class="rightLabel"> <select name="conductType"
											class="selectType42" id="conductType">
												<option value="<fmt:message key="SELECT" />"><fmt:message
														key="SELECT" /></option>
												<option value="<fmt:message key="GOOD" />"><fmt:message
														key="GOOD" /></option>
												<option value="<fmt:message key="BAD" />"><fmt:message
														key="BAD" /></option>
												<option value="<fmt:message key="SATISFACTORY" />"><fmt:message
														key="SATISFACTORY" /></option>
										</select></label>
									</div>
									<div class="formButtons">
										<input type="submit" value="Submit" class="btnStyle" />&nbsp;&nbsp;<input
											type="reset" class="btnStyle" value="Reset" />
									</div>
								</form>
							</fieldset>
						</div>
						<div class="merit">
							<fieldset>
								<legend>Details for Merit Certificate</legend>
								<form action="meritCertificate" method="post">
									<div class="fulWidth">
										<label class="leftLabel">Class</label><label
											class="rightLabel"> <select name="className"
											class="selectType42" id="classType"
											onchange="getStudentsAdminData()">
												<option value=""><fmt:message key="SELECT" />
												</option>
												<option value="<fmt:message key="NURSERY" />"><fmt:message
														key="NURSERY" />
												</option>
												<option value="<fmt:message key="LKG" />"><fmt:message
														key="LKG" />
												</option>
												<option value="<fmt:message key="UKG" />"><fmt:message
														key="UKG" />
												</option>
												<option value="<fmt:message key="FIRST_STANDARD" />"><fmt:message
														key="FIRST_STANDARD" />
												</option>
												<option value="<fmt:message key="SECOND_STANDARD" />"><fmt:message
														key="SECOND_STANDARD" />
												</option>
												<option value="<fmt:message key="THIRD_STANDARD" />"><fmt:message
														key="THIRD_STANDARD" />
												</option>
												<option value="<fmt:message key="FOURTH_STANDARD" />"><fmt:message
														key="FOURTH_STANDARD" />
												</option>
												<option value="<fmt:message key="FIFTH_STANDARD" />"><fmt:message
														key="FIFTH_STANDARD" />
												</option>
												<option value="<fmt:message key="SIXTH_STANDARD" />"><fmt:message
														key="SIXTH_STANDARD" />
												</option>
												<option value="<fmt:message key="SEVENTH_STANDARD" />"><fmt:message
														key="SEVENTH_STANDARD" />
												</option>
												<option value="<fmt:message key="EIGHT_STANDARD" />"><fmt:message
														key="EIGHT_STANDARD" />
												</option>
												<option value="<fmt:message key="NINETH_STANDARD" />"><fmt:message
														key="NINETH_STANDARD" />
												</option>
												<option value="<fmt:message key="TENTH_STANDARD" />"><fmt:message
														key="TENTH_STANDARD" />
												</option>
										</select></label>
									</div>
									<div class="fulWidth">
										<label class="leftLabel">Name</label><label class="rightLabel">
											<input type="text" name="nameToCerify" id="nameToCerify"
											class="inputType40" />
										</label>
									</div>
									<div class="fulWidth">
										<label class="leftLabel">Secured</label><label
											class="rightLabel"> <input type="text" name="secured"
											class="inputType40" id="secured" /></label>
									</div>
									<div class="fulWidth">
										<label class="leftLabel">Event Name</label><label
											class="rightLabel"> <input type="text"
											name="eventName" id="eventName" class="inputType40" /></label>
									</div>
									<div class="fulWidth">
										<label class="leftLabel">Year</label><label class="rightLabel">
											<input type="text" name="year" id="year" class="inputType40" />
										</label>
									</div>
									<div class="fulWidth">
										<label class="leftLabel">Occasion</label><label
											class="rightLabel"> <input type="text"
											name="occasion" id="occasion" class="inputType40" /></label>
									</div>
									<div class="formButtons">
										<input type="submit" value="Submit" class="btnStyle" />&nbsp;&nbsp;<input
											type="reset" class="btnStyle" value="Reset" />
									</div>
								</form>
							</fieldset>
						</div>
						<div class="desc">
							<fieldset id="meritCertificate">
								<div class="fulWidth">
									<h1 class="descStyle alignCenter">Certificate of Merit</h1>
								</div>
								<div class="fulWidth">
									This is to certify that <label class="descStyle" id="meritName">Mr.
										Phanangipalli Phani Pavan</label> of class <label class="descStyle"
										id="meritClass">9th </label> of <label class="descStyle"
										id="schoolPlace">VIGNANA JYOTHI High SCHOOL,Nadakuduru</label>
									secured <label class="descStyle" id="ranking">1st place</label>
									in <label class="descStyle" id="eventName"> Sports and
										Games </label> for the year<label class="descStyle" id="eventYear">
										2005</label> and awarded this Certificate of merit on the occasion of
									<label class="descStyle" id="eventName">Anual Day</label>.
								</div>
								<div class="fulWidth">
									<div class="fulWidth">Date:</div>
									<div class="fulWidth">
										<div class="width33">Place:</div>
										<div class="width33 alignCenter">Correspondent</div>
										<div class="width33 alignright">Principal</div>

									</div>

								</div>
								<div class="formButtons">
									<input type="button" value="Print" class="btnStyle"
										onclick="getPrint('meritCertificate')" />
								</div>
							</fieldset>
						</div>

					</div>
				</fmt:bundle>
			</div>
		</div>
	</div>
	<div class="footerStyle">© 2015 All rights Reserved | Vignana
		Jyothi High School</div>
</body>
</html>