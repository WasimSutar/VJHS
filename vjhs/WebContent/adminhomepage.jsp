<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS::Admin Homepage</title>
<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<script type="text/javascript"
	src="js_files/ie-emulation-modes-warning.js"></script>
<link rel="stylesheet" href="css_files/carousel.css" />
<style type="text/css">
.col-lg-4 {
	position: relative;
	border: 2px;
}

.col-lg-4 .imgWrap {
	margin: 0;
	padding: 0;
	position: relative;
	cursor: pointer;
	/* margin-left: -50px */
}

.col-lg-4 .imgWrap .imgDescription img {
	display: block;
	position: relative;
	z-index: 10;
	/* margin: -15px 0 */
}

.col-lg-4 .imgWrap .imgDescription {
	display: block;
	position: absolute;
	z-index: 5;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box
}

.col-lg-4 .imgWrap a {
	display: block;
	font-size: 14px;
	line-height: 25px;
	margin-left: 15px;;
	color: #fff;
	text-align: left;
	font-weight: bold;
}

.col-lg-4 .imgWrap .imgDescription {
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	padding: 5px;
	background-color: rgb(0, 75, 141);
	text-align: center;
	backface-visibility: hidden;
	-webkit-transform: rotateY(-180deg);
	-moz-transform: rotateY(-180deg);
	transform: rotateY(-180deg);
	-webkit-transition: all .5s;
	-moz-transition: all .5s;
	transition: all .5s
}

.col-lg-4 .imgWrap .imgDescription {
	backface-visibility: hidden;
	-webkit-transition: all .5s;
	-moz-transition: all .5s;
	transition: all .5s
}

.col-lg-4 .imgWrap:hover img, div.hover img {
	-webkit-transform: rotateY(180deg);
	-moz-transform: rotateY(180deg);
	transform: rotateY(180deg)
}

.col-lg-4 .imgWrap:hover .imgDescription, div.hover div {
	-webkit-transform: rotateY(0);
	-moz-transform: rotateY(0);
	transform: rotateY(0)
}

a:hover {
	text-decoration: underline;
}

.imgDescription p {
	color: #FFEBCD;
	font-size: 16px;
	text-align: center;
}

.imgWrap .imgDescription .divAdminLeft {
	width: 50%;
	float: left;
	padding: 5px 15px 5px 0;
	text-align: right;
	border-right: 1px solid #FFF;
}

.imgWrap .imgDescription div .divAdminRight {
	width: 50%;
	float: left;
	padding: 5px;
}

.imgWrap .imgDescription div .divAdminRight a {
	display: block;
	font-size: 14px;
	line-height: 25px;
	color: #fff;
	font-weight: bold;
	text-align: left;
}

.imgWrap .imgDescription div .divAdminLeft a {
	display: block;
	font-size: 14px;
	line-height: 25px;
	color: #fff;
	font-weight: bold;
	text-align: right;
}
</style>
</head>
<body>
	<div class="container">
		<div class="header">
			<c:import url="adminheader.jsp"></c:import>
		</div>
		<div class="body_content">
			<h2></h2>
			<div class="container marketing">

				<!-- Three columns of text below the carousel -->
				<div class="row">

					<!-- /.col-lg-4 -->
					<div class="col-lg-4">
						<div class="imgWrap">
							<img class="img-circle" src="img/profile.jpg" alt="#"
								style="width: 140px; height: 140px;"> <br> <br>
							<p style="font-weight: bold;">Manage the Information about
								School</p>
							<div class="imgDescription">
								<p style="font-weight: bold;">Manage the Information about
									School</p>
								<a href="overview.profile">Overview</a> <a
									href="classstrength.profile">Classes &amp; Strengths</a> <a
									href="feestructure.profile">Fee Structure</a>
							</div>
						</div>
					</div>
					<!-- /.col-lg-4 -->
					<!-- /.col-lg-4 -->
					<div class="col-lg-4">
						<div class="imgWrap">
							<img class="img-circle" src="img/student.jpg" alt="#"
								style="width: 140px; height: 140px;"> <br> <br>
							<p style="font-weight: bold;">Store and Manage the Student
								Details</p>
							<div class="imgDescription">
								<p style="font-weight: bold;">Store and Manage the Student
									Details</p>
								<a href="add.student">Add Students</a> <a href="view.student">View
									Students</a>
							</div>
						</div>
					</div>
					<!-- /.col-lg-4 -->
					<div class="col-lg-4">
						<div class="imgWrap">
							<img class="img-circle" src="img/teachers.jpg" alt="#"
								style="width: 140px; height: 140px;"> <br> <br>
							<p style="font-weight: bold;">Store and Manage Teacher
								Performances</p>
							<div class="imgDescription">
								<p style="font-weight: bold;">Store and Manage Teacher
									Performances</p>
								<div>
									<div class="divAdminLeft">
										<a href="add.teacher">Add Teachers</a> <a
											href="attendance.teacher">Attendance</a> <a
											href="viewAttendance.teacher">View Attendance</a>
									</div>
									<div class="divAdminRight">
										<a href="view.teacher">View Teachers</a> <a
											href="addtt.teacher">Add Time Table</a> <a
											href="viewtt.teacher">View Time Table</a>
									</div>
								</div>


							</div>
						</div>
					</div>
					<!-- /.col-lg-4 -->
				</div>
				<!-- /.row -->
				<!-- Three columns of text below the carousel -->
				<div class="row">
					<div class="col-lg-4">
						<div class="imgWrap">
							<img class="img-circle" src="img/schedule.jpg" alt="#"
								style="width: 140px; height: 140px;"> <br> <br>
							<p style="font-weight: bold;">Manage your Academic Schedule
								and Events</p>
							<div class="imgDescription">
								<p style="font-weight: bold;">Manage your Academic Schedule
									and Events</p>
								<div>
									<div class="divAdminLeft">
										<a href="academic_calander.schedule">Academic Calendar</a> <a
											href="school_timings.schedule">School Timings</a> <a
											href="class_tt.schedule">Class Time Tables</a>
									</div>
									<div class="divAdminRight">
										<a href="events.schedule">Events</a> <a
											href="holidays.schedule">Holidays List</a>
									</div>
								</div>


							</div>

						</div>
					</div>
					<!-- /.col-lg-4 -->
					<div class="col-lg-4">
						<div class="imgWrap">
							<img class="img-circle" src="img/examinations.jpg" alt="#"
								style="width: 140px; height: 140px;"> <br> <br>
							<p style="font-weight: bold;">Manage all Examination
								Schedules and Student Performances</p>
							<div class="imgDescription">
								<p style="font-weight: bold;">Manage all Examination
									Schedules and Student Performances</p>
								<div>
									<div class="divAdminLeft">
										<a href="attendance.examinations">Attendance</a> <a
											href="subjects.examinations">Subjects</a> <a
											href="schedule.examinations">Schedule</a>
									</div>
									<div class="divAdminRight">
										<a href="student_mark.examinations">Student Marks</a> <a
											href="progress_report.examinations">Progress Reports</a> <a
											href="certificates.examinations">Certificates</a>
									</div>
								</div>


							</div>
						</div>
					</div>
					<!-- /.col-lg-4 -->
					<div class="col-lg-4">
						<div class="imgWrap">
							<img class="img-circle" src="img/sms.jpg" alt="#"
								style="width: 140px; height: 140px;"> <br> <br>
							<p style="font-weight: bold;">Send Short Message Service to
								your Students and Staff.</p>
							<div class="imgDescription">
								<p style="font-weight: bold;">Send Short Message Service to
									your Students and Staff.</p>
								<a href="#">Send SMS</a>

							</div>
						</div>
					</div>
					<!-- /.col-lg-4 -->
				</div>

				<!-- Three columns of text below the carousel -->
				<div class="row">
					<div class="col-lg-4">
						<div class="imgWrap">
							<img class="img-circle" src="img/library.jpg" alt="#"
								style="width: 140px; height: 140px;"> <br> <br>
							<p style="font-weight: bold;">Manage your Library
								Functionalities</p>
							<div class="imgDescription">
								<p style="font-weight: bold;">Manage your Library
									Functionalities</p>
								<a href="#">Library</a>

							</div>
						</div>
					</div>
					<!-- /.col-lg-4 -->
					<div class="col-lg-4">
						<div class="imgWrap">
							<img class="img-circle" src="img/vehicles.jpg" alt="#"
								style="width: 140px; height: 140px;"> <br> <br>
							<p style="font-weight: bold;">Manage your Transportation
								Details</p>
							<div class="imgDescription">
								<p style="font-weight: bold;">Manage your Transportation
									Details</p>
								<a href="#">Transportation</a>

							</div>
						</div>
					</div>
					<!-- /.col-lg-4 -->
					<div class="col-lg-4">
						<div class="imgWrap">
							<img class="img-circle" src="img/accounts.jpg" alt="#"
								style="width: 140px; height: 140px;"> <br> <br>
							<p style="font-weight: bold;">Keep Track of your Accounts</p>
							<div class="imgDescription">
								<p style="font-weight: bold;">Keep Track of your Accounts</p>
								<a href="#">Accounts</a>

							</div>
						</div>
					</div>
					<!-- /.col-lg-4 -->
				</div>
			</div>
		</div>


		<div class="footer">
			<c:import url="adminfooter.jsp"></c:import>
		</div>


	</div>

</body>
</html>