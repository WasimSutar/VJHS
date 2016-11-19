<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS::View School Timings</title>
<script type="text/javascript" src="js_files/ie-emulation-modes-warning.js"></script>
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="css_files/jquery-ui.js"></script>
<script type="text/javascript" src="js_files/jquery.validate.js"></script>
<script type="text/javascript" src="js_files/register.js"></script>

<link rel="stylesheet" href="js_files/jquery-ui.css">
<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<link rel="stylesheet" href="css_files/carousel.css">
<link rel="stylesheet" href="css_files/forms.css">
<link rel="stylesheet" href="css_files/vjhs_util.css" />
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
						<label>School Timings</label>
					</div>
					<div class="bell_details">
						<div>
							<label> Working Hours : 9:00 am to 5:00 pm </label>
						</div>
						<br />
						<div>
							<label> I Bell : 9:00 am <br /> II Bell : 9:05 am <br />
								Prayer Time : 9:05 am to 9:20 am <br /> III Bell : 9:30 am <br />
								Warning Bell : 4:55 pm <br /> Final Bell :5:00 pm
							</label>
						</div>
					</div>
					<div class="period_details">
						<table class="timings_table">
							<tr>
								<th>Period</th>
								<th>Duration</th>
							</tr>
							<c:forEach begin="1" end="11">
								<tr>
									<td>Period-I</td>
									<td>Duration-I</td>
								</tr>
							</c:forEach>
						</table>
						<div>
							<br />
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="footer">
			<c:import url="adminfooter.jsp"></c:import>
		</div>
	</div>

</body>
</html>