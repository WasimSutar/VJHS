<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery.dataTables.js"></script>
<link rel="stylesheet" type="text/css"
	href="css_files/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="css_files/style.css" />
<div class="lgnHead700">
	<h1>Vignana Jyothi High School (E.M.)</h1>
	<c:forEach items="${cookie}" var="currentCookie">
		<c:if
			test="${currentCookie.key == 'userName' && currentCookie.value.value != ''}">
			<c:redirect url="sessionAlive.admin" />
		</c:if>
	</c:forEach>
</div>