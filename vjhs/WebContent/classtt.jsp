<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Time table</title>

<script type="text/javascript" src="js_files/jquery.js"></script>
<script type="text/javascript" src="js_files/ie-emulation-modes-warning.js"></script>

<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<link rel="stylesheet" href="css_files/carousel.css">
<link rel="stylesheet" href="css_files/vjhs_util.css" />

<script type="text/javascript">
	function onChangeClass() {
		$('#updateCT').hide();
		$('#editCT,#deleteCT').show();
		var className = $('#className').val();
		if (className == 'select') {
			$('.showClassData').hide();
		} else {
			$('.showClassData').show();
		}
	}

	function resetClass() {
		$('input[type=text]').val('');
		$('select').prop('selectedIndex', 0);
		onChangeClass();
	}
</script>
</head>
<body>

	<div class="container">
		<div class="header">
			<c:import url="adminheader.jsp"></c:import>
		</div>
		<div class="body_content classTieT" style="width: 1170px;">
			<fmt:bundle basename="com.vjhs.labels.label">
				<div class="viewMiddleClTT">
					<div class="viewCRight">
						<div>
							<form name="addCTable" method="post" id="addCTable" action="#">
								<div>&nbsp;</div>
								<div>
									<label>Please select Class to add Time Table :&nbsp;</label> <span
										class="classNamePlace"> <select name="className"
										id="className" onchange="onChangeClass()">
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
									</select>
									</span>
								</div>
								<div>&nbsp;</div>
								<div class="showClassData">
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
									<div>&nbsp;</div>
									<div>
										<input type="submit" id="submitCT" value="Add"
											onclick="submitClassTT()" />&nbsp; <input type="button"
											id="resetCT" value="Reset" onclick="resetClass();" />&nbsp;
									</div>
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