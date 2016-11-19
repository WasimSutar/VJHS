<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Add Subject</title>

<script type="text/javascript" src="js_files/ie-emulation-modes-warning.js"></script>
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery-ui.js"></script>
<script type="text/javascript" src="js_files/jquery.validate.js"></script>
<script type="text/javascript" src="js_files/register.js"></script>

<link rel="stylesheet" type="text/css" href="css_files/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css_files/carousel.css">
<link rel="stylesheet" type="text/css" href="js_files/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css_files/forms.css">
<link rel="stylesheet" type="text/css" href="css_files/vjhs_util.css" />
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

						<h2 align="center">
							<label class="descStyle">Examination Schedule</label>
						</h2>
						<hr>

						<div class="forPadding">
							<label class="leftLabelAdd"> Employee Id :<em>* </em>&nbsp;&nbsp;&nbsp;
							</label> <label class="rightlabel"> <input type="text"
								name="employee_id" id="employee_id" maxlength="8" required
								placeholder="Enter Employee Id">
							</label>
						</div>
						<div class="forPadding">
							<label class="leftLabelAdd">Exam Type :<em>* </em>&nbsp;&nbsp;&nbsp;
							</label> <label class="rightlabel"> <select name="examType"
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

						<div class="forPadding">
							<label class="leftLabelAdd"> Subject :<em>* </em>&nbsp;&nbsp;&nbsp;
							</label> <label class="rightlabel"> <input type="text" name="sub"
								id="sub" required placeholder="Enter Subject name">
							</label>
						</div>

						<div class="forPadding">
							<label class="leftLabelAdd"> Date :<em>* </em>&nbsp;&nbsp;&nbsp;
							</label> <label class="rightlabel"> <input type="date"
								name="date" id="date" required>
							</label>
						</div>

						<div class="forPadding">
							<label class="leftLabelAdd"> Time :<em>* </em>&nbsp;&nbsp;&nbsp;
							</label> <label class="rightlabel"> <input type="number"
								name="hour" id="hour" required min="0" max="24"
								class="forDivideHalf" placeholder="Hour"> / <input
								type="number" name="min" id="min" required min="0" max="60"
								class="forDivideHalf" placeholder="Min">

							</label>
						</div>
						<div class="forPadding">
							<label class="leftLabelAdd"> Role :<em>* </em>&nbsp;&nbsp;&nbsp;
							</label> <label class="rightlabel"> <input type="text"
								name="role" id="role" required placeholder="Enter Role">
							</label>
						</div>

						<div class="forPadding">
							<label class="leftLabelAdd"> Room no :<em>* </em>&nbsp;&nbsp;&nbsp;
							</label> <label class="rightlabel"> <input type="text"
								name="room" id="room" required placeholder="Enter Room no">
							</label>
						</div>

						<div>
							&nbsp;<br>&nbsp;<br>
						</div>
						<div class="forPadding forButtons">
							<input type="submit" value="Add" />&nbsp;<input type="button"
								value="Update">&nbsp;<input type="reset" value="Reset" />
						</div>
						<br />
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