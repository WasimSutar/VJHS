<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Home Page</title>
</head>
<body>
	<jsp:include page="vjhstop.jsp" />
	<c:set var="page" scope="request" value="STUDENT" />
	<jsp:include page="vjhsmenu.jsp" />
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
				<c:if test="${messageStudent != null}">
					<div class="
					<c:if test="${status == 'S'}">
				         success-message
				     </c:if>
				    <c:if test="${status == 'E'}">
				         error-message
				     </c:if>
				     <c:if test="${status == 'W'}">
				         warning-message
				     </c:if>
					">
				 		<c:out value="${messageStudent}"></c:out>
					</div>
				</c:if>
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
											class="inputType" maxlength="8" onkeypress="return allowonlynumber(event, 8, admission_no)"
											placeholder="Enter Admission Number"
											value="${sessionScope.student.admissionNo}"></label>
									</div>
									<div class="fulWidth">
										<label class="leftLabel"><fmt:message key="DOA"></fmt:message></label>
										<label class="rightLabel"> <input type="text"
											name="todaydate" class="datepicker inputType"
											value="<fmt:formatDate value="${sessionScope.student!=null?sessionScope.student.dateOfAdmission:now}" pattern="dd/MM/yyyy"/>" /></label>
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
												<option value="NUR"
													<c:if test="${sessionScope.student.classAdmitted=='NUR'}">selected</c:if>><fmt:message
														key="NURSERY"></fmt:message>
												</option>
												<option value="LKG"
													<c:if test="${sessionScope.student.classAdmitted=='LKG'}">selected</c:if>><fmt:message
														key="LKG"></fmt:message>
												</option>
												<option value="UKG"
													<c:if test="${sessionScope.student.classAdmitted=='UKG'}">selected</c:if>><fmt:message
														key="UKG"></fmt:message>
												</option>
												<option value="I"
													<c:if test="${sessionScope.student.classAdmitted=='I'}">selected</c:if>><fmt:message
														key="FIRST_STANDARD"></fmt:message>
												</option>
												<option value="II"
													<c:if test="${sessionScope.student.classAdmitted=='II'}">selected</c:if>><fmt:message
														key="SECOND_STANDARD"></fmt:message>
												</option>
												<option value="III"
													<c:if test="${sessionScope.student.classAdmitted=='III'}">selected</c:if>><fmt:message
														key="THIRD_STANDARD"></fmt:message>
												</option>
												<option value="IV"
													<c:if test="${sessionScope.student.classAdmitted=='IV'}">selected</c:if>><fmt:message
														key="FOURTH_STANDARD"></fmt:message>
												</option>
												<option value="V"
													<c:if test="${sessionScope.student.classAdmitted=='V'}">selected</c:if>><fmt:message
														key="FIFTH_STANDARD"></fmt:message>
												</option>
												<option value="VI"
													<c:if test="${sessionScope.student.classAdmitted=='VI'}">selected</c:if>><fmt:message
														key="SIXTH_STANDARD"></fmt:message>
												</option>
												<option value="VII"
													<c:if test="${sessionScope.student.classAdmitted=='VII'}">selected</c:if>><fmt:message
														key="SEVENTH_STANDARD"></fmt:message>
												</option>
												<option value="VIII"
													<c:if test="${sessionScope.student.classAdmitted=='VIII'}">selected</c:if>><fmt:message
														key="EIGHT_STANDARD"></fmt:message>
												</option>
												<option value="IX"
													<c:if test="${sessionScope.student.classAdmitted=='IX'}">selected</c:if>><fmt:message
														key="NINETH_STANDARD"></fmt:message>
												</option>
												<option value="X"
													<c:if test="${sessionScope.student.classAdmitted=='X'}">selected</c:if>><fmt:message
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
										onkeypress="return allowonlynumber(event, 10, phone_no)"
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
										value="<fmt:formatDate value="${sessionScope.student!=null?sessionScope.student.dateOfBirth:now}" pattern="dd/MM/yyyy"/>"></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabel"><fmt:message key="GENDER"></fmt:message></label>
									<label class="rightLabel"><select id="gender"
										class="selectType" name="gender">

											<option value="male"
												<c:if test="${sessionScope.student.gender=='male'}">selected</c:if>><fmt:message
													key="GENDER_MALE"></fmt:message>
											</option>
											<option value="female"
												<c:if test="${sessionScope.student.gender=='female'}">selected</c:if>><fmt:message
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
									<label class="rightLabel"> <select id="coc"
										class="selectType" name="coc">
												<option value="<fmt:message
													key="COC_OTHERS"></fmt:message>"
												<c:if test="${sessionScope.student.coc=='Others'}">selected</c:if>><fmt:message
													key="COC_OTHERS"></fmt:message>
											</option>
											<option value="<fmt:message
													key="COC_OC"></fmt:message>"
												<c:if test="${sessionScope.student.coc=='OC'}">selected</c:if>><fmt:message
													key="COC_OC"></fmt:message>
											</option>
											<option value="<fmt:message
													key="COC_BC"></fmt:message>"
												<c:if test="${sessionScope.student.coc=='BC'}">selected</c:if>><fmt:message
													key="COC_BC"></fmt:message>
											</option>
											<option value="<fmt:message
													key="COC_SC"></fmt:message>"
												<c:if test="${sessionScope.student.coc=='SC'}">selected</c:if>><fmt:message
													key="COC_SC"></fmt:message>
											</option>
											<option value="<fmt:message
													key="COC_ST"></fmt:message>"
												<c:if test="${sessionScope.student.coc=='ST'}">selected</c:if>><fmt:message
													key="COC_ST"></fmt:message>
											</option>
									</select>
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
											class="checkboxType"> <fmt:message key="NO"></fmt:message></label>
										<label><input type="radio" name="tcRad" id="tcYes"
											class="checkboxType"> <fmt:message key="YES"></fmt:message>
									</label></span>
								</div>

								<div class="fulWidth noHide">
									<label class="leftLabel"><fmt:message key="TC_NUMBER"></fmt:message></label>
									<label class="rightLabel"><input type="text"
										class="inputType" name="tcNum" id="tcNum" maxlength="8"
										placeholder="Enter TC Number" onkeypress="return allowonlynumber(event, 8, tcNum)"
										value="${sessionScope.student.tcNumber}" /></label>
								</div>
								<div class="fulWidth noHide">
									<label class="leftLabel"><fmt:message key="TC_DATE"></fmt:message></label>
									<label class="rightLabel"> <input type="text"
										name="rec_tc_date" class="datepicker inputType"
										value="<fmt:formatDate value="${sessionScope.student!=null?sessionScope.student.tcDate:now}" pattern="dd/MM/yyyy"/>" /></label>

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
	<jsp:include page="vjhsbottom.jsp" />
	<script type="text/javascript">
		$(document).ready(function() {
			$("#tcYes").click(function() {
				$(".noHide").show();
			});
			$("#tcNo").click(function() {
				$(".noHide").hide();
			});
			
			var tcNumber = $('#tcNum').val();
			if(tcNumber != null && "" != tcNumber){
				$("#tcYes").prop("checked","true");
				$("#tcYes").trigger("click");
			}
		});

		$(function() {
			var adminDet = parseFloat($('.adminDetStyle').height());
			var conDet = parseFloat($('.conDetStyle').height());
			var perDet = adminDet + conDet + 18;
			$('.personlDetails').height(perDet);

			$('#photo')
					.on(
							'change',
							function() {
								var countFiles = $(this)[0].files.length;
								var imgPath = $(this)[0].value;
								var extn = imgPath.substring(
										imgPath.lastIndexOf('.') + 1)
										.toLowerCase();
								if (extn == "gif" || extn == "png"
										|| extn == "jpg" || extn == "jpeg") {
									$('.admissionLeft').addClass(
											'adminLeftLabel');
									$('.admissionRight').addClass(
											'adminRightLabel');
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
											reader
													.readAsDataURL($(this)[0].files[i]);
										}
									} else {
										alert("This browser does not support FileReader.");
									}
								} else {
									alert("Please Select only Images");
									$('#photo').val('');
									$('.adminRightLabel').val('');
								}
							});
		});
	</script>
</body>
</html>