<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<script type="text/javascript" src="js_files/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery.validate.min.js"></script>
<script type="text/javascript" src="js_files/teacher_registration.js"></script>
<script type="text/javascript" src="js_files/vjhs_util.js"></script>
<script type="text/javascript" src="js_files/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="css_files/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="css_files/style.css" />
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
				<div class="leftPaneHeadding">Manage Students</div>
				<ul>
					<li class="activeLeftPane"><a href="add.teacher">Add
							Teachers</a></li>
					<li><a href="view.teacher">View Teachers</a></li>
					<li><a href="attendance.teacher">Attendance</a></li>
					<li><a href="viewtt.teacher">Time Table</a></li>
				</ul>
			</div>
			<div class="mainRightBodyStyle">
				<form action="regform.teacher" method="post" id="teacher_reg_form"
					name="teacher_reg_form">
					<fmt:bundle basename="com.vjhs.labels.label">
						<div class="adminContactDet">
							<fieldset>
								<legend>Employment Details</legend>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="EMPLOYEE_ID" /></label>
									<label class="rightLabel"> <input class="inputType"
										type="text" name="employee_id" id="employee_id" maxlength="8"
										required placeholder="Enter Employee Id"
										value="${sessionScope.teacher.employeeId}"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="DATE_OF_JOINING"></fmt:message></label> <label
										class="rightLabel"> <input type="text" name="doj"
										id="doj" required
										value="<fmt:formatDate value = "${sessionScope.teacher.dateOfJoining}"/>"
										class="datepicker inputType"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="DESIGNATION" /></label>
									<label class="rightLabel"> <input class="inputType"
										type="text" name="designation" id="designation" maxlength="20"
										required placeholder="Enter Designation"
										value="${sessionScope.teacher.designation}"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="LOGIN_ID" /></label>
									<label class="rightLabel"><input class="inputType"
										type="text" name="login_id" id="login_id" maxlength="10"
										required placeholder="Enter Login Id"
										value="${sessionScope.teacher.user_id}"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="PASSWORD" /></label>
									<label class="rightLabel"><input class="inputType"
										type="password" name="password" id="password" maxlength="15"
										required placeholder="Enter Password"
										value="${sessionScope.teacher.password}"></label>
								</div>
							</fieldset>
							<fieldset>
								<legend>Contact Details</legend>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="ADDRESS" /></label>
									<label class="rightLabel"> <textarea id="address"
											class="textareaStyle" name="address" rows="20" cols="25"
											required placeholder="Enter Address">${sessionScope.teacher.addresss}</textarea></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="CITY" /></label> <label
										class="rightLabel"> <input class="inputType"
										type="text" name="city" id="city" maxlength="25" required
										placeholder="Enter City" value="${sessionScope.teacher.city}"></label>
								</div>
								<div class="fulWidth"></div>
								<label class="leftLabel"><fmt:message key="STATE"></fmt:message></label>
								<label class="rightLabel"> <input class="inputType"
									type="text" name="state" id="state" maxlength="15" required
									placeholder="Enter State" value="${sessionScope.teacher.state}"></label>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="NATIONALITY" /></label>
									<label class="rightLabel"><input class="inputType"
										type="text" name="nationality" id="nationality" value="India"
										readonly="readonly"
										value="${sessionScope.teacher.nationality}"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="PHONE_NO" /></label>
									<label class="rightLabel"><input class="inputType"
										type="tel" name="phone_no" id="phone_no" maxlength="10"
										onkeypress="return allowonlynumber(event,id)" required
										placeholder="Enter Mobile Number"
										value="${sessionScope.teacher.phone}"></label>
								</div>
								<div class="fulWidth">&nbsp;</div>
							</fieldset>
						</div>
						<div class="perDetStyle">
							<fieldset>
								<legend>Professional Details</legend>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="QUALIFICATION" /></label> <label class="rightLabel"><input
										class="inputType" type="text" name="qualification"
										id="qualification" maxlength="20" required
										placeholder="Enter Teacher's Qualification"
										value="${sessionScope.teacher.qualification}"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="EXPERIENCE" /></label>
									<label class="rightLabel"> <input class="inputType"
										type="number" name="experience" id="experience" maxlength="2"
										required placeholder="Enter Experience of Teacher"
										value="${sessionScope.teacher.experiance}"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="SUBJECTS" /></label>
									<label class="rightLabel"> <input class="inputType"
										type="text" name="subjects" id="subjects" maxlength="30"
										required placeholder="Enter Subjects to be Handled"
										value="${sessionScope.teacher.subjects}"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="CLASSES" /></label>
									<label class="rightLabel"> <input class="inputType"
										type="text" name="classes" id="classes" maxlength="20"
										required placeholder="Enter Classes Handling by Teacher"
										value="${sessionScope.teacher.classes}"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="CLASS_TEACHER" /></label> <label class="rightLabel"> <select
										class="selectType" name="class_teacher" id="class_teacher">
											<option value="nursery"
												<c:if test="${sessionScope.teacher.class_teacher=='nursery'}">selected</c:if>><fmt:message
													key="NURSERY"></fmt:message>
											</option>
											<option value="lkg"
												<c:if test="${sessionScope.teacher.class_teacher=='lkg'}">selected</c:if>><fmt:message
													key="LKG"></fmt:message>
											</option>
											<option value="ukg"
												<c:if test="${sessionScope.teacher.class_teacher=='ukg'}">selected</c:if>><fmt:message
													key="UKG"></fmt:message>
											</option>
											<option value="first"
												<c:if test="${sessionScope.teacher.class_teacher=='first'}">selected</c:if>><fmt:message
													key="FIRST_STANDARD"></fmt:message>
											</option>
											<option value="second"
												<c:if test="${sessionScope.teacher.class_teacher=='second'}">selected</c:if>><fmt:message
													key="SECOND_STANDARD"></fmt:message>
											</option>
											<option value="third"
												<c:if test="${sessionScope.teacher.class_teacher=='third'}">selected</c:if>><fmt:message
													key="THIRD_STANDARD"></fmt:message>
											</option>
											<option value="fourth"
												<c:if test="${sessionScope.teacher.class_teacher=='fourth'}">selected</c:if>><fmt:message
													key="FOURTH_STANDARD"></fmt:message>
											</option>
											<option value="fifth"
												<c:if test="${sessionScope.teacher.class_teacher=='fifth'}">selected</c:if>><fmt:message
													key="FIFTH_STANDARD"></fmt:message>
											</option>
											<option value="sixth"
												<c:if test="${sessionScope.teacher.class_teacher=='sixth'}">selected</c:if>><fmt:message
													key="SIXTH_STANDARD"></fmt:message>
											</option>
											<option value="seventh"
												<c:if test="${sessionScope.teacher.class_teacher=='seventh'}">selected</c:if>><fmt:message
													key="SEVENTH_STANDARD"></fmt:message>
											</option>
											<option value="eight"
												<c:if test="${sessionScope.teacher.class_teacher=='eight'}">selected</c:if>><fmt:message
													key="EIGHT_STANDARD"></fmt:message>
											</option>
											<option value="nineth"
												<c:if test="${sessionScope.teacher.class_teacher=='nineth'}">selected</c:if>><fmt:message
													key="NINETH_STANDARD"></fmt:message>
											</option>
											<option value="tenth"
												<c:if test="${sessionScope.teacher.class_teacher=='tenth'}">selected</c:if>><fmt:message
													key="TENTH_STANDARD"></fmt:message>
											</option>
									</select></label>
								</div>
							</fieldset>
							<fieldset>
								<legend>Personal Details</legend>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="NAME_OF_TEACHER" /></label> <label class="rightLabel"><input
										class="inputType" type="text" name="name_of_teacher"
										id="name_of_teacher" maxlength="40" required
										placeholder="Enter Teacher's Name"
										value="${sessionScope.teacher.teacherName}"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="TEACHER_FATHER_NAME" /></label> <label class="rightLabel"><input
										class="inputType" type="text" name="father_name"
										id="father_name" maxlength="40"
										placeholder="Enter Teacher's Father Name"
										value="${sessionScope.teacher.fatherOrHusbundName}"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="DOB" /></label> <label
										class="rightLabel"><input class="datepicker inputType"
										type="text" name="dob" id="dob" required readonly
										value="${sessionScope.teacher.dateOfBirth}"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="GENDER" /></label>
									<label class="rightLabel"><select class="selectType"
										id="gender" name="gender">

											<option value="male"
												<c:if test="${sessionScope.teacher!=null && sessionScope.teacher.gender=='male'}">selected</c:if>><fmt:message
													key="GENDER_MALE"></fmt:message>
											</option>
											<option value="female"
												<c:if test="${sessionScope.teacher!=null && sessionScope.teacher.gender=='female'}">selected</c:if>><fmt:message
													key="GENDER_FEMALE"></fmt:message>
											</option>
									</select></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="MARITAL_STATUS" /></label> <label class="rightLabel"><select
										class="selectType" id="marStatus" name="marStatus">

											<option value="single"
												<c:if test="${sessionScope.teacher!=null && sessionScope.teacher.maritalStatus=='single'}">selected</c:if>><fmt:message
													key="MARITAL_STATUS_SINGLE"></fmt:message>
											</option>
											<option value="married"
												<c:if test="${sessionScope.teacher!=null && sessionScope.teacher.maritalStatus=='married'}">selected</c:if>><fmt:message
													key="MARITAL_STATUS_MARRIED"></fmt:message>
											</option>
									</select></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="RELIGION" /></label>
									<label class="rightLabel"><input class="inputType"
										type="text" name="religion" id="religion" maxlength="10"
										required placeholder="Enter Religion"
										value="${sessionScope.teacher.religion}"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="CASTE" /></label> <label
										class="rightLabel"><input class="inputType"
										type="text" name="caste" id="caste" maxlength="5" required
										placeholder="Enter Caste"
										value="${sessionScope.teacher.religion}"></label>
								</div>
							</fieldset>
						</div>
						<div class="formButtons">
							<input type="submit" class="btnStyle" id="submit" name="Submit"
								value="Submit"> &nbsp;&nbsp; <input class="btnStyle"
								type="reset" id="reset" name="reset" value="Clear">
						</div>
					</fmt:bundle>
				</form>

			</div>
		</div>
	</div>
	<div class="footerStyle">© 2016 All rights Reserved | Vignana
		Jyothi High School</div>
</body>
</html>