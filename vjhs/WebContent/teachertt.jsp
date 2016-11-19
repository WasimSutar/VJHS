<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VJHS:: Time Table</title>
<link rel="stylesheet" href="css_files/bootstrap.min.css" />
<script type="text/javascript" src="js_files/jquery.js"></script>
<script type="text/javascript"
	src="js_files/ie-emulation-modes-warning.js"></script>

<link rel="stylesheet" href="css_files/carousel.css">
<link rel="stylesheet" href="css_files/vjhs_util.css" />
<script type="text/javascript">
	function getClassData(className) {
		$('.showClassData').show();
		$('.showInitial').hide();
		$('.classNamePlace').html(className);
		$('#updateCT').hide();
		$('#editCT,#deleteCT').show();
	}
	
	function onChangeTeacher() {
		$('#updateCT').hide();
		$('#editCT,#deleteCT').show();
		var teachName =  $('#teacherName').val();
		if( teachName == 'select'){
			$('.showClassData').hide();
		}else{
			$('.showClassData').show();
		}
	}
	
	function resetTeacher() {
		$('input[type=text]').val('');
		$('select').prop('selectedIndex',0);
		onChangeTeacher();
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
					<div class="viewCRight">
						<div >
							<form name="updateCTable" method="post" id="updateCTable"
								action="#">
								<div>&nbsp;</div>
								<div>
									<label>Please select Teacher to add Time Table :&nbsp;</label>
									<span class="classNamePlace">
										<select name="teacherName" id="teacherName" onchange="onChangeTeacher()">
											<option value="select">--Select--</option>
											<option value="phani">Phani</option>
											<option value="wasim">Wasim</option>
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
									<input type="submit" id="add" value="Add"
										onclick="addTeacherTT()" />&nbsp; <input type="button"
										id="resetTT" value="Reset" onclick="resetTeacher();"/>
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