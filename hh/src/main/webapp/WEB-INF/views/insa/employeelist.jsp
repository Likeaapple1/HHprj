<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	$(document).ready(
			function() {

				//검색 진행후 검색 키워드가 화면에 그대로 남아있도록 액션 추가
				//-> 검색 폼 부분에 기존 검색 키워드를 재설정
				$("input#value").val("${value}");
				$("select#key option[value='${key}']").attr("selected",
						"selected");
				
				$("#key").on("change", (function() {
					$("#value").val("");
				}));

				//사진보기 버튼에 대한 클릭 이벤트 등록
				//->Ajax 요청 및 응답 처리
				$("button.picture")
						.on(
								"click",
								function() {
									//서버에 사진 정보를 확인하기 위한 직원번호를 전송한다.
									var employeeId = $(this).val();
									var name = $(this).parent().children()
											.eq(0).text();
									$.post("ajaxpicture.it", {employeeId : employeeId}, function(data) {
										//Ajax 응답으로 받은 사진 파일명을 가지고 이미지 출력
										console.log(data);

										//문제) 제목 동적 출력 과정 추가
										$("#pictureModal h4").text(name + "의 사진");

										//문제) 이미지 동적 출력 과정 추가
										if ($.trim(data) != "") {
											$("#pictureModal").find("img")
													.attr("src","resources/picture/" + data);
										}

										console.log($("#pictureModal").find("img").attr("src"));

										//문제) 모달 창 호출 액션
										$("#pictureModal").modal();

									});
								});

						//사진등록 버튼에 대한 클릭 이벤트 등록
						$("button.pictureInsertForm").on("click", function() {

						//직원번호를 사전에 hidden form에 지정해 놓는다.
						//현재 직원이 사진이 있는지 확인 후 결과를 hidden form에 지정.

						$("#pictureInsertForm #employeeid").val($(this).parents("tr").children().eq(0).text());		
						console.log($("#pictureInsertForm #employeeid").val());

						//사진보기 버튼 개수, 사진O -> "1", 사진X -> "0"
						console.log($(this).parents("tr").find("td button.picture").length);
						$("#pictureInsertForm #picturekey").val($(this).parents("tr").find("td button.picture").length);

						$("#pictureInsertForm").modal();
						});
				
						
					//문제) 삭제 버튼에 대한 클릭 이벤트 등록
					//직원번호 -> hidden form에 지정
					//직원번호, 이름을 comment 영역에 출력
					//삭제 모달창 호출
					$("button.delete").on("click",function(){
					$("#deleteFormModal #employeeId").val($(this).val());
					$("#deleteFormModal #comment").text("직원번호:"+ $(this).val() +" ,이름:"+ $(this).parents("tr").find("span").text());
					$("#deleteFormModal").modal();
					});
			});
</script>

</head>
<body>
	<div class="container">
		<div style="margin-bottom: 1%;">
			<div>
				<h1 style="font-size: x-large;">
					<img src="${pageContext.request.contextPath}/resources/img/sist_logo.png"
						alt="logo" style="vertical-align: bottom;"> 직원관리<small>v3.0</small>
				</h1>
			</div>
			<div>
				<ul class="nav nav-pills nav-justified ">
					<li class="active"><a href="employeelist.it">직원관리</a></li>
					<li><a href="regionlist.it">지역관리</a></li>
					<li><a href="departmentlist.it">부서관리</a></li>
					<li><a href="positionlist.it">직위관리</a></li>
					<%-- 세션 정보를 EL 표현으로 출력 --%>
					<li><a href="j_spring_security_logout" style="color: red">
					${pageContext.request.userPrincipal.name} 로그아웃</a></li>

				</ul>
			</div>

		</div>
		<div class="panel-group">
			<div class="panel panel-default">
				<div class="panel-heading">직원 출력</div>
				<div class="panel-body">
					<%-- form 태그에서 action="" 속성 생략하면 서브밋 주소가 자기 자신을 호출한다.--%>
					<form class="form-inline" role="form" method="post">
						<select class="form-control" id="key" name="key">
							<option value="1">번호</option>
							<option value="2">이름</option>
							<option value="3">지역</option>
							<option value="4">부서</option>
							<option value="5">직위</option>
						</select> <label for="name"></label> <input type="text"
							class="form-control" id="value" name="value" required="required">
						<button type="submit" class="btn btn-default">
							<span class="glyphicon glyphicon-search"></span> Search
						</button>
					</form>


					<table class="table">
						<thead>
							<tr>
								<th>번호</th>
								<th>이름</th>
								<th>생년월일</th>
								<th>양음력</th>
								<th>전화번호</th>
								<th>지역명</th>
								<th>부서명</th>
								<th>직위명</th>
								<th>기본급</th>
								<th>수당</th>
								<th>급여</th>
								<th>사진등록</th>
								<th>삭제</th>
								<th>수정</th>
							</tr>
						</thead>
						<tbody>
							<%-- 
							<tr>
								<td>1</td>
								<td>홍길동
									<button type="button" class="btn btn-default btn-xs"
										data-toggle="modal" data-target="#myModal">사진</button>
								</td>
								<td>1980-12-12</td>
								<td>양력</td>
								<td>010-123-1234</td>
								<td>서울</td>
								<td>개발부</td>
								<td>사원</td>
								<td>1,500,000</td>
								<td>1,000,000</td>
								<td>2,500,000</td>
								<td><button type="button" class="btn btn-default btn-xs">사진등록</button></td>
								<td><button type="button" class="btn btn-default btn-xs">삭제</button></td>
							</tr>
							--%>
							<c:forEach var="emp" items="${list}">
								<tr>
									<td>${emp.employeeId}</td>
									<td><span>${emp.name}</span> <c:if
											test="${not empty emp.employeePicFileName}">
											<button type="button" class="btn btn-default btn-xs picture"
												value="${emp.employeeId}">사진</button>
										</c:if></td>
									<td>${emp.birthday}</td>
									<td>${emp.lunarName}</td>
									<td>${emp.telephone}</td>
									<td>${emp.regionName}</td>
									<td>${emp.departmentName}</td>
									<td>${emp.positionName}</td>
									<td><fmt:formatNumber value="${emp.basicPay}"
											groupingUsed="true"></fmt:formatNumber></td>
									<td><fmt:formatNumber value="${emp.extraPay}"
											groupingUsed="true"></fmt:formatNumber></td>
									<td><fmt:formatNumber value="${emp.pay}"
											groupingUsed="true"></fmt:formatNumber></td>
									<td><button type="button"
											class="btn btn-default btn-xs  btnPictureInsert pictureInsertForm">사진등록</button></td>
									<td><button type="button"
											class="btn btn-default btn-xs  delete" value="${emp.employeeId}">삭제</button></td>
									
									<!-- 수정 액션을 위한 버튼(<a> 태그)에 getString 직원번호 추가 -->
									<td><a href="employeeupdateform.it?employeeId=${emp.employeeId}" role="button"
											class="btn btn-default btn-xs">수정</a></td>
							</c:forEach>
						</tbody>
					</table>

					<form class="form-inline" role="form" method="post">
						<a href="employeeinsertform.it" class="btn btn-default">Add</a>
						<button type="button" class="btn btn-default">
							totalCount <span class="badge">${totalcount}</span>
						</button>
						<button type="button" class="btn btn-default">
							Count <span class="badge">${count}</span>
						</button>
					</form>

				</div>
			</div>
		</div>

		<!-- 사진보기 모달 -->
		<div id="pictureModal" class="modal fade" role="dialog">
			<div class="modal-dialog modal-sm">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>

						<%-- 사진 보기 선택한 사용자의 이름 출력 --%>
						<h4 class="modal-title pictureName">홍길동의 사진</h4>

					</div>
					<div class="modal-body">
						<div style="text-align: center;">

							<%-- Ajax 요청에 대한 응답 결과를 가지고 이미지 처리 --%>
							<img src="resources/picture/noimage.jpg" width="100%">

						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>

	</div>

<!-- 사진등록 모달 -->
<div id="pictureInsertForm" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">사진 등록</h4>
			</div>
			<div class="modal-body">

				<%-- 파일 업로드를 위한 설정 추가. enctype="multipart/form-data" --%>
				<form id="fileUpload" role="form" action="employeepictureinsert.it" method="post"
					enctype="multipart/form-data">

					<%-- 파일 업로드를 위한 직원 번호 전송 준비 --%>
					<input type="hidden" id="employeeid" name="employeeId" value="">
					<%-- 파일 업로드를 위한 사진 액션 구분(신규 등록 0, 수정 1) --%>
					<input type="hidden" id="picturekey" name="picturekey" value="0">

					<div class="form-group">
						<label for="fileName">사진등록 (only JPG, 100K byte 이내):</label> <input
							type="file" class="form-control" id="file"
							name="file" required="required">
					</div>
					<button type="submit" class="btn btn-default">Submit</button>
				</form>


			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>

	</div>
</div>

<!-- 삭제 폼 Modal -->
<div id="deleteFormModal" class="modal fade" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">직원 삭제</h4>
			</div>
			<div class="modal-body">

				<p>현재 선택한 직원 정보(<span id="comment"></span>)를 삭제할까요?</p>
				<!-- 삭제 진행시 번호와 패스워드를 서버로 전송해야 한다. -->
				<form action="employeedelete.it" method="post">

					<!-- 번호 전송은 hidden form 사용 -->
					<%-- hidden form 추가 --%>
					<input type="hidden" id="employeeId" name="employeeId" value="">
	
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