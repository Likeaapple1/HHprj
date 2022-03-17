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
<!-- 모달 -->
  <div class="modal fade" id="myModal" role="dialog"> <!-- 사용자 지정 부분① : id명 -->
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">근태 상세</h4> <!-- 사용자 지정 부분② : 타이틀 -->
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>        
        <div class="modal-body">
        <!-- 사용자 지정 부분③ : 텍스트 메시지 -->
        <form action = "" method = "post">
        <table class="table table-borderless">
			 <tbody>
			   <tr>
			      <th>부서</th>
				  <td><p id = "dept_name"></td>
			   </tr>
			   <tr>
			      <th>직급</th>
				  <td><p id = "job_name"></td>
			   </tr>
			   <tr>
			      <th>사원 이름</th>
				  <td><p id = "emp_name"></td>
			   </tr>
			   <tr>
				  <td><input type = "hidden" id = "att_no" value = "att_no"></td>
			   </tr>
			   <tr>
			      <th>업무 일자</th>
				  <td><p id = "att_str"></td>
			   </tr>
			   <tr>
			      <th>근무 형태</th>
			      <td>
 					<p id = "att_work_form">
 				  </td>
			   </tr>
			   <tr>
			      <th>업무 시작</th>
			      <td><p id = "att_str_date"></td>
			   </tr>
			   <tr>
				  <th>업무 종료</th>
			      <td> <p id = "att_end_date"></td>
			   </tr>
			   <tr>
				  <th>총근무 시간</th>
			      <td> <p id = "att_total"></td>
			   </tr>
			   <tr>
				  <th style = "vertical-align:middle">수정 사유</th>
			      <td> 
					<textarea rows="5" cols="25" id = "att_content"></textarea>
				</td>
			   </tr>
			   <tr>
				  <th>결재 여부</th>
			      <td> <p id="att_content_yn"></td>
			   </tr>
			   <tr>
				  <th>사유</th>
			      <td><input type = "text" value = "" name = "att_content_reason" id = "att_content_reason"></td>
			   </tr>
			 </tbody> 
			</table>
			</form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default" id = "submit" data-dismiss="modal">수정 </button>
		  <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>
      </div>
    </div>
  </div>
	<h1>관리자 페이지</h1>
	<h2>사원들 근태현황 페이지</h2>
	<form method="get">
		 <select name="type">
        	<option value="">-- 검 색 --</option>
            <option value="DEPT_NAME">부서별</option>
            <option value="EMP_NAME">사원별</option>
            <option value="JOB_NAME">직급별</option>
        </select>
        <input type="text" name="value">
        <input type="submit" value="검색">
        <input type="submit" formaction="${root}/attendance/adminAll" value ="전체조회">
    </form>
	<table class="table">
	 <thead>
	   <tr>
	   	  <th>부서</th>
	   	  <th>직급</th>
	   	  <th>사원 이름</th>
	   	  <th>근태 번호</th>
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
		   	  <td>${l.deptName}</td>
		   	  <td>${l.jobName}</td>
		   	  <td>${l.empName}</td>
		   	  <td style = "display:none">${l.attNo}</td>
		      <td>${l.toDay}</td>
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
<script type="text/javascript">
/* 	모달창 띄우기 */
function AttInfo(clicked_element){
	let row_td = clicked_element.getElementsByTagName("td");
	let modal = document.getElementById("myModal");
	
	document.getElementById("dept_name").innerHTML = row_td[0].innerHTML;
	document.getElementById("job_name").innerHTML = row_td[1].innerHTML;
	document.getElementById("emp_name").innerHTML = row_td[2].innerHTML;
	document.getElementById("att_no").value = row_td[3].innerHTML;
	document.getElementById("att_str").innerHTML = row_td[4].innerHTML;
	document.getElementById("att_work_form").innerHTML = row_td[5].innerHTML;
	document.getElementById("att_str_date").innerHTML = row_td[6].innerHTML;
	document.getElementById("att_end_date").innerHTML = row_td[7].innerHTML;
	document.getElementById("att_total").innerHTML = row_td[8].innerHTML;
	document.getElementById("att_content").innerHTML = row_td[9].innerHTML;
	document.getElementById("att_content_yn").innerHTML = row_td[10].innerHTML;
	modal.style.display = "block";
} 
</script>
</html>