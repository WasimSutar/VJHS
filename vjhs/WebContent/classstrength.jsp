<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Class Details</title>

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
						width="30%">
						<thead>
							<tr>
								<th><fmt:message key="CLASS"></fmt:message></th>
								<th><fmt:message key="STRENGTH"></fmt:message></th>
							</tr>
						</thead>

						<tfoot>
							<tr>
								<th><fmt:message key="CLASS"></fmt:message></th>
								<th><fmt:message key="STRENGTH"></fmt:message></th>
							</tr>
						</tfoot>
						<tbody>
							<c:forEach items="${classStrengthList}" var="classStrength">
							<%-- <c:url value="editClassStrength.profile" var="modifyClassStrength">
							  <c:param name="className" value="${classStrength.className}" />
							</c:url> --%>
								<tr>
									<td><c:out value="${classStrength.className}"></c:out></td>
									<td><c:out value="${classStrength.strength}"></c:out></td>
								
									<%-- <td><a href="<c:out value="${modifyClassStrength}"></c:out>">Modify</a></td> --%>
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