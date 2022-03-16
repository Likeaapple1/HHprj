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
<!-- 모달 -->
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
			      <td><input type = "text" readonly></td>
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
	<h1>개인 근태관리 현황</h1>
    <form action="attstatus" method="get">
        <select name="type">
        	<option value="근무상태">-- 근 무 --</option>
            <option value="정상근무">정상 근무</option>
            <option value="지각">지각</option>
            <option value="초과근무">초과 근무</option>
            <option value="야간근무">야간 근무</option>
            <option value="휴일근무">휴일 근무</option>
        </select>
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
	<br>
	<iframe src="${root}/attendance/updateContent" scrolling="no" width="100%" height="50%">
	</iframe>
</body>
<script type="text/javascript">
/* 	모달창 띄우기 */
	function AttInfo(clicked_element){
		let row_td = clicked_element.getElementsByTagName("td");
		let modal = document.getElementById("myModal");
		
		document.getElementById("att_no").value = row_td[0].innerHTML;
		document.getElementById("att_str").innerHTML = row_td[1].innerHTML;
		document.getElementById("att_work_form").innerHTML = row_td[2].innerHTML;
		document.getElementById("att_str_date").innerHTML = row_td[3].innerHTML;
		document.getElementById("att_end_date").innerHTML = row_td[4].innerHTML;
		document.getElementById("att_total").innerHTML = row_td[5].innerHTML;
		document.getElementById("att_content").innerHTML = row_td[6].innerHTML;
		document.getElementById("att_content_yn").innerHTML = row_td[7].innerHTML;
		modal.style.display = "block";
	} 
	
	function modalclose(){
		window.location.reload();
	}
	
	$(document).ready(function(){
		$('#submit').click(function(){   //submit 버튼을 클릭하였을 때
			let attno = $('#att_no').val();  //폼의 이름 값을 변수 안에 담아줌
			let attcontent = $("#att_content").val();
			console.log(attcontent);
			console.log(attno);
			$.ajax({
				type:'post',   //post 방식으로 전송
				url:"${root}/attendance/attstatus/update",   //데이터를 주고받을 파일 주소
				data:{attno, attcontent}, //위의 변수에 담긴 데이터를 전송해준다.
				success : function(data){  //파일 주고받기가 성공했을 경우. data 변수 안에 값을 담아온다.
						modalclose();
				}
			});
		});
	});
	
	
</script>
</html>