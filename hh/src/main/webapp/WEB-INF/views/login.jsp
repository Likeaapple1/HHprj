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
<section id="w3hubs">
<div class="container-size">
	<div class = "header-font">
		<span class="text-primary">H</span><span class="text-primary">i</span>&nbsp<span class="text-primary">H</span><span class="text-primary">e</span><span class="text-primary">l</span><span class="text-primary">l</span><span class="text-primary">o</span>
	</div><br>
	<h1 class = "font">One Account.All Of <span class="text-primary">Hi Hello👏</span></h1>
	<br>
  <div class="bg-light">
  	<img src="https://cdn3.iconfinder.com/data/icons/login-5/512/LOGIN_6-512.png" class="img-circle">
	<c:choose>
	<%-- 쿠키 없으면 그냥 로그인 화면 보이도록 --%>
		<c:when test="${empty cookie.memberNo}">
			 <form action = "${root}/login" method = "post">
			 	<div class="form-group">
			 		<input type="text" name="memberNo" class="form-control" placeholder="Member No" required>
			 	</div>
			 	<div class="form-group">
			 		<input type="password" name="memberPassword" class="form-control" placeholder="Password" required>
			 	</div>
			 	<button type="submit" class="btn btn-primary btn-lg"> Sign In</button>
			 	<div class="row">
			 		<div class="col-md-6 col-xs-12">
			 	 <div class="form-group form-check">
			    <label class="form-check-label">
			      <input class="form-check-input" type="checkbox" name = "checkboxName" value = "rememberId"> Stay Signed In
			      <br>
			      <input class="form-check-input" type="checkbox" name = "checkboxName" value = "autoLogin"> 자동 로그인
			     </label>
			   </div>
			 </div>
			 <div class="col-md-6 col-xs-12">
			 	<a href="#" class="text-right btn btn-link">Need help ?</a>
			 </div>
			 </div>
			 </form>
		 </c:when>
		 
		 <%-- 쿠키가 있으면, 아이디를 넣어서 보여주기 --%>
		 <c:otherwise>
		 		<form action = "" method = "post">
			 	<div class="form-group">
			 		<input type="text" name="memberNo" class="form-control" placeholder="Member No" value = "${cookie.memberNo.value}">
			 	</div>
			 	<div class="form-group">
			 		<input type="password" name="memberPassword" class="form-control" placeholder="Password" required>
			 	</div>
			 	<button type="submit" class="btn btn-primary btn-lg"> Sign In</button>
			 	<div class="row">
			 		<div class="col-md-6 col-xs-12">
			 	 <div class="form-group form-check">
			    <label class="form-check-label">
			      <input class="form-check-input" type="checkbox" checked="checked" name = "checkboxName" value = "rememberId"" onclick = "deleteCookie();"> Stay Signed In
			      <br>
			      <input class="form-check-input" type="checkbox" name = "checkboxName" value = "autoLogin"> 자동 로그인
			     </label>
			   </div>
			 </div>
			 <div class="col-md-6 col-xs-12">
			 	<a href="#" class="text-right btn btn-link">Need help ?</a>
			 </div>
			 </div>
			 </form>
		 </c:otherwise>
	</c:choose>
</div>
<a href="#" class="btn btn-link">Create an account</a>
</div>
</section>

<!-- 아이디 저장 체크 박스 체크 안 했을 때, 쿠키 저장 안 되도록 -->
<script src="https://cdn.jsdelivr.net/npm/js-cookie@3.0.0/dist/js.cookie.min.js"></script>
<script type="text/javascript">

let changeCookie = Cookies.get('memberNo');

function deleteCookie(){
	let checkChange = document.querySelector('input[type=checkbox]');
	if(!this.checked){
		Cookies.remove('memberNo');
		checkChange.checked = false;
	}
} 
</script>
</body>
</html>