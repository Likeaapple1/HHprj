<%@page import="java.util.List"%>
<%@page import="com.hh.hh.attendance.entity.AttendanceDto"%>
<%@page import="com.hh.hh.annual.entity.AnnualDto"%>
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
<script type='text/javascript' src='${root}/resources/js/gcal.js'></script>
 <!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- bootstrap 4 -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.fc-day-sun{
	color :red;
}
.fc-day-sat{
	color :blue;
}
</style>
</head>
<body>
<table>
	<tr>
		<td>
		<c:choose>
			<c:when	test="${attUser.attDate eq null}">
				<form action = "" method="post">
					<span>출근 등록을 해주세요</span>
					<input type="submit" formaction="${root}/attendance/home" value = "출&nbsp;근">
				</form>
			</c:when>
			<c:when	test="${attUser.attDate != null}">
				<form action = "" method="post">
					<span>퇴근 등록을 해주세요</span>
					<input type = "submit" formaction="${root}/attendance/workout" value ="퇴&nbsp;근">
				</form>
			</c:when>
		</c:choose>
		</td>
	</tr>
</table>	
  <!-- Modal -->

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
			 <thead>
			   <tr>
			      <th>일시</th>
				  <td><input type = "date" id = "currentDate"></td>
			   </tr>
			 </thead>
			 <tbody>
			   <tr>
			      <th>상태</th>
			      <td>
					<select name="stance">
					    <option value="working">업무</option>
					    <option value="workout">업무종료</option>
					    <option value="outsidework">외근</option>
					    <option value="businesstrip">출장</option>
					</select>
				  </td>
			   </tr>
			   <tr>
			      <th>내용</th>
			      <td><input type = "text" name = "content"></td>
			   </tr>
			   <tr>
				  <th>수정/삭제 사유</th>
			      <td><input type = "text" name = "reason"></td>
			   </tr>
			 </tbody> 
			</table>
			</form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">수정</button>
		  <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>
      </div>
    </div>
  </div>



<br/><br/>

<!-- 아래에서 data-toggle과 data-target 속성에서 data-toggle에는 modal 값을 data-target속성에는 모달 창 전체를 

감싸는 div의 id 이름을 지정하면 된다. -->

&nbsp;&nbsp;<button type="button" data-toggle="modal" data-target="#myModal">모달 창 열기</button>

&nbsp;&nbsp;<a data-toggle="modal" href="#myModal">모달 창 열기</a>

<div id='calendar' style = "height: 1000px; width:1000px;"></div>
</body>
<script>
document.addEventListener('DOMContentLoaded', function() {
	var calendarEl = document.getElementById('calendar');
	var calendar = new FullCalendar.Calendar(calendarEl, {
		initialView : 'dayGridMonth', // 초기 로드 될때 보이는 캘린더 화면(기본 설정: 달)
		headerToolbar : { // 헤더에 표시할 툴 바
			start : 'prev next today',
			center : 'title',
			end : 'dayGridMonth,dayGridWeek,dayGridDay'
		},
		titleFormat : function(date) {
			return date.date.year + '년 ' + (parseInt(date.date.month) + 1) + '월';
		},
		

		editable : true,
		nowIndicator: true, // 현재 시간 마크
		displayEventTime: false,
		locale: 'ko', // 한국어 설정	
		
		  googleCalendarApiKey : "AIzaSyDcnW6WejpTOCffshGDDb4neIrXVUA1EAE"      // Google API KEY
	            , eventSources : [
	                // 대한민국의 공휴일
	                {
	                      googleCalendarId : "ko.south_korea#holiday@group.v.calendar.google.com"
	                    , className : "koHolidays"
	                    , color : "#FF0000"
	                    , textColor : "#FFFFFF"
	                }  ],
	          events : [ 
	            <%List<AttendanceDto> workUserList = (List<AttendanceDto>)request.getAttribute("workUserList");%>
	            <%List<AnnualDto> holiUserList = (List<AnnualDto>)request.getAttribute("holiUserList");%>
	               <%if (workUserList != null || holiUserList != null) {%>
	                    <%for (AttendanceDto dto : workUserList) {%>
	                        {
	                        title : '<%=dto.getWorkForm()%>',
	                         start : '<%=dto.getStartDate()%>',
	                           end : '<%=dto.getEndDate()%>',
	                         color : '#2D82D7'
	                       },
	              <%}%>
	                    <%for (AnnualDto adto : holiUserList) {%>
	                        {
	                        title : '<%=adto.getAnnualKinds()%>',
	                         start : '<%=adto.getStartDate()%>',
	                           end : '<%=adto.getEndDate()%>',
	                         color : '#898C8E'
                       },
               <%}
              }%>
         ],  eventClick: function(info) {
        	    alert('Event: ' + info.event.title);
        	    alert('View: ' + info.view.type);

        	    info.el.style.borderColor = 'red';
        	  }
        });
        calendar.render();
      });
      
      document.getElementById('currentDate').value = new Date().toISOString().substring(0, 10);
      
     </script>
     
</html>