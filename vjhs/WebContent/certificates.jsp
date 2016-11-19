<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Certificates</title>

<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<script type="text/javascript" src="js_files/jquery.js"></script>
<script type="text/javascript"
	src="js_files/ie-emulation-modes-warning.js"></script>

<link rel="stylesheet" href="css_files/carousel.css">
<link rel="stylesheet" href="css_files/vjhs_util.css" />

<script type="text/javascript">
	function studyCertificate() {
		$('.viewFullRight,.study').show();
		$('.studyConduct,.merit').hide();
	}

	function studyConductCertificate() {
		$('.viewFullRight,.studyConduct').show();
		$('.study,.merit').hide();
	}

	function meritCertificate() {
		$('.viewFullRight,.merit').show();
		$('.study,.studyConduct').hide();
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
						<div class="viewFullLeft">
							<div class="forPadding">
								<a href="javascript:studyCertificate()"><label>Study
										Certificate</label></a>
							</div>
							<div class="forPadding">
								<a href="javascript:studyConductCertificate()"><label>Study-cum-Conduct
										Certificate</label></a>
							</div>
							<div class="forPadding">
								<a href="javascript:meritCertificate()"><label>Merit
										Certificate</label></a>
							</div>
						</div>
						<div class="viewFullRight">
							<div class="study">
								<form action="studyCertificate" method="post">
									<div class="forPadding">
										<label class="hedderText">Details for Study
											Certificate</label>
									</div>
									<div class="forPadding">
										<label class="leftLabel">Admission Number
											:&nbsp;&nbsp;</label> <input type="text" name="adminNo" id="adminNo" />
									</div>
									<div class="forPadding">
										<input type="submit" value="Submit" />&nbsp;<input
											type="reset" value="Reset" />
									</div>
								</form>
							</div>

							<div class="studyConduct">
								<form action="studyConductCert" method="post">
									<div class="forPadding">
										<label class="hedderText">Details for
											Study-cum-Conduct Certificate</label>
									</div>
									<div class="forPadding">
										<label class="leftLabel">Admission Number
											:&nbsp;&nbsp;</label> <input type="text" name="adminNo" id="adminNo" />
									</div>
									<div class="forPadding">
										<label class="leftLabel">Conduct :&nbsp;&nbsp;</label> <select
											name="conductType" id="conductType">
											<option value="select"><fmt:message key="SELECT" /></option>
											<option value="Good"><fmt:message key="GOOD" /></option>
											<option value="Bad"><fmt:message key="BAD" /></option>
											<option value="Satisfactory"><fmt:message
													key="SATISFACTORY" /></option>
										</select>
									</div>
									<div class="forPadding">
										<input type="submit" value="Submit" />&nbsp;<input
											type="reset" value="Reset" />
									</div>
								</form>
							</div>

							<div class="merit">
								<form action="meritCertificate" method="post">
									<div class="forPadding">
										<label class="hedderText">Details for Merit
											Certificate</label>
									</div>
									<div class="forPadding">
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
									</div>
									<div class="forPadding">
										<label class="leftLabel">Name :&nbsp;&nbsp;</label> <input
											type="text" name="nameToCerify" id="nameToCerify" />
									</div>
									<div class="forPadding">
										<label class="leftLabel">Secured :&nbsp;&nbsp;</label> <input
											type="text" name="secured" id="secured" />
									</div>
									<div class="forPadding">
										<label class="leftLabel">Event Name :&nbsp;&nbsp;</label> <input
											type="text" name="eventName" id="eventName" />
									</div>
									<div class="forPadding">
										<label class="leftLabel">Year :&nbsp;&nbsp;</label> <input
											type="text" name="year" id="year" />
									</div>
									<div class="forPadding">
										<label class="leftLabel">Occasion :&nbsp;&nbsp;</label> <input
											type="text" name="occasion" id="occasion" />
									</div>
									<div class="forPadding">
										<input type="submit" value="Submit" />&nbsp;<input
											type="reset" value="Reset" />
									</div>
								</form>
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