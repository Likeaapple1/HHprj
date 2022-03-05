<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}">
</c:set>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
	let display = true;
	function doDisplay(){
		let changeDiv = document.getElementById("div");
		if(changeDiv.style.display == 'none'){
			changeDiv.style.display = 'block';
		}else{
			changeDiv.style.display = 'none';
		}
	}
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>개인 근태관리 현황</h1>
<!-- 	<a href="javsscript:doDisplay">1주차</a>
	<table></table>
 -->
<form action = "" method="post">
	<table class="table">
	 <thead>
	   <tr>
	      <th>일자</th>
	      <th>근무상태</th>
	      <th>업무시작</th>
	      <th>업무종료</th>
	      <th>종근무시간</th>
	      <th>근무시간 상세</th>
	      <th>승인요청내역</th>
	   </tr>
	 </thead>
	 <tbody>
	 <c:forEach items="${list}" var = "l">
		   <tr>
		      <td>${l.attStrDate}</td>
		      <td>${l.workForm}</td>
		      <td>${l.attStrDate}</td>
		      <td>${l.attEndDate}</td>
		      <td>john@example.com</td>
		      <td>john@example.com</td>
		      <td>john@example.com</td>
		   </tr>
	   </c:forEach>
	 </tbody> 
	</table>
</form>
</body>
</html>