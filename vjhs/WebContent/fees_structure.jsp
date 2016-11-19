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
			<%-- <c:import url="adminheader.jsp"></c:import> --%>
		</div>
		<div class="body_content" style="width: 1170px;">
			<div class="viewMiddleClTT">
				<div class="viewFull">
					<fmt:bundle basename="com.vjhs.labels.label">
						<div class="headBar">
							<label>Fee Structure</label>
						</div>
						<c:if test="${feeStructure == null}">
							<form action="getFeeStru.profile" method="post" id="submitClass">
								<label class="formleft"><fmt:message key="CLASS"></fmt:message></label>
								<b>:</b> <select class="formright" name="std" id="std"
									onchange="submitGetFeeStru()">
									<option value="select"><fmt:message key="SELECT"></fmt:message>
									</option>
									<option value="nursery"><fmt:message key="NURSERY"></fmt:message>
									</option>
									<option value="lkg"><fmt:message key="LKG"></fmt:message>
									</option>
									<option value="ukg"><fmt:message key="UKG"></fmt:message>
									</option>
									<option value="first"><fmt:message
											key="FIRST_STANDARD"></fmt:message>
									</option>
									<option value="second"><fmt:message
											key="SECOND_STANDARD"></fmt:message>
									</option>
									<option value="third"><fmt:message
											key="THIRD_STANDARD"></fmt:message>
									</option>
									<option value="fourth"><fmt:message
											key="FOURTH_STANDARD"></fmt:message>
									</option>
									<option value="fifth"><fmt:message
											key="FIFTH_STANDARD"></fmt:message>
									</option>
									<option value="sixth"><fmt:message
											key="SIXTH_STANDARD"></fmt:message>
									</option>
									<option value="seventh"><fmt:message
											key="SEVENTH_STANDARD"></fmt:message>
									</option>
									<option value="eight"><fmt:message
											key="EIGHT_STANDARD"></fmt:message>
									</option>
									<option value="nineth"><fmt:message
											key="NINETH_STANDARD"></fmt:message>
									</option>
									<option value="tenth"><fmt:message
											key="TENTH_STANDARD"></fmt:message>
									</option>
								</select> <br />
							</form>
						</c:if>
						<c:if test="${feeStructure!=null }">
							<div>
								<h4>${messageFeeStru}</h4>
							</div>
							<form action="editFeeStru.profile" method="post"
								id="feesStructureForm" name="feesStructureForm">
								<input type="hidden" name="className" id="className"
									value='<c:out value="${feeStructure.className }"></c:out>' />
								<label class="formleft"><fmt:message key="CLASS"></fmt:message></label>
								<b>:</b> <label class="confirm"><c:out
										value="${feeStructure.className }"></c:out></label> <br /> <label
									class="formleft"><fmt:message key="ADMISSION_FEE"></fmt:message></label>
								<b>:</b> <label class="confirm"> <c:out
										value="${feeStructure.admissionFee }"></c:out></label> <br /> <label
									class="formleft"><fmt:message key="APPLICATION_FEE"></fmt:message></label>
								<b>:</b> <label class="confirm"><c:out
										value="${feeStructure.applicationFee }"></c:out></label> <br /> <label
									class="formleft"><fmt:message key="TUTION_FEE"></fmt:message></label>
								<b>:</b> <label class="confirm"><c:out
										value="${feeStructure.tutionFee }"></c:out></label> <br /> <label
									class="formleft"><fmt:message key="BOOKS_FEE"></fmt:message></label>
								<b>:</b> <label class="confirm"><c:out
										value="${feeStructure.booksFee }"></c:out></label> <br /> <label
									class="formleft"><fmt:message key="EXAMINATION_FEE"></fmt:message></label>
								<b>:</b> <label class="confirm"><c:out
										value="${feeStructure.examFee }"></c:out></label> <br /> <label
									class="formleft"><fmt:message key="OTHER_FEE"></fmt:message></label>
								<b>:</b> <label class="confirm"><c:out
										value="${feeStructure.otherFee }"></c:out></label> <br /> <label
									class="formleft"><fmt:message key="TOTAL_FEE"></fmt:message></label>
								<b>:</b> <label class="confirm"><c:out
										value="${feeStructure.totalFee }"></c:out></label> <br /> <br /> <label
									class="formleft">&nbsp;</label> <input type="submit"
									id="editFeeStru" value="Edit" />
							</form>
						</c:if>
					</fmt:bundle>
				</div>
			</div>
		</div>
		<div class="footer">
			<%-- <c:import url="adminfooter.jsp"></c:import> --%>
		</div>
	</div>

</body>
</html>