<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var = "root" value = "${pageContext.request.contextPath}">
</c:set>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.css">
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.js"></script>

 <!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- bootstrap 4 -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
			      <th>업무 일자</th>
				  <td><p id = "att_str_date"></td>
			   </tr>
			   <tr>
			      <th>근무 형태</th>
			      <td>
 					<p id="att_work_form" readonly></td>
			   </tr>
			   <tr>
			      <th>업무 시작</th>
			      <td><p id="att_str_date1"></td>
			   </tr>
			   <tr>
				  <th>업무 종료</th>
			      <td> <p id="att_end_date"></td>
			   </tr>
			   <tr>
				  <th>결재 여부</th>
			      <td> <p id="att_end_date1"></td>
			   </tr>
			   <tr>
				  <th>결재 여부</th>
			      <td> <p id="att_end_date2"></td>
			   </tr>
			 </tbody> 
			</table>
			</form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default" data-dismiss="modal" onclick="location.href='attstatus/update.jsp'">수정</button>
		  <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>
      </div>
    </div>
  </div>
	<h1>개인 근태관리 현황</h1>
    <form action="attstatus" method="get">
        <select name="type">
        	<option value="근무상태">-- 근 무 --</option>
            <option value="정상근무">정상근무</option>
            <option value="지각">지각</option>
            <option value="초과근무">초과근무</option>
            <option value="야간근무">야간근무</option>
        </select>
        <input type="submit" value="검색">
        <input type="submit" formaction="${root}/attendance/All" value ="전체조회">
    </form>
 
    
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
	      <th>수정사유</th>
	   </tr>
	 </thead>
	 <tbody id = "att_rows">
	 <c:forEach items="${list}" var = "l">
		   <tr onclick = "AttInfo(this)" data-toggle="modal" href="#myModal">
		      <td style = "display:none">${l.today}</td>
		      <td>${l.workForm}</td>
<%-- 		      <td>${l.day}</td>
		      <td>${l.start}</td>
		      <td>${l.end}</td>
		      <td>${l.total}</td> --%>
		      <td>john@example.com</td>
		      <td>john@example.com</td>
		   </tr>
	   </c:forEach>
	 </tbody> 
	</table>
</body>
<script type="text/javascript">
	/* 모달창 띄우기 */
	function AttInfo(clicked_element){
		let row_td = clicked_element.getElementsByTagName("td");
		let modal = document.getElementById("myModal");
		
		document.getElementById("att_str_date").innerHTML = row_td[0].innerHTML;
		document.getElementById("att_work_form").innerHTML = row_td[1].innerHTML;
		document.getElementById("att_str_date1").innerHTML = row_td[2].innerHTML;
		document.getElementById("att_end_date").innerHTML = row_td[3].innerHTML;
		document.getElementById("att_end_date1").innerHTML = row_td[4].innerHTML;
		document.getElementById("att_end_date2").innerHTML = row_td[5].innerHTML;
		document.getElementById("att_work_yn").innerHTML = row_td[6].innerHTML;
		
		modal.style.display = "block";
	}
</script>
</html>