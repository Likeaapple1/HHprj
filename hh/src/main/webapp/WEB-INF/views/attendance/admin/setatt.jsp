<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}">
</c:set>

<html>
<head>
<meta charset="UTF-8">
<title>HH_Login</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
	<!-- member.css include-->
	<link rel="stylesheet" href="${root}/resources/css/member/member.css">
	<!-- common.jsp  -->
	<%@ include file ="/WEB-INF/views/common/common.jsp" %>
<body>
<h1>결재자가 처리하는 페이지입니다.</h1>
<span>처리한 결재</span><br>
<table class="table">
	 <thead>
	   <tr>
	   	  <th style = "display:none">근태 번호</th>
	      <th>업무 일자</th>
	      <th>근무 상태</th>
	      <th>업무 시작</th>
	      <th>업무 종료</th>
	      <th>총 근무 시간</th>
	      <th>수정 사유</th>
	      <th>결재 여부</th>
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