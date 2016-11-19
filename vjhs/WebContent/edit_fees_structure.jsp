<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Fees structure</title>

<script type="text/javascript"
	src="js_files/ie-emulation-modes-warning.js"></script>
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery-ui.js"></script>
<script type="text/javascript" src="js_files/jquery.validate.js"></script>
<script type="text/javascript" src="js_files/register.js"></script>
<script type="text/javascript" src="js_files/jquery.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="css_files/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css_files/carousel.css">
<link rel="stylesheet" type="text/css" href="css_files/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css_files/forms.css">
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
	<div class="container">
		<div class="header">
			<c:import url="adminheader.jsp"></c:import>
		</div>
		<div class="body_content" style="width: 1170px;">
			<div class="viewMiddleClTT">
				<div class="viewFull">
					<div class="headBar">
						<label>Fee Structure</label>
					</div>

					<form action="updateFeeStr.profile" method="post" id="feesStructureForm"
						name="feesStructureForm">
						<fmt:bundle basename="com.vjhs.labels.label">

							<label class="formleft"><fmt:message key="CLASS"></fmt:message><em>*</em></label>
							<b>:</b>

							<select class="formright" name="std" id="std">
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
							<br />

							<label class="formleft"><fmt:message key="ADMISSION_FEE"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" class="num" name="admission_fee"
								id="admission_fee" onkeypress="return allownumber(event)"
								maxlength="9" required class="formright" placeholder="0.0"
								value='<c:out value="${feeStructure.admissionFee }"></c:out>' />
							<br />

							<label class="formleft"><fmt:message
									key="APPLICATION_FEE"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" class="num" name="application_fee"
								id="application_fee" onkeypress="return allownumber(event)"
								maxlength="9" required class="formright" placeholder="0.0"
								value='<c:out value="${feeStructure.applicationFee }"></c:out>' />
							<br />

							<label class="formleft"><fmt:message key="TUTION_FEE"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" class="num" name="tution_fee" id="tution_fee"
								onkeypress="return allownumber(event)" maxlength="9" required
								class="formright" placeholder="0.0"
								value='<c:out value="${feeStructure.tutionFee }"></c:out>' />
							<br />

							<label class="formleft"><fmt:message key="BOOKS_FEE"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" class="num" name="books_fee" id="books_fee"
								onkeypress="return allownumber(event)" maxlength="9" required
								class="formright" placeholder="0.0"
								value='<c:out value="${feeStructure.booksFee }"></c:out>' />
							<br />

							<label class="formleft"><fmt:message
									key="EXAMINATION_FEE"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" class="num" name="examination_fee"
								id="examination_fee" onkeypress="return allownumber(event)"
								maxlength="9" required class="formright" placeholder="0.0"
								value='<c:out value="${feeStructure.examFee }"></c:out>' />
							<br />


							<label class="formleft"><fmt:message key="OTHER_FEE"></fmt:message><em>*</em></label>
							<b>:</b>
							<input type="text" class="num" name="other_fee" id="other_fee"
								maxlength="9" onkeypress="return allownumber(event)" required
								class="formright" placeholder="0.0"
								value='<c:out value="${feeStructure.otherFee }"></c:out>' />
							<br />

							<label class="formleft"><fmt:message key="TOTAL_FEE"></fmt:message></label>
							<b>:</b>
							<input type="text" name="total_fee" id="total_fee" maxlength="9"
								readonly="readonly" style="font: bold; font-size: large;"
								required class="formright" placeholder="0.0"
								value='<c:out value="${feeStructure.totalFee }"></c:out>' />
							<br />
							<br />
							<label class="formleft">&nbsp;</label>
							<input type="submit" id="Update" value="Update" />&nbsp;
							<input type="button" id="cancelFeeStru" value="Cancel" />
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