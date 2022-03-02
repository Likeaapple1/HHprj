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
					<input type="submit" formaction="${root}/attendance/working" value = "출&nbsp;근">
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
         ]
        });
        calendar.render();
      });
     </script>
     
</html>