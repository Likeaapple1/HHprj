<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>관리자 페이지</h1>
	<h2>사원들 근태현황 페이지</h2>
	<form method="get">
		 <select name="type">
        	<option value="">-- 검 색 --</option>
            <option value="deptname">부서별</option>
            <option value="empname">사원별</option>
            <option value="jobname">직급별</option>
        </select>
        <input type="text" name="value">
        <input type="submit" value="검색">
        <input type="submit" formaction="${root}/attendance/All" value ="전체조회">
    </form>
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