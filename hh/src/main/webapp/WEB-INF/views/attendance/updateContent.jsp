<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
 <!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- bootstrap 4 -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>
<h1>근태현황 변경 이력</h1><br>
		<table class="table">
		 <thead>
		   <tr>
		      <th>업무 일자</th>
		      <th>근무상태</th>
		      <th>업무시작</th>
		      <th>업무종료</th>
		      <th>총근무시간</th>
		      <th>수정사유</th>
		      <th>결재여부</th>
		   </tr>
		 </thead> 
		<tbody>
	 <c:forEach items="${list}" var = "l">
		   <tr onclick = "AttInfo(this)" data-toggle="modal" href="#myModal">
		   	  <td style = "display:none">${l.attNo}</td>
		      <td data-test=${l.toDay}>${l.toDay}</td>
		      <td>${l.workForm}</td>
			  <td>${l.start}</td>
		      <td>${l.end}</td>
		      <td>${l.total}</td>
		      <td>${l.attContent}</td>
		      <td>${l.attContentYn}</td>
		   </tr>
	   </c:forEach>
	 </tbody> 
	</table>
</body>
</html>