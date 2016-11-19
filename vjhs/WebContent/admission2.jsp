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
<script type="text/javascript" src="js_files/student_admission.js"></script>
<script type="text/javascript" src="js_files/vjhs_util.js"></script> 
<script type="text/javascript" src="js_files/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="css_files/jquery-ui.css" />
<link rel="stylesheet" type="text/css" href="css_files/style.css" />
<script type="text/javascript">
	$(function() {
		/* var adminDet = parseFloat($('.adminDetStyle').height());
		var conDet = parseFloat($('.conDetStyle').height());
		var perDet = adminDet + conDet + 18;
		$('.personlDetails').height(perDet); */

		$('#photo').on(
				'change',
				function() {
					var countFiles = $(this)[0].files.length;
					var imgPath = $(this)[0].value;
					var extn = imgPath.substring(imgPath.lastIndexOf('.') + 1)
							.toLowerCase();
					if (extn == "gif" || extn == "png" || extn == "jpg"
							|| extn == "jpeg") {
						$('.admissionLeft').addClass('adminLeftLabel');
						$('.admissionRight').addClass('adminRightLabel');
						$('.adminRightLabel').height(
								$('.adminLeftLabel').height());
						var image_holder = $('.adminRightLabel');
						image_holder.empty();
						if (typeof (FileReader) != "undefined") {
							for (var i = 0; i < countFiles; i++) {
								var reader = new FileReader();
								reader.onload = function(e) {
									$("<img/>", {
										"src" : e.target.result,
										"class" : "thumb-image"
									}).appendTo(image_holder);
								}
								image_holder.show();
								reader.readAsDataURL($(this)[0].files[i]);
							}
						} else {
							alert("This browser does not support FileReader.");
						}
					} else {
						alert("Please Select only Images");
						$('.adminRightLabel').val('');
					}
				});
	});
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
				href="add.student"><span
				class="mainMenuSubStyle studentProfile activeProfile">Students</span></a>
			<a href="add.teacher"><span
				class="mainMenuSubStyle teacherProfile">Teachers</span></a> <a
				href="academic_calander.schedule"><span
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
					<li class="activeLeftPane"><a href="add.student">Add
							Student</a></li>
					<li><a href="view.student">View Students</a></li>
				</ul>
			</div>
			<div class="mainRightBodyStyle">
				<form action="regform.student" enctype="multipart/form-data"
					method="post" id="registrationform" name="registrationform">
					<fmt:bundle basename="com.vjhs.labels.label">
						<div class="adminContactDet">
							<fieldset class="adminDetStyle">
								<legend>Admission Details</legend>
								<div class="admissionLeft">
									<div class="fulWidth">
										<label class="leftLabel"><fmt:message key="PHOTO"></fmt:message></label>
										<label class="rightLabel"> <input type="file"
											class="inputType" name="photo" id="photo"
											value="${sessionScope.student.photo}"
											accept=".png,.jpeg,.jpg" size="2">
										</label>
									</div>
									<div class="fulWidth">
										<label class="leftLabel"><fmt:message
												key="ADMISSION_NO"></fmt:message></label> <label class="rightLabel"><input
											type="text" name="admission_no" id="admission_no"
											class="inputType" maxlength="8"
											placeholder="Enter Admission Number"
											value="${sessionScope.student.admissionNo}"></label>
									</div>
									<div class="fulWidth">
										<label class="leftLabel"><fmt:message key="DOA"></fmt:message></label>
										<label class="rightLabel"> <input type="text"
											name="todaydate" class="datepicker inputType"
											value="${sessionScope.student!=null?sessionScope.student.dateOfAdmission:now}"
											/></label>
									</div>
									<div class="fulWidth">
										<label class="leftLabel"><fmt:message
												key="ADMISSION_CLASS"></fmt:message></label> <label
											class="rightLabel"> <select name="std" id="std"
											class="selectType">
												<%-- <option value="select"
													<c:if test="${sessionScope.student==null}">selected</c:if>><fmt:message
														key="SELECT"></fmt:message>
												</option> --%>
												<option value="nursery"
													<c:if test="${sessionScope.student.classAdmitted=='nursery'}">selected</c:if>><fmt:message
														key="NURSERY"></fmt:message>
												</option>
												<option value="lkg"
													<c:if test="${sessionScope.student.classAdmitted=='lkg'}">selected</c:if>><fmt:message
														key="LKG"></fmt:message>
												</option>
												<option value="ukg"
													<c:if test="${sessionScope.student.classAdmitted=='ukg'}">selected</c:if>><fmt:message
														key="UKG"></fmt:message>
												</option>
												<option value="first"
													<c:if test="${sessionScope.student.classAdmitted=='first'}">selected</c:if>><fmt:message
														key="FIRST_STANDARD"></fmt:message>
												</option>
												<option value="second"
													<c:if test="${sessionScope.student.classAdmitted=='second'}">selected</c:if>><fmt:message
														key="SECOND_STANDARD"></fmt:message>
												</option>
												<option value="third"
													<c:if test="${sessionScope.student.classAdmitted=='third'}">selected</c:if>><fmt:message
														key="THIRD_STANDARD"></fmt:message>
												</option>
												<option value="fourth"
													<c:if test="${sessionScope.student.classAdmitted=='fourth'}">selected</c:if>><fmt:message
														key="FOURTH_STANDARD"></fmt:message>
												</option>
												<option value="fifth"
													<c:if test="${sessionScope.student.classAdmitted=='fifth'}">selected</c:if>><fmt:message
														key="FIFTH_STANDARD"></fmt:message>
												</option>
												<option value="sixth"
													<c:if test="${sessionScope.student.classAdmitted=='sixth'}">selected</c:if>><fmt:message
														key="SIXTH_STANDARD"></fmt:message>
												</option>
												<option value="seventh"
													<c:if test="${sessionScope.student.classAdmitted=='seventh'}">selected</c:if>><fmt:message
														key="SEVENTH_STANDARD"></fmt:message>
												</option>
												<option value="eight"
													<c:if test="${sessionScope.student.classAdmitted=='eight'}">selected</c:if>><fmt:message
														key="EIGHT_STANDARD"></fmt:message>
												</option>
												<option value="nineth"
													<c:if test="${sessionScope.student.classAdmitted=='nineth'}">selected</c:if>><fmt:message
														key="NINETH_STANDARD"></fmt:message>
												</option>
												<option value="tenth"
													<c:if test="${sessionScope.student.classAdmitted=='tenth'}">selected</c:if>><fmt:message
														key="TENTH_STANDARD"></fmt:message>
												</option>
										</select>
										</label>
									</div>
									<div class="fulWidth">
										<label class="leftLabel"><fmt:message
												key="MEDIUM_OF_INSTRUCTION"></fmt:message></label> <label
											class="rightLabel"><input type="text"
											class="inputType" name="medium_of_instruction"
											id="medium_of_instruction" maxlength="10" value="English"
											readonly="readonly"></label>
									</div>
								</div>
								<div class="admissionRight"></div>
							</fieldset>
							<fieldset class="conDetStyle">
								<legend>Contact Details</legend>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="RESIDENCE"></fmt:message></label>
									<label class="rightLabel"><textarea id="residence"
											name="residence" rows="20" cols="25" class="textareaStyle"
											placeholder="Enter Residence Address">${sessionScope.student.residence}</textarea></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="NATIONALITY"></fmt:message></label>
									<label class="rightLabel"><input type="text"
										class="inputType" name="nationality" id="nationality"
										value="India" readonly="readonly" required></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="STATE"></fmt:message></label>
									<label class="rightLabel"><input type="text"
										class="inputType" name="state" id="state" maxlength="15"
										value="${sessionScope.student.state}"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="FATHER_ADDRESS"></fmt:message></label> <label class="rightLabel"><input
										type="checkbox" id="add" name="add" onclick="getAddress()"
										class="checkboxType"
										<c:if test="${sessionScope.student.address != null }">checked</c:if>>
										Same as Residence address</label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel">&nbsp;</label><label
										class="rightLabel"><textarea id="father_address"
											name="father_address" rows="20" cols="25"
											class="textareaStyle" placeholder="Enter Father's Address">${sessionScope.student.address}</textarea></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="PHONE_NO"></fmt:message></label>
									<label class="rightLabel"><input type="tel"
										class="inputType" name="phone_no" id="phone_no" maxlength="10"
										onkeypress="return allowonlynumber(event)"
										placeholder="Enter Mobile Number"
										value="${sessionScope.student.mobile}"> </label>
								</div>
							</fieldset>
						</div>
						<div class="perDetStyle">
							<fieldset class="personlDetails">
								<legend>Personal Details</legend>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="NAME_OF_STUDENT"></fmt:message></label> <label
										class="rightLabel"><input type="text" name="name"
										class="inputType" id="name" maxlength="40"
										placeholder="Enter Student Name"
										value="${sessionScope.student.studentName}" /></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="DOB"></fmt:message></label>
									<label class="rightLabel"><input type="text" name="dob"
										class="datepicker inputType"
										value="${sessionScope.student!=null?sessionScope.student.dateOfBirth:now}"
										></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="GENDER"></fmt:message></label>
									<label class="rightLabel"><select id="gender"
										class="selectType" name="gender">
											
											<option value="male"
												<c:if test="${sessionScope.student!=null && sessionScope.student.gender=='male'}">selected</c:if>><fmt:message
													key="GENDER_MALE"></fmt:message>
											</option>
											<option value="female"
												<c:if test="${sessionScope.student!=null && sessionScope.student.gender=='female'}">selected</c:if>><fmt:message
													key="GENDER_FEMALE"></fmt:message>
											</option>
									</select> </label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="FATHER_NAME"></fmt:message></label>
									<label class="rightLabel"><input type="text"
										class="inputType" name="father_name" id="father_name"
										maxlength="40" placeholder="Enter Father Name"
										value="${sessionScope.student.fatherName}"> </label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="MOTHER_NAME"></fmt:message></label>
									<label class="rightLabel"><input type="text"
										class="inputType" name="mother_name" id="mother_name"
										maxlength="40" placeholder="Enter Mother Name"
										value="${sessionScope.student.motherName}"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="MOTHER_TONGUE"></fmt:message></label> <label class="rightLabel"><input
										type="text" name="mother_tongue" id="mother_tongue"
										class="inputType" maxlength="10"
										placeholder="Enter Mother_Tongue"
										value="${sessionScope.student.motherTongue}"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="FATHER_OCCUPATION"></fmt:message></label> <label
										class="rightLabel"><input type="text"
										class="inputType" name="father_occupation"
										id="father_occupation" maxlength="20"
										placeholder="Enter Occupation of the Father"
										value="${sessionScope.student.fatherOccupation}"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="RELIGION"></fmt:message></label>
									<label class="rightLabel"><input type="text"
										class="inputType" name="religion" id="religion" maxlength="10"
										placeholder="Enter Religion"
										value="${sessionScope.student.religion}"> </label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="CASTE"></fmt:message></label>
									<label class="rightLabel"><input type="text"
										class="inputType" name="caste" id="caste" maxlength="20"
										placeholder="Enter Caste"
										value="${sessionScope.student.caste}" /></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="COC"></fmt:message></label>
									<label class="rightLabel"> <input type="text"
										name="coc" id="coc" maxlength="5" class="inputType"
										placeholder="Enter Category of Caste"
										value="${sessionScope.student.coc}">
									</label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="MARKS_OF_IDENTITY"></fmt:message></label> <label
										class="rightLabel"><textarea id="marks_of_identity"
											name="marks_of_identity" rows="20" cols="25"
											class="textareaStyle" placeholder="Enter Marks of Identity">${sessionScope.student.identityMarks}</textarea></label>
								</div>
							</fieldset>
						</div>
						<div class="preSchoolDetStyle">
							<fieldset>
								<legend>Previous School Details</legend>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="PREVIOUS_SCHOOL"></fmt:message></label> <label
										class="rightLabel"><textarea name="previous_school"
											id="previous_school" class="textareaStyle"
											placeholder="Enter Previous School Studied">${sessionScope.student.previousSchool}</textarea></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message
											key="RECORD_TC_DATE"></fmt:message></label> <span class="rightLabel"><label><input
											type="radio" name="tcRad" id="tcNo" checked
											class="checkboxType" onclick="showTC()"> <fmt:message
												key="NO"></fmt:message></label> <label><input type="radio"
											name="tcRad" id="tcYes" class="checkboxType"
											onclick="showTC()"> <fmt:message key="YES"></fmt:message>
									</label></span>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="TC_NUMBER"></fmt:message></label>
									<label class="rightLabel"><input type="text"
										class="inputType" name="tcNum" id="tcNum" class="noHide"
										placeholder="Enter TC Number"
										value="${sessionScope.student.tcNumber}" /></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="TC_DATE"></fmt:message></label>
									<label class="rightLabel"><input type="text"
										class="inputType" name="rec_tc_date"
										value="${sessionScope.student!=null?sessionScope.student.tcDate:now}"
										class="datepicker noHide"> </label>
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
	<div class="footerStyle">© 2015 All rights Reserved | Vignana
		Jyothi High School</div>
</body>
</html>