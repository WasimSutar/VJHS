<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Add Subject</title>
<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<script type="text/javascript" src="js_files/jquery.js"></script>
<script type="text/javascript"
	src="js_files/ie-emulation-modes-warning.js"></script>

<link rel="stylesheet" href="css_files/carousel.css">
<link rel="stylesheet" href="css_files/vjhs_util.css" />
<script type="text/javascript">
	function addSubject() {
		$(".viewFulRight, .addSubjectPane").show();
		$('.updateSubjectPane').hide();
		$('.viewFulLeft').css('background', 'rgba(200,200,200,0.6)');
	}

	function editSub() {

		if ($('#subjectName:checked').size() == 0) {
			alert("Please Select atleast one subject");
			$(".viewFulRight, .updateSubjectPane").hide();
		} else if ($('#subjectName:checked').size() > 1) {
			alert("You cannot edit more than one subject at a time");
			$(".viewFulRight, .updateSubjectPane").hide();
		} else {
			$(".viewFulRight, .updateSubjectPane").show();
			$('.addSubjectPane').hide();
			$('.viewFulLeft').css('background', 'rgba(200,200,200,0.6)');
			$('#editSubName').val($('#subjectName:checked').val());
			var subId = $('#subjectName:checked').val();
			subId = '#' + subId;
			subId = subId.replace(/\s+/g, '');
			$('#editSubId').val($(subId).val());
		}
	}

	function deleteSubjects() {
		if ($('input:checkbox[name="subjectName"]:checked').size() == 0) {
			alert("Please Select atleast one subject");
		} else if ($('input:checkbox[name="subjectName"]:checked').size() > 1) {
			alert("You cannot delete more than one subject at a time");
		} else {
			var isDelete = confirm("delete subjects:"+$('#subjectName:checked').val());
			if (isDelete) {
				var subId = $('#subjectName:checked').val();
				subId = '#' + subId;
				subId = subId.replace(/\s+/g, '');
				location.href="deleteSubjects.examinations?subjectId="+$(subId).val();
			}
		}

	}
</script>
</head>
<body>

	<div class="container">
		<div class="header">
			<c:import url="adminheader.jsp"></c:import>
		</div>
		<div class="body_content" style="width: 1170px;">
			<fmt:bundle basename="com.vjhs.labels.label">
				<div class="viewMiddleClTT">
					<div class="viewFull">
						<div class="vewFulLeft">
							<div>&nbsp;</div>
							<div>
							<h4><c:out value="${message}"></c:out></h4>
							</div>
							<div>
								<label>Subjects :</label>
							</div>
							<div>&nbsp;</div>
							<div>
								<c:forEach var="subject" items="${subjectList}">
									<input type="hidden"
										id='<c:out value="${fn:replace(subject.subjectName,' ','')}"></c:out>'
										name="hideSubId"
										value='<c:out value="${subject.subjectId}"></c:out>' />
									<input type="checkbox" id="subjectName" name="subjectName"
										value="${subject.subjectName}" />&nbsp;<c:out
										value="${subject.subjectName}"></c:out>
									<br>
								</c:forEach>
							</div>
							<div>&nbsp;</div>
							<div>
								<input type="button" name="add" id="add" value="Add"
									onclick="addSubject()" />&nbsp; <input type="button"
									name="edit" id="edit" value="Edit" onclick="editSub()" />&nbsp;
								<input type="button" name="delete" id="delete" value="Delete"
									onclick="deleteSubjects()" />&nbsp;
							</div>
						</div>
						<div class="viewFulRight">
							<div>&nbsp;</div>
							<form action="addSubjects.examinations" name="addSubPage" id="addSubPage" method="POST">
							<div class="addSubjectPane">
								<div>
									<label>Please Enter Subject ID: </label> <input type="text"
										id="SubId" name="SubId" />
								</div>
								<div>&nbsp;</div>
								<div>
									<label>Please Enter Subject Name: </label> <input type="text"
										id="newSub" name="newSub" />
								</div>
								<div>&nbsp;</div>
								<div>
									<input type="submit" id="addSubject" name="addSubject"
										value="Add Subject" />
								</div>
							</div>
							</form>
							<div class="updateSubjectPane">
							<form action="updateSubjects.examinations" name="updateSubPane" id="updateSubPane" method="POST">
								<div>
									 <input type="hidden" id="editSubId" name="editSubId" />
									<label>Please modify Subject: </label> <input type="text"
										id="editSubName" name="editSubName" />
								</div>
								<div>&nbsp;</div>
								<div>
									<input type="submit" id="addSubject" name="addSubject"
										value="Update Subject" />
								</div>
								</form>
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