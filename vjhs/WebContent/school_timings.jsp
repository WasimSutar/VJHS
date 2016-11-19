<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS::School Timings</title>

<script type="text/javascript" src="js_files/jquery.js"></script>
<script type="text/javascript" src="js_files/jquery.validate.js"></script>
<script type="text/javascript" src="js_files/ie-emulation-modes-warning.js"></script>
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
						<label>School timings</label>
					</div>
					<form action="school_timings_screen" method="post"
						id="school_timings" name="school_timings">
						<fmt:bundle basename="com.vjhs.labels.label">
							<label class="formleft"><fmt:message key="PERIOD"></fmt:message><em>*</em></label>
							<b>:</b>

							<input type="text" name="period" id="period" required
								class="formright">
							<br>

							<label class="formleft"><fmt:message key="TIMINGS"></fmt:message><em>*</em></label>
							<b>:</b>
							<label><fmt:message key="FROM"></fmt:message></label>
							<b>:</b>
							<select name="hour1" id="hour1" onchange="checkTimeHour1()">
								<option value="zero"><fmt:message key="ZERO"></fmt:message>
								</option>
								<option value="seven"><fmt:message key="SEVEN"></fmt:message>
								</option>
								<option value="eight"><fmt:message key="EIGHT"></fmt:message>
								</option>
								<option value="nine"><fmt:message key="NINE"></fmt:message>
								</option>
								<option value="ten"><fmt:message key="TEN"></fmt:message>
								</option>
								<option value="eleven"><fmt:message key="ELEVEN"></fmt:message>
								</option>
								<option value="twelve"><fmt:message key="TWELVE"></fmt:message>
								</option>
								<option value="thirteen"><fmt:message key="THIRTEEN"></fmt:message>
								</option>
								<option value="fourteen"><fmt:message key="FOURTEEN"></fmt:message>
								</option>
								<option value="fifteen"><fmt:message key="FIFTEEN"></fmt:message>
								</option>
								<option value="sixteen"><fmt:message key="SIXTEEN"></fmt:message>
								</option>
								<option value="seventeen"><fmt:message key="SEVENTEEN"></fmt:message>
								</option>
								<option value="eighteen"><fmt:message key="EIGHTEEN"></fmt:message>
								</option>
							</select>

							<select name="min1" id="min1" onchange="checkTimeHour1()">

								<option value="zero"><fmt:message key="ZERO"></fmt:message>
								</option>
								<option value="five"><fmt:message key="FIVE"></fmt:message>
								</option>
								<option value="ten"><fmt:message key="TEN"></fmt:message>
								</option>
								<option value="fifteen"><fmt:message key="FIFTEEN"></fmt:message>
								<option value="twenty"><fmt:message key="TWENTY"></fmt:message>
								</option>
								<option value="twentyfive"><fmt:message
										key="TWENTYFIVE"></fmt:message>
								</option>
								<option value="thirty"><fmt:message key="THIRTY"></fmt:message>
								</option>
								<option value="thirtyfive"><fmt:message
										key="THIRTYFIVE"></fmt:message>
								<option value="fourty"><fmt:message key="FOURTY"></fmt:message>
								</option>
								<option value="fourtyfive"><fmt:message
										key="FOURTYFIVE"></fmt:message>
								</option>
								<option value="fifty"><fmt:message key="FIFTY"></fmt:message>
								</option>
								<option value="fiftyfive"><fmt:message key="FIFTYFIVE"></fmt:message>
								</option>
							</select>

							<label><fmt:message key="TO"></fmt:message></label>
							<b>:</b>
							<select name="hour2" id="hour2" onchange="checkTime()">
								<option value="zero"><fmt:message key="ZERO"></fmt:message>
								</option>
								<option value="seven"><fmt:message key="SEVEN"></fmt:message>
								</option>
								<option value="eight"><fmt:message key="EIGHT"></fmt:message>
								</option>
								<option value="nine"><fmt:message key="NINE"></fmt:message>
								</option>
								<option value="ten"><fmt:message key="TEN"></fmt:message>
								</option>
								<option value="eleven"><fmt:message key="ELEVEN"></fmt:message>
								</option>
								<option value="twelve"><fmt:message key="TWELVE"></fmt:message>
								</option>
								<option value="thirteen"><fmt:message key="THIRTEEN"></fmt:message>
								</option>
								<option value="fourteen"><fmt:message key="FOURTEEN"></fmt:message>
								</option>
								<option value="fifteen"><fmt:message key="FIFTEEN"></fmt:message>
								</option>
								<option value="sixteen"><fmt:message key="SIXTEEN"></fmt:message>
								</option>
								<option value="seventeen"><fmt:message key="SEVENTEEN"></fmt:message>
								</option>
								<option value="eighteen"><fmt:message key="EIGHTEEN"></fmt:message>
								</option>
							</select>

							<select name="min2" id="min2" onchange="checkTime()">

								<option value="zero"><fmt:message key="ZERO"></fmt:message>
								</option>
								<option value="five"><fmt:message key="FIVE"></fmt:message>
								</option>
								<option value="ten"><fmt:message key="TEN"></fmt:message>
								</option>
								<option value="fifteen"><fmt:message key="FIFTEEN"></fmt:message>
								<option value="twenty"><fmt:message key="TWENTY"></fmt:message>
								</option>
								<option value="twentyfive"><fmt:message
										key="TWENTYFIVE"></fmt:message>
								</option>
								<option value="thirty"><fmt:message key="THIRTY"></fmt:message>
								</option>
								<option value="thirtyfive"><fmt:message
										key="THIRTYFIVE"></fmt:message>
								<option value="fourty"><fmt:message key="FOURTY"></fmt:message>
								</option>
								<option value="fourtyfive"><fmt:message
										key="FOURTYFIVE"></fmt:message>
								</option>
								<option value="fifty"><fmt:message key="FIFTY"></fmt:message>
								</option>
								<option value="fiftyfive"><fmt:message key="FIFTYFIVE"></fmt:message>
								</option>
							</select>
							<br>

							<label class="formleft">&nbsp;</label>
							<input type="reset" id="reset" value="Clear" />&nbsp;<input
								type="submit" id="save" value="Save"
								onsubmit="checkTimeHour1();">

						</fmt:bundle>
					</form>
				</div>
			</div>
			<br>
		</div>
		<div class="footer">
			<c:import url="adminfooter.jsp"></c:import>
		</div>
	</div>
</body>
</html>