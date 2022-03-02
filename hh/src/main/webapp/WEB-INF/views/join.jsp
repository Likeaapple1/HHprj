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
		<form action = "" method = "post">
                <div class="content">
                    <div class="container-fluid">
                      <div class="row">
                        <div class="col-lg-6">
                                <div style="margin-bottom: 1%;">
                                  <div>
                                      <tr>
                                       <td>
                                  
                                          <!--테이블 시작 -->
                                          <table width="940" style="padding:5px 0 5px 0;">
                                          <tr>
                                            <th>이름</th>
                                           <td><input type="text" name="mbname"></td>
                                          </tr>
              
                                         <tr>
                                          <th>주민등록번호</th>
                                          <td><input type="text" name="jumin_1"> -
                                          <input type="password" name="jumin_2"></td>
                                       </tr>
                                  
                                       <tr>
                                          <th>사번(아이디)</th>
                                          <td> <input type="text" name="mbid"><a href='#' style='cursor:pointer'></a> (영문/숫자 10~12자) </td>
                                       </tr>
                                  
                                       <tr>
                                          <th>비밀번호</th>
                                          <td><input type="password" name="mbpw"> 영문/숫자포함 6자 이상</td>
                                       </tr>
                                  
                                       <tr>
                                          <th>비밀번호 확인</th>
                                          <td><input type="password" name="mbpw_re"></td>
                                       </tr>
                                  
                                       <tr>
                                          <th>이메일</th>
                                          <td>
                                             <input type="text" name="email"> @
                                             <input type="text" name="email_dns">
                                                <select name="emailaddr">
                                                   <option value="">직접입력</option>
                                                   <option value="naver.com">naver.com</option>
                                                   <option value="gmail.com">gmail.com</option>
                                                   <option value="hanmail.net">hanmail.net</option>
                                                   <option value="daum.net">msn.com</option>
                                                   <option value="nate.com">nate.com</option>
                                                </select>
                                             </td>
                                          </tr>
                                  
                                          <tr>
                                             <th>주소</th>
                                             <td>
                                                <input type="text" name="zip_h_1"> - 
                                                <input type="text" name="zip_h_2">
                                                <a href='#' style='cursor:hand;'></a>
                                                <a href="#" class="btn btn-primary">검색</a><br>
                                                <input type="text" name="addr_h1"><br>
                                             </td>
                                          </tr>
                                  
                                       <tr>
                                          <th>핸드폰 번호</th>
                                          <td><input type="text" name="tel_h1"> - 
                                             <input type="text" name="tel_h2_1"> -
                                             <input type="text" name="tel_h2_2">
                                          </td>
                                       </tr>
                                  
                                       <tr>
                                        <th>부서</th>
                                        <td>
                                        <input tyle='hidden' name='job_attri_val_key'>
                                              <select name="job" size="1">
                                              <option value=''>선택하세요 </option>
                                              <option value='39'>경영지원팀</option>
                                              <option value='40'>재무팀</option>
                                              <option value='41'>영업관리팀</option>
                                              <option value='42'>생산기술팀</option>
                                              <option value='43'>마케팅팀</option>
                                              <option value='44'>인사관리팀</option>
                                              <option value='45'>개발팀</option>
                                              <option value='46'>총무팀</option>
                                              <option value='47'>회계팀</option>
                                              <option value='48'>생산관리팀</option>
                                              <option value='49'>행정팀</option>
                                              <option value='50'>품질보증팀</option>
                                           </select>
                                        </td>
                                     </tr>
              
                                       <tr>
                                          <th>직급</th>
                                          <td>
                                          <input tyle='hidden' name='job_attri_val_key'>
                                                <select name="job" size="1">
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
                                          </td>
                                       </tr>
                                  
                                       <tr>
                                          <th>메일/sws 정보수신</th>
                                          <td class="s">
                                             <input type="radio" name="chk_mail" checked> 수신
                                             <input type="radio" name="chk_mail" value="4"> 수신거부
                                          </td>
                                       </tr>
                                  
                                       
                                    </table>

                                    <button type="submit" class="btn btn-primary btn-lg"> 가입하기</button>
                                    <button type="submit" class="btn btn-primary btn-lg"> 취소</button>
		</div>
		</div>
		<div class="col-md-6 col-xs-12">
		<a href="#" class="text-right btn btn-link">Need help ?</a>
		</div>
		</div>
		</form>
</section>
</script>
</body>
</html>