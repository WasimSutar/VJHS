<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS::Fee Structure</title>
<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" language="javascript"
	src="js_files/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="css_files/jquery.dataTables.css">
<link rel="stylesheet" href="css_files/forms.css">
<script type="text/javascript">
	$(document).ready(function() {
		$('#example').dataTable();
	});
</script>
</head>
<body>
	<div class="container">
		<div class="header">
			<c:import url="adminheader.jsp"></c:import>
		</div>
		<div class="body_content"
			style="width: 1170px;">
			<div class="viewMiddleClTT">
				<div class="viewFull">
				<fmt:bundle basename="com.vjhs.labels.label">
					<div class="headBar">
						<label>Fees structure overview</label>
					</div>
					
					<table id="example" class="display compact" cellspacing="0"
						width="100%">
						<thead>
							<tr>
								<th><fmt:message key="CLASS"></fmt:message></th>
								<th><fmt:message key="ADMISSION_FEE"></fmt:message></th>
								<th><fmt:message key="APPLICATION_FEE"></fmt:message></th>
								<th><fmt:message key="TUTION_FEE"></fmt:message></th>
								<th><fmt:message key="BOOKS_FEE"></fmt:message></th>
								<th><fmt:message key="EXAMINATION_FEE"></fmt:message></th>
								<th><fmt:message key="OTHER_FEE"></fmt:message></th>
								<th><fmt:message key="TOTAL_FEE"></fmt:message></th>
								<th><fmt:message key="UPDATE"></fmt:message></th>
							</tr>
						</thead>

						<tfoot>
							<tr>
								<th><fmt:message key="CLASS"></fmt:message></th>
								<th><fmt:message key="ADMISSION_FEE"></fmt:message></th>
								<th><fmt:message key="APPLICATION_FEE"></fmt:message></th>
								<th><fmt:message key="TUTION_FEE"></fmt:message></th>
								<th><fmt:message key="BOOKS_FEE"></fmt:message></th>
								<th><fmt:message key="EXAMINATION_FEE"></fmt:message></th>
								<th><fmt:message key="OTHER_FEE"></fmt:message></th>
								<th><fmt:message key="TOTAL_FEE"></fmt:message></th>
								<th><fmt:message key="UPDATE"></fmt:message></th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach items="${feeStruList}" var="feeStructure">
							<c:url value="editFeeStru.profile" var="modifyClass">
							  <c:param name="className" value="${feeStructure.className}" />
							</c:url>
								<tr>
									<td><c:out value="${feeStructure.className}"></c:out></td>
									<td><c:out value="${feeStructure.admissionFee}"></c:out></td>
									<td><c:out value="${feeStructure.applicationFee}"></c:out></td>
									<td><c:out value="${feeStructure.tutionFee}"></c:out></td>
									<td><c:out value="${feeStructure.booksFee}"></c:out></td>
									<td><c:out value="${feeStructure.examFee}"></c:out></td>
									<td><c:out value="${feeStructure.otherFee}"></c:out></td>
									<td><c:out value="${feeStructure.totalFee}"></c:out></td>
									<td><a href="<c:out value="${modifyClass}"></c:out>">Modify</a></td>
								</tr>
							</c:forEach>

						</tbody>
					</table>
					</fmt:bundle>
				</div>
			</div>
		</div>
	<div class="footer">
		<c:import url="adminfooter.jsp"></c:import>
	</div>
	</div>

</body>
</html>