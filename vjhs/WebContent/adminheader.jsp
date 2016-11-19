<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- <link rel="stylesheet" href="css_files/forms.css" type="text/css" /> -->
<div class="cookieSet">
	<c:forEach items="${cookie}" var="currentCookie">
		<c:if test="${currentCookie.key == 'userName' && currentCookie.value.value != ''}"> 
				Welcome Back,&nbsp;<c:out value="${currentCookie.value.value }"></c:out> &nbsp;<a
				href="logout.admin">Logout</a>
		</c:if>
	</c:forEach>
</div>
<script type="text/javascript">
	$(function() {
		var t;
		window.onload = resetTimer;
		window.onmousemove = resetTimer;
		window.onmousedown = resetTimer; // catches touchscreen presses
		window.onclick = resetTimer; // catches touchpad clicks
		window.onscroll = resetTimer; // catches scrolling with arrow keys
		window.onkeypress = resetTimer;

		function logout() {
			window.location.href = 'logout.admin';
		}

		function resetTimer() {
			clearTimeout(t);
			t = setTimeout(logout, 600000); // time is in milliseconds
		}
	});
</script>
<div class="container"
	style="background: rgb(0, 75, 141); border-radius: 5px; font-weight: bolder; color: #fff">
	<div id="leftcontainer" style="float: left;">
		<a href="headerHome.admin"> <img src="img/vjhs_logo.gif"
			height=125px width=125px /></a>
	</div>
	<div id="middlecontainer" style="float: left; padding: 10px 80px;">
		<h1 style="font-family: arial; font-weight: 700">VIGNANA JYOTHI
			HIGH SCHOOL (E.M)</h1>
		<h4 style="float: right; margin-top: -6px">Recognized by Govt.Of
			Andhra Pradesh</h4>
	</div>
	<div id="rightcontainer"
		style="float: right; padding: 0px 20px 5px 0px;">
		<h5>with the blessings of...</h5>
		<img alt="" src="img/grandparents.jpg" width=160px height=90px>
	</div>
</div>