<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Class Details</title>

<script type="text/javascript" src="js_files/ie-emulation-modes-warning.js"></script>
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery-ui.js"></script>
<script type="text/javascript" src="js_files/jquery.validate.js"></script>
<script type="text/javascript" src="js_files/register.js"></script>

<link rel="stylesheet" type="text/css" href="css_files/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css_files/carousel.css">
<link rel="stylesheet" type="text/css" href="css_files/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css_files/forms.css">

</head>
<body>
	<div class="container">
		<div class="header">
			<c:import url="adminheader.jsp"></c:import>
		</div>
		<div class="body_content" style="width: 1170px;">
			<div class="viewMiddleClTT">
				<div class="viewFull">
					<div class="headBar">
						<label>Class &amp; Strength</label>
					</div>

					<form action="class_streen" method="post" id="classes_strength"
						name="classes_strength">
						<fmt:bundle basename="com.vjhs.labels.label">
							<label class="formleft"><fmt:message key="CLASS"></fmt:message><em>*</em></label>
							<b>:</b>
							<select class="formright" name="std" id="std">
								<option value="select"><fmt:message key="SELECT"></fmt:message>
								</option>
								<option value="nursery"><fmt:message key="NURSERY"></fmt:message>
								</option>
								<option value="lkg"><fmt:message key="LKG"></fmt:message>
								</option>
								<option value="ukg"><fmt:message key="UKG"></fmt:message>
								</option>
								<option value="first"><fmt:message key="FIRST_STANDARD"></fmt:message>
								</option>
								<option value="second"><fmt:message
										key="SECOND_STANDARD"></fmt:message>
								</option>
								<option value="third"><fmt:message key="THIRD_STANDARD"></fmt:message>
								</option>
								<option value="fourth"><fmt:message
										key="FOURTH_STANDARD"></fmt:message>
								</option>
								<option value="fifth"><fmt:message key="FIFTH_STANDARD"></fmt:message>
								</option>
								<option value="sixth"><fmt:message key="SIXTH_STANDARD"></fmt:message>
								</option>
								<option value="seventh"><fmt:message
										key="SEVENTH_STANDARD"></fmt:message>
								</option>
								<option value="eight"><fmt:message key="EIGHT_STANDARD"></fmt:message>
								</option>
								<option value="nineth"><fmt:message
										key="NINETH_STANDARD"></fmt:message>
								</option>
								<option value="tenth"><fmt:message key="TENTH_STANDARD"></fmt:message>
								</option>
							</select>
							<br>

							<label class="formleft"><fmt:message key="STRENGTH"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="number" name="strength" id="strength" min="0"
								required class="formright">
							<br/><br/>
							<label class="formleft">&nbsp;</label>
							&nbsp;&nbsp;<input type="button" id="edit" value="Edit" />&nbsp;<input
								type="submit" id="save" value="Save">

						</fmt:bundle>
					</form>
				</div>
			</div>

		</div>
		<div class="footer">
			<c:import url="adminfooter.jsp"></c:import>
		</div>
	</div>




</body>
</html>