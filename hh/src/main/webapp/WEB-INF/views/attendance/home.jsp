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
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>

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
					<span><b>${loginUser.empName}님</b> 출근 등록을 해주세요</span>
					<input type="submit" formaction="${root}/attendance/home" value = "출&nbsp;근">
				</form>
			</c:when>
			<c:when	test="${attUser.attDate != null}">
				<form action = "" method="post">
					<span><b>${loginUser.empName}님</b> 퇴근 등록을 해주세요</span>
					<input type = "submit" formaction="${root}/attendance/workout" value ="퇴&nbsp;근">
				</form>
			</c:when>
		</c:choose>
		</td>
	</tr>
</table>	

<!-- <!-- 차트 그리기 -->
<!-- <div style = "width:500px; height:1000px;" id = "myBarChart"> -->

<!-- </div> -->
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
        	    alert("근무 형태 : " + info.event.title);
        	  }
        });
        calendar.render();
      });
     </script>
     
     <!-- 차트 그리기 -->
     <script type="text/javascript">
  // Set new default font family and font color to mimic Bootstrap's default styling
     Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
     Chart.defaults.global.defaultFontColor = '#292b2c';


     var myLineChart = {
       labels : [],
       dataSets : [],
       render : function() {
         new Chart($("#myBarChart"), {
           type: 'bar',
           data: {
             labels: myLineChart.labels,
             datasets: [{
               label: "매출액",
               lineTension: 0.3,
               backgroundColor: "rgba(2,117,216,0.2)",
               borderColor: "rgba(2,117,216,1)",
               pointRadius: 5,
               pointBackgroundColor: "rgba(2,117,216,1)",
               pointBorderColor: "rgba(255,255,255,0.8)",
               pointHoverRadius: 5,
               pointHoverBackgroundColor: "rgba(2,117,216,1)",
               pointHitRadius: 50,
               pointBorderWidth: 2,
               data: myLineChart.dataSets,
             }],
           },
           options: {
             responsive : true,
             scales: {
               xAxes: [{
                 time: {
                   unit: 'day'
                 },
                 gridLines: {
                   display: false
                 },
                 ticks: {
                   maxTicksLimit: 7
                 }
               }],
               yAxes: [{
                 gridLines: {
                   color: "rgba(0, 0, 0, .125)",
                 }
               }],
             },
             legend: {
               display: false
             }
           }
         });
       },
       showData : function(){
         labels = [];
         dataSets= [];
         $.ajax({
           type : 'GET',
           url : '${root}/attendance/home',
           contentType: 'application/json',
           //dataType 정의
           dataType: 'json',
           //요청결과가 성공일 경우
           success : function(data) {
             //console.log(data);
             $.each(data, function(index,obj){
               myLineChart.labels.push(obj.date);
               myLineChart.dataSets.push(obj.sales);
             });
             myLineChart.render();
           },
           //요청결과가 실패일 경우
           error : function(xhr, status, error){
           }
         });
       }
     };

     myLineChart.showData();
     </script>
</html>