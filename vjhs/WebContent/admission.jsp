<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Registration</title>
<link
	href="http://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css"
	rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>

<script type="text/javascript"
	src="js_files/ie-emulation-modes-warning.js"></script>
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery-ui.js"></script>
<script type="text/javascript" src="js_files/jquery.validate.js"></script>
<script type="text/javascript" src="js_files/register.js"></script>

<link rel="stylesheet" type="text/css"
	href="css_files/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css_files/carousel.css">
<link rel="stylesheet" type="text/css" href="css_files/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css_files/forms.css">

<style type="text/css">
.thumb-image {
	float: right;
	width: 160px;
	height: 200px;
	padding: 5px;
	position: relative;
	width: 200px;
}
</style>
<script type="text/javascript">
	$(function() {
		$('#photo').on(
				'change',
				function() {
					var countFiles = $(this)[0].files.length;
					var imgPath = $(this)[0].value;
					var extn = imgPath.substring(imgPath.lastIndexOf('.') + 1)
							.toLowerCase();
					var image_holder = $('#imgDisp');
					image_holder.empty();
					if (extn == "gif" || extn == "png" || extn == "jpg"
							|| extn == "jpeg") {
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
						$('#photo').val('');
					}
				});
	});
</script>

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
						<label>Admission Form</label>
					</div>
					<h4>
						<c:out value="${messageStudent}"></c:out>
					</h4>
					<form action="regform.student" enctype="multipart/form-data"
						method="post" id="registrationform" name="registrationform">
						<fmt:bundle basename="com.vjhs.labels.label">

							<label class="formleft" style="float: left"><fmt:message
									key="PHOTO"></fmt:message><em>*</em></label>
							<b style="float: left">:</b> &nbsp;&nbsp;
							<input type="file" name="photo" id="photo"
								value="${sessionScope.student.photo}" accept=".png,.jpeg,.jpg"
								size="2" required class="formright" style="float: left">
							<br>
							<br>
							<span id="imgDisp"></span>
							<label class="formleft"><fmt:message key="ADMISSION_NO"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="admission_no" id="admission_no"
								maxlength="8" required class="formright"
								placeholder="Enter Admission Number"
								value="${sessionScope.student.admissionNo}">
							<br>
							<%-- <c:set var="now" value="<%=new java.util.Date()%>" /> --%>
							<label class="formleft"><fmt:message key="DOA"></fmt:message></label>
							<b>:</b>
							<input type="text" name="todaydate"
								value="${sessionScope.student!=null?sessionScope.student.dateOfAdmission:now}"
								class="datepicker">
							<br>
							<label class="formleft"><fmt:message
									key="NAME_OF_STUDENT"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="name" id="name" maxlength="40" required
								class="formright" placeholder="Enter Student Name"
								value="${sessionScope.student.studentName}">
							<br>

							<label class="formleft"><fmt:message key="DOB"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="dob"
								value="${sessionScope.student!=null?sessionScope.student.dateOfBirth:now}"
								class="datepicker">
							<br>

							<label class="formleft"><fmt:message key="GENDER"></fmt:message><em>*</em></label>
							<b>:</b>
							<select id="gender" name="gender" class="formright">
								<%-- <option value="select"
									<c:if test="${sessionScope.student==null}">selected</c:if>><fmt:message
										key="SELECT"></fmt:message>
								</option> --%>
								<option value="male"
									<c:if test="${sessionScope.student!=null && sessionScope.student.gender=='male'}">selected</c:if>><fmt:message
										key="GENDER_MALE"></fmt:message>
								</option>
								<option value="female"
									<c:if test="${sessionScope.student!=null && sessionScope.student.gender=='female'}">selected</c:if>><fmt:message
										key="GENDER_FEMALE"></fmt:message>
								</option>
							</select>
							<br>

							<label class="formleft"><fmt:message key="NATIONALITY"></fmt:message></label>
							<b>:</b>
							<input type="text" name="nationality" id="nationality"
								value="India" readonly="readonly" required class="formright">
							<br>

							<label class="formleft"><fmt:message key="STATE"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="state" id="state" maxlength="15"
								required class="formright" value="${sessionScope.student.state}">
							<br>

							<label class="formleft"><fmt:message key="RELIGION"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="religion" id="religion" maxlength="10"
								required class="formright" placeholder="Enter Religion"
								value="${sessionScope.student.religion}">
							<br>

							<label class="formleft"><fmt:message key="CASTE"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="caste" id="caste" maxlength="20"
								required class="formright" placeholder="Enter Caste"
								value="${sessionScope.student.caste}">
							<br>

							<label class="formleft"><fmt:message key="COC"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="coc" id="coc" maxlength="5" required
								class="formright" placeholder="Enter Category of Caste"
								value="${sessionScope.student.coc}">
							<br>

							<label class="formleft"><fmt:message key="MOTHER_TONGUE"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="mother_tongue" id="mother_tongue"
								maxlength="10" required class="formright"
								placeholder="Enter Mother_Tongue"
								value="${sessionScope.student.motherTongue}">
							<br>

							<label class="formleft"><fmt:message key="FATHER_NAME"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="father_name" id="father_name"
								maxlength="40" required class="formright"
								placeholder="Enter Father Name"
								value="${sessionScope.student.fatherName}">
							<br>

							<label class="formleft"><fmt:message key="MOTHER_NAME"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="mother_name" id="mother_name"
								maxlength="40" required class="formright"
								placeholder="Enter Mother Name"
								value="${sessionScope.student.motherName}">
							<br>

							<label class="formleft"><fmt:message key="RESIDENCE"></fmt:message><em>*</em></label>
							<b>:</b>
							<textarea id="residence" name="residence" rows="20" cols="25"
								required class="formright" placeholder="Enter Residence Address">${sessionScope.student.residence}</textarea>
							<br>

							<label class="formleft"><fmt:message
									key="FATHER_OCCUPATION"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" name="father_occupation"
								id="father_occupation" maxlength="20" required class="formright"
								placeholder="Enter Occupation of the Father"
								value="${sessionScope.student.fatherOccupation}">
							<br>


							<label class="formleft"><fmt:message key="FATHER_ADDRESS"></fmt:message></label>
							<b>:</b>
							<label class="formright"><input type="checkbox" id="add"
								name="add" onclick="getAddress()"
								<c:if test="${sessionScope.student.address != null }">checked</c:if>>
								Same as Residence address</label>
							<br>
							<label class="formleft"></label>
							<b>&nbsp;</b>
							<textarea id="father_address" name="father_address" rows="20"
								cols="25" required class="formright"
								placeholder="Enter Father's Address">${sessionScope.student.address}</textarea>
							<br>

							<label class="formleft"><fmt:message key="PHONE_NO"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="tel" name="phone_no" id="phone_no" maxlength="10"
								onkeypress="return allowonlynumber(event)" required
								class="formright" placeholder="Enter Mobile Number"
								value="${sessionScope.student.mobile}">
							<br>

							<label class="formleft"><fmt:message
									key="PREVIOUS_SCHOOL"></fmt:message></label>
							<b>:</b>
							<textarea name="previous_school" id="previous_school" required
								class="formright" placeholder="Enter Previous School Studied">${sessionScope.student.previousSchool}</textarea>
							<br>

							<label class="formleft"><fmt:message key="RECORD_TC_DATE"></fmt:message><em>*</em></label>
							<b>:</b>
							<label class="spacRad"><input type="radio" name="tcRad"
								id="tcNo" checked onclick="showTC()"> <fmt:message
									key="NO"></fmt:message></label>
							<label class="spacRad"><input type="radio" name="tcRad"
								id="tcYes" onclick="showTC()"> <fmt:message key="YES"></fmt:message>
							</label>&nbsp;&nbsp;<label class="minWid"><input type="text"
								name="tcNum" id="tcNum" class="noHide"
								placeholder="Enter TC Number"
								value="${sessionScope.student.tcNumber}" /></label>&nbsp;
				<label class="minWid"><input type="text" name="rec_tc_date"
								value="${sessionScope.student!=null?sessionScope.student.tcDate:now}"
								class="datepicker noHide"> <br></label>
							<br>

							<label class="formleft"><fmt:message
									key="ADMISSION_CLASS"></fmt:message><em>*</em></label>
							<b>:</b>

							<select class="formright" name="std" id="std">
								<option value="select"
									<c:if test="${sessionScope.student==null}">selected</c:if>><fmt:message
										key="SELECT"></fmt:message>
								</option>
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
							<br>

							<label class="formleft"><fmt:message
									key="MEDIUM_OF_INSTRUCTION"></fmt:message></label>
							<b>:</b>
							<input type="text" name="medium_of_instruction"
								id="medium_of_instruction" maxlength="10" value="English"
								readonly="readonly" class="formright">
							<br>

							<label class="formleft"><fmt:message
									key="MARKS_OF_IDENTITY"></fmt:message><em>*</em></label>
							<b>:</b>
							<textarea id="marks_of_identity" name="marks_of_identity"
								rows="20" cols="25" required class="formright"
								placeholder="Enter Marks of Identity">${sessionScope.student.identityMarks}</textarea>
							<br>


							<label class="reset_submit"> <input type="submit"
								id="submit" name="Submit" value="Submit"> &nbsp;&nbsp; <input
								type="reset" id="reset" name="reset" value="Clear"></label>
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