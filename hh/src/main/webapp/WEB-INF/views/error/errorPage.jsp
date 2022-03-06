<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h1>에러 페이지</h1>
	<h2 id = "msg">${msg}</h2>
	
	<script type="text/javascript">
		alert(document.getElementById('msg').innerText); // 메세지 띄위기
		window.location.href = "${root}"; // 알람 
	</script>
</body>
</html>