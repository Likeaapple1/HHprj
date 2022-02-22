<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>직원 관리</title>

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script>
$(document).ready(function() {
	
	//삭제 버튼에 대한 클릭 이벤트 등록
	//지역번호->hidden form에 지정
	//지역번호, 이름을 comment 영역에 출력
	//삭제 모달창 호출
	$("button.delete").on("click",function(){
		$("#deleteFormModal #regionId").val($(this).val());
		$("#deleteFormModal #comment").text("지역번호:"+ $(this).val() +" ,이름:"+ $(this).parents("tr").find("span").text());
		$("#deleteFormModal").modal();
	});
	
	//수정 버튼에 대한 클릭 이벤트 등록
	//타이틀 변경
	//action="regionupdate.it" 변경
	//지역번호-> 지역번호 폼에 지정
	//지역명-> 지역명 폼에 지정
	$("button.update").on("click",function(){
		$("#insertUpdateForm .panel-heading").text("지역 수정");
		$("#insertUpdateForm form").attr("action","regionupdate.it");
		$("#insertUpdateForm input#regionId").val($(this).val());
		$("#insertUpdateForm input#regionName").val($(this).parents("tr").find("span").text());
	});
	
	
}); //ready 이벤트

</script>

</head>
<body>
	<div class="container">
		<div style="margin-bottom: 1%;">
			<div>
				<h1 style="font-size: x-large;">
					<img src="${pageContext.request.contextPath}/resources/img/sist_logo.png" alt="logo"
					style="vertical-align: bottom;"> 직원관리<small>v3.0</small>
				</h1>
			</div>
			<div>
				<ul class="nav nav-pills nav-justified ">
					<li><a href="employeelist.it">직원관리</a></li>
					<li class="active"><a href="regionlist.it">지역관리</a></li>
					<li><a href="departmentlist.it">부서관리</a></li>
					<li><a href="positionlist.it">직위관리</a></li>
					
					<%-- 세션 정보를 EL 표현으로 출력 --%>
					<li><a href="j_spring_security_logout" style="color: red">${pageContext.request.userPrincipal.name} 로그아웃</a></li>

					
				</ul>
			</div>

		</div>
		
		<%-- 입력 폼 + 수정 폼 동시 운영 --%>
		<div class="panel panel-default" id="insertUpdateForm">
			
			<!-- 지역 입력 + 지역 수정 -->
			<div class="panel-heading">지역 입력</div>
			<div class="panel-body" id="demo">
			
				<!-- action="regionupdate.it" or action="regioninsert.it" -->
				<form role="form" action="regioninsert.it" method="post">
					<div class="form-group">
					
						<!-- value="" or value="번호" -->
						<input type="text" class="form-control" id="regionId" name="regionId"
							value="" placeholder="지역번호 (수정시 사용)" value="" required="required" readonly="readonly">
					</div>
					<div class="form-group">
								
						<!-- value="" or value="지역명" -->
						<input type="text" class="form-control" id="regionName" name="regionName"
							value="" placeholder="지역명 (30자 이내)" maxlength="30" required="required">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>

			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-heading">지역 출력</div>
			<div class="panel-body">
				<table class="table">
					<thead>
						<tr>
							<th>번호</th>
							<th>지역명</th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					
						<!-- 					
						<tr>
							<td>1</td>
							<td><span>서울</span></td>
							<td><button type="button" class="btn btn-default btn-sm">Delete</button></td>
						</tr>
						 -->
						<c:forEach var="region" items="${list}">
						<tr>
							<td>${region.regionId}</td>
							<td><span>${region.regionName}</span></td>
							<td><button type="button" class="btn btn-default btn-xs  delete" 
									${region.delCheck==0?"":"disabled=\"disabled\""}  value="${region.regionId}">삭제</button></td>
							<td><button type="button" class="btn btn-default btn-xs  update" value="${region.regionId}">수정</button></td>
						</tr>
						</c:forEach>
						
					</tbody>
				</table>

			</div>
		</div>
	</div>


	<!-- Delete Form Modal -->
	<div id="deleteFormModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">지역 삭제</h4>
				</div>
				<div class="modal-body">

					<p>
						현재 선택한 지역 정보(<span id="comment"></span>)를 삭제할까요?
					</p>

					<!-- 삭제 진행시 번호와 패스워드를 서버로 전송해야 한다. -->
					<form action="regiondelete.it" method="post">

						<!-- 번호 전송은 hidden form 사용 -->
						<%-- hidden form 추가 --%>
						<input type="hidden" id="regionId" name="regionId" value="">

						<button type="submit" class="btn btn-default">삭제</button>

					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-sm"
						data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>
	
</body>
</html>