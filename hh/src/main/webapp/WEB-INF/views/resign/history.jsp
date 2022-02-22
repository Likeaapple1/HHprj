<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>퇴직급여입력</h1>
	<hr>
<!-- 연도를 선택한후 이름,부서등을 select로 설정해 입력값과 대조하게 한후 search하게 그후 
		사원 목록에 리스트가 뜨게 -->
		
		
	<form action="/" method="get" name="resign_history_search1">
		<span> 귀속연월 : <input type="date" id="searchDate"> 
		<select id="selectBox">
				<option value="empName">성명</option>
				<option value="empDept">부서</option>
		</select>
		<input type="text" id="saerchText">
		 <input type="submit" value="검색">
		</span>
	</form>
	
<!--  사원 몰록 table -->

	<div id="div-main">
		<span><h3>사원 목록</h3> 
		<form action="/" method="get" name="resign_history_search2">
		<input type="text" name="historyMemberSearch">
		<input type="submit" value="찾기">
		</form></span>
		<table border="1">
			<thead>
				<tr>
					<td><input type="checkbox"></td>
					<td>사원번호</td>
					<td>성명</td>
					<td>직급</td>
					<td>부서</td>
					<td>구분</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="n">
					<tr>
						<td><input type="checkbox" value="${n.no}"> </td>
						<td>${n.empNo}</td>
						<td>${n.empName}</td>
						<td>${n.empRank}</td>
						<td>${n.empDept}</td>
						<td>${n.resignType}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		
		
		
	</div>
	


	
	




</body>
</html>