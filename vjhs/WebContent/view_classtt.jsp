<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS::View Time table</title>
<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<script type="text/javascript" src="js_files/jquery.js"></script>
<script type="text/javascript"
	src="js_files/ie-emulation-modes-warning.js"></script>
<link rel="stylesheet" href="css_files/vjhs_util.css" />
<link rel="stylesheet" href="css_files/carousel.css">

<script type="text/javascript">
	function getClassData(className) {
		$('.showClassData').show();
		$('.showInitial').hide();
		$('.classNamePlace').html(className);
		$('#updateCT').hide();
		$('#editCT,#deleteCT').show();
	}

	function editClassTT() {
		$('#updateCT').show();
		$('#editCT,#deleteCT').hide();
		$('.viewCttTable input').css('border : 1px solid black');
	}

	function deleteClassTT() {

	}

	function updateClassTT() {

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
				<div class="viewMiddleClTT toRefView">
					<div class="viewCLeft">
						<label><a href="javascript:getClassData('NURSERY')"><fmt:message
									key="NURSERY"></fmt:message></a></label> <br /> <label><a
							href="javascript:getClassData('LKG')"><fmt:message key="LKG"></fmt:message></a></label>
						<br /> <label><a href="javascript:getClassData('UKG')"><fmt:message
									key="UKG"></fmt:message></a></label> <br /> <label><a
							href="javascript:getClassData('I')"><fmt:message
									key="FIRST_STANDARD"></fmt:message></a></label> <br /> <label><a
							href="javascript:getClassData('II')"><fmt:message
									key="SECOND_STANDARD"></fmt:message></a></label> <br /> <label><a
							href="javascript:getClassData('III')"><fmt:message
									key="THIRD_STANDARD"></fmt:message></a></label> <br /> <label><a
							href="javascript:getClassData('IV')"><fmt:message
									key="FOURTH_STANDARD"></fmt:message></a></label> <br /> <label><a
							href="javascript:getClassData('V')"><fmt:message
									key="FIFTH_STANDARD"></fmt:message></a></label> <br /> <label><a
							href="javascript:getClassData('VI')"><fmt:message
									key="SIXTH_STANDARD"></fmt:message></a></label> <br /> <label><a
							href="javascript:getClassData('VII')"><fmt:message
									key="SEVENTH_STANDARD"></fmt:message></a></label> <br /> <label><a
							href="javascript:getClassData('VIII')"><fmt:message
									key="EIGHT_STANDARD"></fmt:message></a></label> <br /> <label><a
							href="javascript:getClassData('IX')"><fmt:message
									key="NINETH_STANDARD"></fmt:message></a></label> <br /> <label><a
							href="javascript:getClassData('X')"><fmt:message
									key="TENTH_STANDARD"></fmt:message></a></label>
					</div>
					<div class="viewCRight">
						<div class="showInitial">
							<label> Please Select class to get time table</label>
						</div>
						<div class="showClassData">
							<form name="updateCTable" method="post" id="updateCTable"
								action="#">
								<div>&nbsp;</div>
								<div>
									<label>Time Table for the Class:&nbsp;</label><span
										class="classNamePlace"></span>
								</div>
								<div>&nbsp;</div>
								<div>
									<table class="viewCttTable">
										<tr>
											<th></th>
											<th><label>Period&nbsp;I</label></th>
											<th><label>Period&nbsp;II</label></th>
											<th><label>Period&nbsp;III</label></th>
											<th><label>Period&nbsp;IV</label></th>
											<th><label>Period&nbsp;V</label></th>
											<th><label>Period&nbsp;VI</label></th>
											<th><label>Period&nbsp;VII</label></th>
											<th><label>Period&nbsp;VIII</label></th>
										</tr>
										<tr>
											<td>MON</td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
										</tr>
										<tr>
											<td>TUE</td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
										</tr>
										<tr>
											<td>WED</td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
										</tr>
										<tr>
											<td>THU</td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
										</tr>
										<tr>
											<td>FRI</td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
										</tr>
										<tr>
											<td>SAT</td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
											<td><input type="text" name="" id="" value="" /></td>
										</tr>
									</table>
								</div>
								<div>&nbsp;</div>
								<div>
									<input type="button" id="editCT" value="Edit"
										onclick="editClassTT()" />&nbsp; <input type="button"
										id="deleteCT" value="Delete" onclick="deleteClassTT()" />&nbsp;
									<input type="button" id="updateCT" value="Update"
										onclick="updateClassTT()" />
								</div>
							</form>
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