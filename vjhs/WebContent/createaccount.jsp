<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet" href="css_files/vjhs_util.css" />
<body>
<div class="createAccountPage">
	<div class="forPadding">
		${succMessage}
	</div>
	<div class="forPadding headerCreatePage">
		Create New Account Page
	</div>
	<form method="POST" action="addAdminLogin.admin" name="createAdminUser" id="createAdminUser">
	<div class="forPadding">
		<label class="createUserLeft">Enter User Name:&nbsp;</label>
		<label class="createUserRight"><input type="text" name="userName"  id="userName" placeholder="User Name" /></label>
	</div>
	<div class="forPadding">
		<label class="createUserLeft">Enter Password:&nbsp;</label>
		<label class="createUserRight"><input type="password" name="password" id="password" placeholder="Password" /></label>
	</div>
	<div class="forPadding">
		<label class="createUserLeft">Confirm Password:&nbsp;</label>
		<label class="createUserRight"><input type="password" name="re_password" id="re_password" placeholder="Confirm Password" /></label>
	</div>
	<div class="forPadding">
		<label class="createUserLeft">Select Branch:&nbsp;</label>
		<label class="createUserRight"><select name="branch" id="branch">
			<option value="Nadakuduru">Nadakuduru</option>
			<option value="Karapa">Karapa</option>
			<option value="Penuguduru">Penuguduru</option>
		</select></label>
	</div>
	<div class="forPadding">
		<label class="createUserLeft">Select Role:&nbsp;</label>
		<label class="createUserRight"><select name="role" id="role">
			<option value="admin">Administrator</option>
			<option value="teacher">Teacher</option>
			<option value="guest">Guest</option>
		</select></label>
	</div>
	<div class="forPadding">
		<label class="createUserLeft">&nbsp;</label>
		<label class="createUserRight"><input type="submit" value="Create" />&nbsp;&nbsp;
			<input type="reset" value="Reset" /></label>
	</div>
	</form>
</div>
</body>