<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS :: Admin Login Page</title>
<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<script type="text/javascript" src="js_files/jquery.js"></script>
<script type="text/javascript"
	src="js_files/ie-emulation-modes-warning.js"></script>

<link rel="stylesheet" href="css_files/carousel.css">
<link rel="stylesheet" href="css_files/vjhs_util.css" />
</head>
<body>
	<div class="container">
		<div class="header">
			<c:forEach items="${cookie}" var="currentCookie">
				<c:if
					test="${currentCookie.key == 'userName' && currentCookie.value.value != ''}">
					<c:redirect url="sessionAlive.admin" />
				</c:if>
			</c:forEach>
			<c:import url="adminheader.jsp"></c:import>
		</div>
		<div class="body_content" style="width: 1170px;">
			<fmt:bundle basename="com.vjhs.labels.label">
				<div class="viewMiddleClTT">
					<div class="viewFull">
						<div
							style="float: right; padding: 10px; border-left: 0.5px solid #004B8D;">
							<form action="checkAdminUser.admin" method="POST"
								name="adminUser" id="adminUser">
								<div class="forPadding">${ errorMessage }</div>
								<br />
								<div class="forPadding">
									<input type="text" name="userName" id="userName"
										placeholder="User Name" />
								</div>
								<br />
								<div class="forPadding">
									<input type="password" name="password" id="password"
										placeholder="Password" />
								</div>
								<br />

								<div class="forPadding">
									<input type="submit" value="Login" />
								</div>
							</form>
							<br />
							<div class="forPadding">
								<label><a href="showAddAdminLogin.admin">Create New
										Account</a><br /> <a href="showUpdateAdminPass.admin">Forgot
										Password</a> </label>
							</div>
						</div>
					</div>
				</div>
			</fmt:bundle>
		</div>
		<div class="footer">
			<c:import url="adminfooter.jsp"></c:import>
		</div>
	</div>
</body>
</html>