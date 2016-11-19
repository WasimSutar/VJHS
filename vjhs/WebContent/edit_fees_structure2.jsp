<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Overview</title>
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<link rel="stylesheet" type="text/css" href="css_files/style.css" />
<script type="text/javascript">
	$(document).ready(function() {
		$(".num").each(function() {
			$(this).keyup(function() {
				var sum = calculateSum();
				$("#total_fee").val(sum);
			});
		});
	});

	function calculateSum() {
		var sum = 0;
		$(".num").each(function() {
			if (!isNaN(this.value) && this.value.length != 0) {
				sum += parseFloat(this.value)
			}
		});
		return sum;
	}
</script>
</head>
<body>
	<div class="head700">
		<h1>Vignana Jyothi High School (E.M.)</h1>
	</div>
	<div class="mainMenuStyle">
		<div class="menuStyle">
			<a href="overview.profile"><span
				class="profileStyle mainMenuSubStyle activeProfile">Profile</span></a> <a
				href="add.student"><span class="mainMenuSubStyle studentProfile">Students</span></a>
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
				<div class="leftPaneHeadding">Manage Profile</div>
				<ul>
					<li><a href="overview.profile">Overview</a></li>
					<li><a href="classstrength.profile">Classes &amp;
							Strengths</a></li>
					<li class="activeLeftPane"><a href="feestructure.profile">Fee
							Structure</a></li>
				</ul>
			</div>
			<div class="mainRightBodyStyle">
				<form action="updateFeeStr.profile" method="post"
					id="feesStructureForm" name="feesStructureForm">
					<fmt:bundle basename="com.vjhs.labels.label">
						<div>
							<fieldset>
								<legend>Manage Fee Structure</legend>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message key="CLASS"></fmt:message></label>
									<label class="rightLabelText"> <select
										class="selectType" name="std" id="std">
											<option value="select" selected><fmt:message
													key="SELECT"></fmt:message>
											</option>
											<option value="nursery"
												<c:if test="${feeStructure.className =='nursery'}">selected</c:if>><fmt:message
													key="NURSERY"></fmt:message>
											</option>
											<option value="lkg"
												<c:if test="${feeStructure.className =='lkg'}">selected</c:if>><fmt:message
													key="LKG"></fmt:message>
											</option>
											<option value="ukg"
												<c:if test="${feeStructure.className =='ukg'}">selected</c:if>><fmt:message
													key="UKG"></fmt:message>
											</option>
											<option value="first"
												<c:if test="${feeStructure.className =='first'}">selected</c:if>><fmt:message
													key="FIRST_STANDARD"></fmt:message>
											</option>
											<option value="second"
												<c:if test="${feeStructure.className =='second'}">selected</c:if>><fmt:message
													key="SECOND_STANDARD"></fmt:message>
											</option>
											<option value="third"
												<c:if test="${feeStructure.className =='third'}">selected</c:if>><fmt:message
													key="THIRD_STANDARD"></fmt:message>
											</option>
											<option value="fourth"
												<c:if test="${feeStructure.className =='fourth'}">selected</c:if>><fmt:message
													key="FOURTH_STANDARD"></fmt:message>
											</option>
											<option value="fifth"
												<c:if test="${feeStructure.className =='fifth'}">selected</c:if>><fmt:message
													key="FIFTH_STANDARD"></fmt:message>
											</option>
											<option value="sixth"
												<c:if test="${feeStructure.className =='sixth'}">selected</c:if>><fmt:message
													key="SIXTH_STANDARD"></fmt:message>
											</option>
											<option value="seventh"
												<c:if test="${feeStructure.className =='seventh'}">selected</c:if>><fmt:message
													key="SEVENTH_STANDARD"></fmt:message>
											</option>
											<option value="eight"
												<c:if test="${feeStructure.className =='eight'}">selected</c:if>><fmt:message
													key="EIGHT_STANDARD"></fmt:message>
											</option>
											<option value="nineth"
												<c:if test="${feeStructure.className =='nineth'}">selected</c:if>><fmt:message
													key="NINETH_STANDARD"></fmt:message>
											</option>
											<option value="tenth"
												<c:if test="${feeStructure.className =='tenth'}">selected</c:if>><fmt:message
													key="TENTH_STANDARD"></fmt:message>
											</option>
									</select>
									</label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="ADMISSION_FEE"></fmt:message></label> <label
										class="rightLabelText"> <input type="text"
										class="num inputType" name="admission_fee" id="admission_fee"
										onkeypress="return allownumber(event)" maxlength="9" required
										placeholder="0.0"
										value='<c:out value="${feeStructure.admissionFee }"></c:out>' />
									</label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="ADMISSION_FEE"></fmt:message></label> <label
										class="rightLabelText"><input type="text"
										class="num inputType" name="admission_fee" id="admission_fee"
										onkeypress="return allownumber(event)" maxlength="9" required
										placeholder="0.0"
										value='<c:out value="${feeStructure.admissionFee }"></c:out>' /></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="APPLICATION_FEE"></fmt:message></label> <label
										class="rightLabelText"> <input type="text"
										class="num inputType" name="application_fee"
										id="application_fee" onkeypress="return allownumber(event)"
										maxlength="9" required placeholder="0.0"
										value='<c:out value="${feeStructure.applicationFee }"></c:out>' /></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="TUTION_FEE"></fmt:message></label> <label class="rightLabelText">
										<input type="text" class="num inputType" name="tution_fee"
										id="tution_fee" onkeypress="return allownumber(event)"
										maxlength="9" required placeholder="0.0"
										value='<c:out value="${feeStructure.tutionFee }"></c:out>' />
									</label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="BOOKS_FEE"></fmt:message></label> <label class="rightLabelText">
										<input type="text" class="num inputType" name="books_fee"
										id="books_fee" onkeypress="return allownumber(event)"
										maxlength="9" required placeholder="0.0"
										value='<c:out value="${feeStructure.booksFee }"></c:out>' />
									</label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="EXAMINATION_FEE"></fmt:message></label> <label
										class="rightLabelText"> <input type="text"
										class="num inputType" name="examination_fee"
										id="examination_fee" onkeypress="return allownumber(event)"
										maxlength="9" required placeholder="0.0"
										value='<c:out value="${feeStructure.examFee }"></c:out>' /></label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="OTHER_FEE"></fmt:message></label> <label class="rightLabelText">
										<input type="text" class="num inputType" name="other_fee"
										id="other_fee" maxlength="9"
										onkeypress="return allownumber(event)" required
										placeholder="0.0"
										value='<c:out value="${feeStructure.otherFee }"></c:out>' />
									</label>
								</div>
								<div class="fulWidth">
									<label class="leftLabelText"><fmt:message
											key="TOTAL_FEE"></fmt:message></label> <label class="rightLabelText">
										<input type="text" name="total_fee" id="total_fee"
										maxlength="9" readonly="readonly"
										style="font: bold; font-size: large;" required
										class="inputType" placeholder="0.0"
										value='<c:out value="${feeStructure.totalFee }"></c:out>' />
									</label>
								</div>
							</fieldset>
						</div>
						<div class="formButtons">
							<input type="submit" class="btnStyle" id="update" value="Update" />
							&nbsp;&nbsp; <input type="button" class="btnStyle"
								id="cancelFeeStru" value="Cancel">
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