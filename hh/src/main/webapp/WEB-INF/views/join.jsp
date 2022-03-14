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
	<link rel="stylesheet" href="${root}/resources/css/member/memberjoin.css">
	<!-- common.jsp  -->
	<%@ include file ="/WEB-INF/views/common/common.jsp" %>
<body>
<section id="w3hubs">
<div class="container-size">
	<div class = "header-font">
		<span class="text-primary">H</span><span class="text-primary">i</span>&nbsp<span class="text-primary">H</span><span class="text-primary">e</span><span class="text-primary">l</span><span class="text-primary">l</span><span class="text-primary">o</span>
	</div><br>
	<h1 class = "font">One Account.All Of <span class="text-primary">Hi Hello👏</span></h1>
	<br>
  <div class="bg-light">
  	<img src="https://cdn3.iconfinder.com/data/icons/login-5/512/LOGIN_6-512.png" class="img-circle">
  	
  	    
                <div class="form-group">
			 		이름 <input type="text" name="empName" class="form-control"  value = "${empName}">
			 	</div>
			 	<div class="form-group">
			 		주민등록번호 <input type="text" name="empBirth" class="form-control"  value = "${empBirth}">
			 	</div>
			 	<div class="form-group">
			 		사원번호 <input type="text" name="empNo" class="form-control"  value = "${empNo}">
			 	</div>
			 	<div class="form-group">
			 		비밀번호 <input type="password" name="empPassword" class="form-control"  required value = "${empPassword}">
			 	</div>
			 	<div class="form-group">
			 		이메일 <input type="text" name="empEmail" class="form-control"  value = "${empEmail}">
			 	</div>
                
                <div class="form-group">
			 		핸드폰 번호 <input type="text" name="empPhone" class="form-control"  value = "${empPhone}">
			 	</div>
			 	
			 	<div class="form-group">
			 		부서 <select name="job" size="1" class="form-control" value = "${empdeptNo}">
                                              <option value=''>선택하세요 </option>
                                              <option value='1'>경영지원팀</option>
                                              <option value='2'>재무팀</option>
                                              <option value='3'>영업관리팀</option>
                                              <option value='4'>생산기술팀</option>
                                              <option value='5'>마케팅팀</option>
                                              <option value='6'>인사관리팀</option>
                                              <option value='7'>개발팀</option>
                                              <option value='8'>총무팀</option>
                                              <option value='9'>회계팀</option>
                                              <option value='10'>생산관리팀</option>
                                              <option value='11'>행정팀</option>
                                              <option value='12'>품질보증팀</option>
                                           </select>
			 	</div>
                
                <div class="form-group">
			 		직급 <select name="job" size="1" class="form-control"  value = "${empjobCode}">
                                                <option value=''>선택하세요 </option>
                                                <option value='39'>회장</option>
                                                <option value='40'>부회장</option>
                                                <option value='41'>사장</option>
                                                <option value='42'>부사장</option>
                                                <option value='43'>전무</option>
                                                <option value='44'>상무</option>
                                                <option value='45'>부장</option>
                                                <option value='46'>차장</option>
                                                <option value='47'>과장</option>
                                                <option value='48'>대리</option>
                                                <option value='49'>사원</option>
                                                <option value='50'>인턴</option>
                                             </select>
			 	</div>
			 	<button type="submit" class="btn btn-primary btn-lg"> 사원등록</button>
		</div>
</section>
</script>
</body>
</html>