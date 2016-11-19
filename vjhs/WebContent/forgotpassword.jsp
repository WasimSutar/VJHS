<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link rel="stylesheet" href="css_files/vjhs_util.css" />
<body>
	<div class="forgotPassPage">
		<div class="forPadding headerCreatePage">Forgot Password Page</div>
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
			<label class="createUserLeft">&nbsp;</label>
			<label class="createUserRight"><input type="submit" value="Submit" /></label>
		</div>
		
	</div>
</body>