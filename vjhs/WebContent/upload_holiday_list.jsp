<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Holiday List Upload</title>
<script type="text/javascript"
	src="js_files/ie-emulation-modes-warning.js"></script>
<script type="text/javascript" src="js_files/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js_files/jquery-ui.js"></script>
<script type="text/javascript" src="js_files/jquery.validate.js"></script>
<script type="text/javascript" src="js_files/register.js"></script>

<link rel="stylesheet" type="text/css"
	href="css_files/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="css_files/carousel.css">
<link rel="stylesheet" type="text/css" href="css_files/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css_files/forms.css">
<script type="text/javascript">
	function showFile() {
		var countFiles = $('#fileToUpload')[0].files.length;
		var imgPath = $('#fileToUpload')[0].value;
		var extn = imgPath.substring(imgPath.lastIndexOf('.') + 1)
				.toLowerCase();
		var image_holder = $('#imgDisp');
		image_holder.empty();
		if (extn == "pdf") {
			if (typeof (FileReader) != "undefined") {
				for (var i = 0; i < countFiles; i++) {
					var reader = new FileReader();
					reader.onload = function(e) {
						$('#imgDisp').html('');
						$("<embed/>", {
							"src" : e.target.result,
							"width" : 1100,
							"height" : 550
						}).appendTo(image_holder);
					}
					image_holder.show();
					reader.readAsDataURL($('#fileToUpload')[0].files[i]);
				}
			} else {
				alert("This browser does not support FileReader.");
				return;
			}
		} else {
			alert("Please Select only pdf's");
			$('#fileToUpload').val('');
			return;
		}

	}

	function nameCheck() {
		$('#imgDisp, .mes').html('');
		var uploadedFileName = $('#fileToUpload')[0].files[0].name;
		$(function() {
			var isAccepted = true;
			$
					.ajax({
						url : 'getHolidayFiles.upload',
						dataType : 'xml',
						cache : false,
						success : function(xml) {
							$(xml)
									.find('FILE')
									.each(
											function() {
												var fileName = $(this).find(
														'FILENAMES').text();
												if (fileName == uploadedFileName) {
													isAccepted = confirm("File Name is alreday exists, Do you want to override?");
												}
											});
							if (isAccepted) {
								showFile();
							} else {
								$('#fileToUpload').val('');
								return false;
							}
						}
					});
		});
	}

	function checkFile() {

		if ($('#fileToUpload').val() == '') {
			alert("Please Select a File to Upload");
			$('#fileToUpload').select().focus();
			return false;
		} else {
			return true;
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
			<div class="viewMiddleClTT">
				<div class="viewFull">
					<center>
						<form method="post" action="holidays.upload"
							enctype="multipart/form-data" onsubmit="return checkFile()">
							<label class="headerCreatePage"> Select Holiday list file
								to upload: </label> <input type="file" id="fileToUpload"
								name="uploadFile" width="20" height="20" onchange="nameCheck();" />
							<input type="submit" value="Upload" /> <br> <br>


						</form>

						<h2 class="mes">${message}</h2>


						<div id="imgDisp"></div>
					</center>
				</div>
			</div>
		</div>
		<div class="footer">
			<c:import url="adminfooter.jsp"></c:import>
		</div>

	</div>

</body>
</html>