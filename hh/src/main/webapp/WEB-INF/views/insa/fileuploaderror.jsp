<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GuestBook</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container">

		<div class="modal-dialog">

			<div>
				<h1 style="font-size: x-large;">
					<img src="${pageContext.request.contextPath}/resources/img/sist_logo.png" alt="logo"
						style="vertical-align: bottom;">직원관리
				</h1>
			</div>

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header" style="padding: 35px 50px;">
					<h4>
						<span class="glyphicon glyphicon-lock"></span> 파일 업로드
					</h4>
					<label>파일 업로드가 실패했습니다.</label>
				</div>
				<div class="modal-body" style="padding: 40px 50px;">
					<div class="form-group"></div>
					<a href="employeelist.it" class="btn btn-default btn-block">Main</a>
				</div>
				<div class="modal-footer"></div>
			</div>

		</div>

	</div>
</body>
</html>