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
<h1>근무시간 설정 페이지입니다.</h1>
<table class="table table-borderless">
  <thead>
    <tr>
      <th scope="col">고정</th>
      <th scope="col"><input type = "button" name = "fix" value = "고정 "><input type = "button" name = "free" value = "선택적"></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">근무시간 계산주기</th>
      <td>
      	<input type = "button" name = "one" value = "1주 "><input type = "button" name = "two" value = "2주">
      	<input type = "button" name = "three" value = "3주"><input type = "button" name = "four" value = "4주">
      	<input type = "button" name = "month" value = "1개월">
      </td>
     <tr>
      <td>근무 시작일</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">일하는 날</th>
      <td>
      	<input type = "button" name = "Mon" value = "월요일"><input type = "button" name = "Tue" value = "화요일">
      	<input type = "button" name = "Wed" value = "수요일"><input type = "button" name = "Thu" value = "목요일">
      	<input type = "button" name = "Fri" value = "금요일"><input type = "button" name = "Sat" value = "토요일">
      	<input type = "button" name = "Sun" value = "일요일">
      </td>
    </tr>
    <tr>
      <th scope="row">유급휴일</th>
      <td>
      	<input type = "button" name = "pMon" value = "월요일"><input type = "button" name = "pTue" value = "화요일">
      	<input type = "button" name = "pWed" value = "수요일"><input type = "button" name = "pThu" value = "목요일">
      	<input type = "button" name = "pFri" value = "금요일"><input type = "button" name = "pSat" value = "토요일">
      	<input type = "button" name = "pSun" value = "일요일">
      </td>
    </tr>
    <tr>
      <th scope="row">필수근무시간</th>
      <td>
      	<input type="time" name = "startWork" value="09:00" max="24:00:00">
      	<input type="time" name = "endWork" value="18:00" max="24:00:00">
      </td>
    </tr>
    <tr>
      <th scope="row">일 평균 근무시간</th>
      <td>
      	<input type="text" vlaue = "">
      </td>
    </tr>
    <tr>
      <th scope="row">일 기본 휴게시간</th>
      <td>
      	<input type = "button" name = "none" value = "없음"><input type = "button" name = "half" value = "30분">
      	<input type = "button" name = "hour" value = "1시간"><input type = "button" name = "hourhalf" value = "1.5시간">
      	<input type = "button" name = "2hours" value = "두시간">
      </td>
    </tr>
  </tbody>
</table>
<form action = "" method = "post">
	
</form>
</body>
</html>