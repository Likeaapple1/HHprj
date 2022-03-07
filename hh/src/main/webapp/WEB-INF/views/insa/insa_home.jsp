<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="ko">
<head>
  <style>
    .center {
      margin: auto;
      text-align: center;
    }
    .tb_salary1 {
      font-size: 10pt;
    }
    .div1 {
      overflow-y: scroll;
      min-height: 0px;
      max-height: 330px;
    }
    td, th {
      height: 30px;
    }
    .mon {
      height: 35px;
    }
    .right {
      text-align: right;
    }
    
    .navbar {
	margin-bottom: 50px;
	border-radius: 0;
}

/* Remove the jumbotron's default bottom margin */
.jumbotron {
	margin-bottom: 0;
}

/* Add a gray background color and some padding to the footer */
#footer {
	margin-top: 50px;
	background-color: #f2f2f2;
	padding: 25px;
}

#content {
	margin-left: 50px;
	margin-right: 50px;
	overflow: hidden;
}

#title {
	border-bottom: 2px solid #727377;
}

#title>*, #leftTop>* {
	display: inline-block;
}

#leftMenu, #rightMenu {
	margin-top: 10px;
}

#leftTop>button {
	margin-left: 5px;
}

form {
	margin-bottom: 10px;
}

.telNumMax, #phoneNum1, #telNum1, #phoneNum1_up, #telNum1_up {
	text-align-last: center;
}

.leftNoPadding {
	padding-left: 0px;
}

.rightNoPadding {
	padding-right: 0px;
}

.profileImg {
	height: 128px;
	width: 96px;
}

.tableMiddle > thead > tr > th, .tableMiddle > thead > tr > td,
.tableMiddle > tbody > tr > th, .tableMiddle > tbody > tr > td {
	vertical-align: middle;
}

#dpt_sq_dept {
    height: 300px;
}

#departmentModal > div {
	top: 50%;
	margin-top: -260px;
}

.overError {
	overflow: hidden;
}

#dpt_sq_dept {
	overflow: auto;
}

.small-icon {
	line-height: 20px;
	height: 20px;
	width: 20px;
	display: none;
	pointer-events: auto
}


#deptNmUp {
	width: 167px;
}

#officerList > thead > tr > th, #officerList > tbody > tr > td {
	text-align: center;
}

    .tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top}
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>인사기본정보</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="${path}/resources/css/insa/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${path}/resources/css/insa/dist/css/adminlte.min.css">

  <!-- 부트스트랩 -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<!-- 다음 주소 API -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script type="text/javascript">
	
	$(document).ready(function() {

		
		/* 사원 검색 */
		$("#search").on("click", function() {
			if ($("#keyword").val() == "") {
				alert("검색어를 최소 1글자 이상 입력해주세요.");
				return;
			} else if ($("#keyword").val() != "")
				var params = {
					cate : $("#cate").val(),
					keyword : $("#keyword").val()
				};
			
				officerListSearch(params);
		});
		
		// Ajax 페이징 처리
		$(document).on("click", "#pageIndexListAjax > li > a", function() {
			var params = {
					cate : $("#cate").val(),
					keyword : $("#keyword").val(),
					page : $(this).attr("data-page")
				};
			
			officerListSearch(params);
		});
		
		/* 입사일 자동 입력 */
		$("#officerInsertModal").on("click", function() {
			var date = new Date();
	
			var yyyy = date.getFullYear();
			var mm = (date.getMonth() + 1)
			var dd = date.getDate();
	
			if (mm < 10) {
				mm = "0" + mm;
			}
			if (dd < 10) {
				dd = "0" + dd;
			}
	
			date = yyyy + "-" + mm + "-" + dd;
	
			$("#stf_ent").val(date);
		});

		/* 한글 입력 방지 */
		$("#stf_eml, #stf_sq1").on("keyup", function() {
			$(this).val($(this).val().replace(/[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, ""));
		});
				
		// Update 숫자만 입력
		$(".telNumMax").on("keyup", function() {
			$(this).val($(this).val().replace(/[^0-9]/gi, ""));
		
			// 전화번호 최대 입력 방지
			if ($(this).val().length > 4) {
				$(this).val($(this).val().substring(0, 4));
			}
			
			if ($(this).attr("id") == "phoneNum2" || $(this).attr("id") == "phoneNum3") {
				var phoneNum = $("#phoneNum1").val() + "-" + $("#phoneNum2").val() + "-" + $("#phoneNum3").val();
				$("#stf_ph").val(phoneNum);
			}
			else if ($(this).attr("id") == "telNum2" || $(this).attr("id") == "telNum3") {
				var telNum = $("#telNum1").val() + "-" + $("#telNum2").val() + "-" + $("#telNum3").val();
				$("#stf_bs_ph").val(telNum);
			}			
			else if ($(this).attr("id") == "phoneNum2_up" || $(this).attr("id") == "phoneNum3_up") {
				var phoneNum = $("#phoneNum1_up").val() + "-" + $("#phoneNum2_up").val() + "-" + $("#phoneNum3_up").val();
				$("#stf_ph_up").val(phoneNum);
			}
			else if ($(this).attr("id") == "telNum2_up" || $(this).attr("id") == "telNum3_up") {
				var telNum = $("#telNum1_up").val() + "-" + $("#telNum2_up").val() + "-" + $("#telNum3_up").val();
				$("#stf_bs_ph_up").val(telNum);
			}
		});

		// insert 비밀번호 자동 입력1
		$("#stf_pw1").on("keyup", function() {
			if ($("#stf_pw1").val() == "" && $("#stf_pw2").val() == "") {
				$("#stf_pw1_Div").removeAttr("class");
				$("#stf_pw1_Span").removeAttr("class");
			} else if ($("#stf_pw1").val() == $("#stf_pw2").val()) {
				$("#stf_pw").val($("#stf_pw1").val());
				$("#stf_pw1_Div").attr("class",	"has-success has-feedback");
				$("#stf_pw1_Span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
			} else if ($("#stf_pw1").val() != $("#stf_pw2").val()) {
				$("#stf_pw").val("");
				$("#stf_pw1_Div").attr("class",	"has-error has-feedback");
				$("#stf_pw1_Span").attr("class", "glyphicon glyphicon-remove form-control-feedback");
			}
		});

		// insert 비밀번호 자동 입력2
		$("#stf_pw2").on("keyup", function() {
			if ($("#stf_pw2").val() == "" && $("#stf_pw1").val() == "") {
				$("#stf_pw1_Div").removeAttr("class");
				$("#stf_pw1_Span").removeAttr("class");
			} else if ($("#stf_pw2").val() == $("#stf_pw1").val()) {
				$("#stf_pw").val($("#stf_pw2").val());
				$("#stf_pw1_Div").attr("class",	"has-success has-feedback");
				$("#stf_pw1_Span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
			} else if ($("#stf_pw2").val() != $("#stf_pw1").val()) {
				$("#stf_pw").val("");
				$("#stf_pw1_Div").attr("class",	"has-error has-feedback");
				$("#stf_pw1_Span").attr("class", "glyphicon glyphicon-remove form-control-feedback");
			}
		});
		
		// update 비밀번호 자동 입력1
		$("#stf_pw1_up").on("keyup", function() {
			if ($("#stf_pw1_up").val() == "" && $("#stf_pw2_up").val() == "") {
				$("#stf_pw1_Div_up").removeAttr("class");
				$("#stf_pw1_Span_up").removeAttr("class");
			} else if ($("#stf_pw1_up").val() == $("#stf_pw2_up").val()) {
				$("#stf_pw_up").val($("#stf_pw1_up").val());
				$("#stf_pw1_Div_up").attr("class",	"has-success has-feedback");
				$("#stf_pw1_Span_up").attr("class", "glyphicon glyphicon-ok form-control-feedback");
			} else if ($("#stf_pw1_up").val() != $("#stf_pw2_up").val()) {
				$("#stf_pw_up").val("");
				$("#stf_pw1_Div_up").attr("class",	"has-error has-feedback");
				$("#stf_pw1_Span_up").attr("class", "glyphicon glyphicon-remove form-control-feedback");
			}
		});

		// update 비밀번호 자동 입력2
		$("#stf_pw2_up").on("keyup", function() {
			if ($("#stf_pw2_up").val() == "" && $("#stf_pw1_up").val() == "") {
				$("#stf_pw1_Div_up").removeAttr("class");
				$("#stf_pw1_Span_up").removeAttr("class");
			} else if ($("#stf_pw2_up").val() == $("#stf_pw1_up").val()) {
				$("#stf_pw_up").val($("#stf_pw2_up").val());
				$("#stf_pw1_Div_up").attr("class",	"has-success has-feedback");
				$("#stf_pw1_Span_up").attr("class", "glyphicon glyphicon-ok form-control-feedback");
			} else if ($("#stf_pw2_up").val() != $("#stf_pw1_up").val()) {
				$("#stf_pw_up").val("");
				$("#stf_pw1_Div_up").attr("class",	"has-error has-feedback");
				$("#stf_pw1_Span_up").attr("class", "glyphicon glyphicon-remove form-control-feedback");
			}
		});
		
		// insert 사원번호 자동 입력
		$("#stfNumSearchBtn").on("click", function() {
			if ($("#stf_sq1").val() == "") {
				alert("사원번호를 입력해주세요.");
			} else if ($("#stf_sq1").val() != "") {
				selectStf_sq($("#stf_sq1").val());
			}
		});

		// insert 사원번호 다시 체크
		$("#stf_sq1").on("keyup", function() {
			if ($("#stf_sq1").val() != $("#stf_sq").val()) {
				$("#stf_sq_Div").removeAttr("class");
				$("#stf_sq_Span").removeAttr("class");
				$("#stf_sq").val("");
			}
		});

		// update 사원번호 자동 입력
		$("#stfNumSearchBtn_up").on("click", function() {
			if ($("#stf_sq1_up").val() == "") {
				alert("사원번호를 입력해주세요.");
			} else if ($("#stf_sq1_up").val() != "") {
				selectStf_sq($("#stf_sq1_up").val());
			}
		});

		// update 사원번호 다시 체크
		$("#stf_sq1_up").on("keyup", function() {
			if ($("#stf_sq1_up").val() != $("#stf_sq").val()) {
				$("#stf_sq_Div_up").removeAttr("class");
				$("#stf_sq_Span_up").removeAttr("class");
				$("#stf_sq_up").val("");
			}
		});
		
		// 최대 입력 방지
		$("#stf_sq1, #stf_sq1_up").on("keyup", function() {
			if ($(this).val().length > 10) {
				$(this).val($(this).val().substring(0, 10));
			}
		});


		// 최대 입력 방지
		$("#stf_dt_add").on("keyup", function() {
			if ($(this).val().length > 33) {
				$(this).val($(this).val().substring(0, 33));
			}
		});

		/* 구성원 추가 */
		$("#officerInsert").on("click",	function() {
	
			var emailCheck = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

			if ($("#file").val() == "") {
				alert("프로필 사진을 확인해주세요.");
				return;
			} else if ($("#stf_nm").val() == "") {
				alert("이름을 확인해주세요.");
				return;
			} else if ($("#stf_pw").val() == "") {
				alert("비밀번호를 확인해주세요.");
				return;
			} else if ($("#stf_sq").val() == "") {
				alert("사원번호를 확인해주세요.");
				return;
			} else if ($("#stf_cm_add").val() == ""
					|| $("#stf_dt_add").val() == "") {
				alert("주소를 확인해주세요.");
				return;
			} else if (!emailCheck.test($(
					"#stf_eml").val())) {
				alert("이메일을 확인해주세요.");
				return;
			} else if ($("#stf_ph").val().length != 13) {
				alert("휴대폰 번호를 확인해주세요.");
				return;
			} else if ($("#stf_bs_ph").val().length != 13) {
				alert("내선번호를 확인해주세요.");
				return;
			}
			else if ($("#stf_ent").val() == "") {
				alert("입사일을 확인해주세요.");
				return;
			}

			officerInsert();
		});
		
		/* 구성원 추가 */
		$("#officerUpdate").on("click",	function() {
	
			var emailCheck = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

			if ($("#stf_nm_up").val() == "") {
				alert("이름을 확인해주세요.");
				return;
			} else if ($("#stf_pw1_up").val() != $("#stf_pw2_up").val()) {
				alert("비밀번호를 확인해주세요.");
				return;
			} else if ($("#stf_cm_add_up").val() == ""
					|| $("#stf_dt_add_up").val() == "") {
				alert("주소를 확인해주세요.");
				return;
			} else if (!emailCheck.test($(
					"#stf_eml_up").val())) {
				alert("이메일을 확인해주세요.");
				return;
			} else if ($("#stf_ph_up").val().length != 13) {
				alert("휴대폰 번호를 확인해주세요.");
				return;
			} else if ($("#stf_bs_ph_up").val().length != 13) {
				alert("내선번호를 확인해주세요.");
				return;
			} else if ($("#stf_ent_up").val() == "") {
				alert("입사일을 확인해주세요.");
				return;
			}

			officerUpdate();
		});
		
		/* 파일(이미지) 미리보기 */
		$("#file, #file_up").on("change", function(event) {
			var input = this;

			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('#imgView').attr('src', e.target.result);
					$('#imgView_up').attr('src', e.target.result);
				}
				reader.readAsDataURL(input.files[0]);
			}
		});
		
		// 구성원 수정 모달 띄우기
		$("#officerUpdateModal").on("click", function() {
			
			if ($(".radio").is(":checked") == false) {
				alert("사원을 선택해주세요.");
				return;
			}
			
			$("#officerUpdateModal").attr("data-target", "#updateModal");
			
			selectUpdateOfficer();
		});
		
		// 부서명 입력
		$("#deptInsert").on("click", function() {
			deptInsert();
		});

		// 부서 관리 input으로 변경
		$(document).on("dblclick", ".deptDiv", function() {
			var dtp_sq = $(this).attr("data-value");
			var dtp_nm = $(this).text();
			
			deptList(dtp_sq, dtp_nm);
		});
			 	 
		// 부서명 수정 진행
		$(document).on("click", "#deptUpdate", function() {
			selectDeptNm();
		});
		
		// 최대 입력 방지
		$(document).on("keyup", "#addDept, #deptNmUp", function() {
			if ($(this).val().length > 8) {
				$(this).val($(this).val().substring(0, 8));
			}
		});
		
		$(document).on("mouseenter", ".deptDiv", function() {
			$(this).parent().children("span").css("display", "inline");
			$(this).css({"background-color" : "#1E90FF", "color" : "white", "cursor" : "default"});
		});
		
		$(document).on("mouseenter", ".small-icon", function() {
			$(this).parent().children("div").css({"background-color" : "#1E90FF", "color" : "white", "cursor" : "default"});
			$(this).css("display", "inline");
		});
				
		$(document).on("mouseleave", ".deptDiv", function() {
			$(".small-icon").css("display", "none");
			$(this).removeAttr("style");
		});
		
		$(document).on("mouseleave", ".small-icon", function() {
			$(".small-icon").css("display", "none");
			$(this).parent().children("div").removeAttr("style");
		});
		
		// 부서명 삭제
		$(document).on("click", ".small-icon", function() {
			var dpt_sq = $(this).parent().children("div").attr("data-value");
			deptDelete(dpt_sq);
		});
		
		// 조직도 닫은 후 강제 리다이렉트
		$("#deptClose").on("click", function() {
			window.location = "/admin/officerList";
		});
		
	});

	/* 사원 검색 */
	function officerListSearch(params) {
		$.ajax({
			url : "/admin/officerListSearch",
			type : "POST",
			dataType : "json",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				$("#userCount").empty();
				$("#officerList > tbody").empty();
				$("#pageIndexList").empty();
			},
			success : function(data) {
	
				var officerListCount = data.officerListCount;
				var officerList = data.officerList;
				var pageIndexListAjax = data.pageIndexListAjax;
	
				$("#userCount").html(officerListCount);
	
				var tbody = $("#officerList > tbody");

				$.each(officerList,	function(idx, val) {
					tbody.append($('<tr>').append($('<td>',	{html : "<input type='radio' class='radio' value='"+val.STF_SQ+"'>"}))
										  .append($('<td>',	{html : "<img src='"+val.STF_PT_RT+"' class='profileImg'/>"}))
										  .append($('<td>',	{text : val.STF_NM}))
										  .append($('<td>',	{text : val.RNK_NM}))
										  .append($('<td>',	{text : val.DPT_NM}))
										  .append($('<td>',	{text : val.ADMN_PW}))
										  .append($('<td>',	{text : val.STF_PH}))
										  .append($('<td>',	{text : val.STF_BS_PH}))
										  .append($('<td>',	{text : val.STF_EML})));
				});
				
				$("#pageIndexList").html(pageIndexListAjax);
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}

	// 사원번호 중복 검색
	function selectStf_sq(data) {
		var params = {
			stf_sq : data
		};

		$.ajax({
			url : "/admin/selectStf_Sq",
			type : "POST",
			dataType : "text",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				$("#stf_sq").val("");
				$("#stf_sq_up").val("");
			},
			success : function(data) {

				var result = Number(data);

				if (result > 0) {
					alert("이미 존재하는 사원번호 입니다.");
					$("#stf_sq_Div").attr("class", "has-error has-feedback");
					$("#stf_sq_Span").attr("class", "glyphicon glyphicon-remove form-control-feedback");
					$("#stf_sq_Div_up").attr("class", "has-error has-feedback");
					$("#stf_sq_Span_up").attr("class", "glyphicon glyphicon-remove form-control-feedback");
				} else if (result == 0) {
					$("#stf_sq").val($("#stf_sq1").val());
					$("#stf_sq_up").val($("#stf_sq1_up").val());
					
					$("#stf_sq_Div").attr("class", "has-success has-feedback");
					$("#stf_sq_Span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
					$("#stf_sq_Div_up").attr("class", "has-success has-feedback");
					$("#stf_sq_Span_up").attr("class", "glyphicon glyphicon-ok form-control-feedback");
				}
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}

	// 사원 등록 Ajax 파일 업로드
	function officerInsert() {

		var params = {
			stf_sq : $("#stf_sq").val(),
			admn_sq : $("#admn_sq").val(),
			dpt_sq : $("#dpt_sq").val(),
			rnk_sq : $("#rnk_sq").val(),
			stf_nm : $("#stf_nm").val(),
			stf_pw : $("#stf_pw").val(),
			stf_ph : $("#stf_ph").val(),
			stf_cm_add : $("#stf_cm_add").val(),
			stf_dt_add : $("#stf_dt_add").val(),
			stf_bs_ph : $("#stf_bs_ph").val(),
			stf_eml : $("#stf_eml").val(),
			stf_ent : $("#stf_ent").val(),
		};

		$("#officerInsertForm").ajaxForm({
			url : "/admin/officerInsert",
			type : "POST",
			dataType : "text",
			data : JSON.stringify(params),
			enctype : "multipart/form-data",
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				$("#officerInsert").attr("disabled", "disabled");
			},
			success : function(data) {
				if (data == "SUCCESS") {
					alert("정상적으로 입력되었습니다.");
					window.location = "/admin/officerList";
				} else if (data == "FAIL") {
					alert("입력을 실패하였습니다.");
				}
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		}).submit();

		$("#officerInsert").attr("disabled");
	}

	// 사원 정보 불러오기
	function selectUpdateOfficer() {
		var stf_sq = $("input[type=radio]:checked").val();

		var params = {
				stf_sq : stf_sq
			};
		
		$.ajax({
			url : "/admin/selectUpdateOfficer",
			type : "POST",
			dataType : "json",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				
			},
			success : function(data) {
				
				$("#imgView_up").attr("src", data.STF_PT_RT);
				$("#stf_nm_up").val(data.STF_NM);
				$("#stf_sq1_up").val(data.STF_SQ);
				$("#stf_sq_up").val(data.STF_SQ);
				$("#stf_sq_old").val(data.STF_SQ);
				$("#admn_sq_up").val(data.ADMN_SQ);
				$("#dpt_sq_up").val(data.DPT_SQ);
				$("#rnk_sq_up").val(data.RNK_SQ);
				$("#stf_cm_add_up").val(data.STF_CM_ADD);
				$("#stf_dt_add_up").val(data.STF_DT_ADD);
				$("#stf_eml_up").val(data.STF_EML);
				
				var arrPhoneNum = data.STF_PH.split("-");
				
				$("#phoneNum1_up").val(arrPhoneNum[0]);
				$("#phoneNum2_up").val(arrPhoneNum[1]);
				$("#phoneNum3_up").val(arrPhoneNum[2]);
				$("#stf_ph_up").val(data.STF_PH);
				
				var arrTelNum = data.STF_BS_PH.split("-");
				
				$("#telNum1_up").val(arrTelNum[0]);
				$("#telNum2_up").val(arrTelNum[1]);
				$("#telNum3_up").val(arrTelNum[2]);
				$("#stf_bs_ph_up").val(data.STF_BS_PH);
				
				$("#stf_ent_up").val(data.STF_ENT);
				
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}
	
	// 사원 등록 Ajax 파일 업로드
	function officerUpdate() {

		var params = {
			stf_sq : $("#stf_sq_up").val(),
			stf_sq_old : $("#stf_sq_old").val(),
			admn_sq : $("#admn_sq_up").val(),
			dpt_sq : $("#dpt_sq_up").val(),
			rnk_sq : $("#rnk_sq_up").val(),
			stf_nm : $("#stf_nm_up").val(),
			stf_pw : $("#stf_pw_up").val(),
			stf_ph : $("#stf_ph_up").val(),
			stf_cm_add : $("#stf_cm_add_up").val(),
			stf_dt_add : $("#stf_dt_add_up").val(),
			stf_bs_ph : $("#stf_bs_ph_up").val(),
			stf_eml : $("#stf_eml_up").val(),
			stf_ent : $("#stf_ent_up").val(),
		};

		$("#officerUpdateForm").ajaxForm({
			url : "/admin/officerUpdate",
			type : "POST",
			dataType : "text",
			data : JSON.stringify(params),
			enctype : "multipart/form-data",
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				$("#officerUpdate").attr("disabled", "disabled");
			},
			success : function(data) {
				if (data == "SUCCESS") {
					alert("정상적으로 수정되었습니다.");
					window.location = "/admin/officerList";
				} else if (data == "FAIL") {
					alert("입력을 실패하였습니다.");
				}
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		}).submit();

		$("#officerInsert").attr("disabled");
	}
	
	// 부서명 등록
	function deptInsert() {
		var params = {
				dpt_nm : $("#addDept").val()
			};

		$.ajax({
			url : "/admin/deptInsert",
			type : "POST",
			dataType : "text",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				$("#addDept").val("");
			},
			success : function(data) {
				if (data > 0) {
					alert("부서 추가를 성공하였습니다.");
					deptList();
				}
				else if (data == 0) {
					alert("부서 추가를 실패하였습니다.");
				}
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}
	
	// 부서명 다시 가져오기
	function deptList(dpt_sq, dpt_nm) {
		$.ajax({
			url : "/admin/selectDpt_Div_Tb",
			type : "POST",
			dataType : "json",
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				$("#dpt_sq_dept").empty();
			},
			success : function(data) {
				
				var div = $("#dpt_sq_dept");
				
				$.each(data, function(idx, val) {
					if (val.DPT_SQ != dpt_sq) {
						//div.append($('<div>', {class : "deptDiv", "data-value" : val.DPT_SQ, text : val.DPT_NM}))
						div.append($('<div>', {"class" : "has-feedback"})
						   .append($('<div>', {"class" : "deptDiv", "data-value" : val.DPT_SQ, text : val.DPT_NM}))
						   .append($('<span>', {"class" : "glyphicon glyphicon-remove form-control-feedback small-icon"})))
					}
					else if (val.DPT_SQ == dpt_sq) {
						div.append($('<input>', {type : "text", id : "deptNmUp", "data-value" : val.DPT_SQ, value : val.DPT_NM}))
						div.append($('<button>', {id : "deptUpdate", text : "수정"}))
					}
				});
				
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}
	
	// 동일한 부서명 체크
	function selectDeptNm() {
		var params = {
				dpt_nm : $("#deptNmUp").val()
			};

		$.ajax({
			url : "/admin/selectDeptNm",
			type : "POST",
			dataType : "text",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				
			},
			success : function(data) {
				if (data > 0) {
					alert("같은 이름의 부서명이 존재합니다.");
				}
				else if (data == 0) {
					deptUpdate();
				}
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}
	
	// 부서명 수정
	function deptUpdate() {
		var params = {
				dpt_sq : $("#deptNmUp").attr("data-value"),
				dpt_nm : $("#deptNmUp").val()
			};

		$.ajax({
			url : "/admin/deptUpdate",
			type : "POST",
			dataType : "text",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				
			},
			success : function(data) {
				if (data > 0) {
					alert("부서명 수정을 성공하였습니다.");
					deptList();
				}
				else if (data == 0) {
					alert("부서명 수정을 실패하였습니다.");
				}
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}
	
	// 부서명 삭제
	function deptDelete(data) {
		var params = {
				dpt_sq : data
			};
		
		$.ajax({
			url : "/admin/deptDelete",
			type : "POST",
			dataType : "text",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				
			},
			success : function(data) {
				
				if (data > 0) {
					alert("부서 삭제를 성공하였습니다.");
					deptList();
				}
				else if (data == 0) {
					alert("부서 삭제를 실패하였습니다.");
				}
				else if (data == -1) {
					alert("부서에 임직원이 존재하여 삭제할 수 없습니다.");
				}
				
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}
	
	/* 다음 주소 API */
	function addrSearch() {
		new daum.Postcode({
			oncomplete : function(data) {
				var str = "[" + data.zonecode + "] " + data.address
				$("#stf_cm_add").val(str);
				$("#stf_cm_add_up").val(str);
			}
		}).open();
	}
</script>


</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="index3.html" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" class="nav-link">Contact</a>
      </li>
    </ul>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- Navbar Search -->
      <li class="nav-item">
        <a class="nav-link" data-widget="navbar-search" href="#" role="button">
          <i class="fas fa-search"></i>
        </a>
        <div class="navbar-search-block">
          <form class="form-inline">
            <div class="input-group input-group-sm">
              <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
              <div class="input-group-append">
                <button class="btn btn-navbar" type="submit">
                  <i class="fas fa-search"></i>
                </button>
                <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                  <i class="fas fa-times"></i>
                </button>
              </div>
            </div>
          </form>
        </div>
      </li>

      <!-- Messages Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-comments"></i>
          <span class="badge badge-danger navbar-badge">3</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Brad Diesel
                  <span class="float-right text-sm text-danger"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">Call me whenever you can...</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  John Pierce
                  <span class="float-right text-sm text-muted"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">I got your message bro</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <!-- Message Start -->
            <div class="media">
              <img src="dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
              <div class="media-body">
                <h3 class="dropdown-item-title">
                  Nora Silvester
                  <span class="float-right text-sm text-warning"><i class="fas fa-star"></i></span>
                </h3>
                <p class="text-sm">The subject goes here</p>
                <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> 4 Hours Ago</p>
              </div>
            </div>
            <!-- Message End -->
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Messages</a>
        </div>
      </li>
      <!-- Notifications Dropdown Menu -->
      <li class="nav-item dropdown">
        <a class="nav-link" data-toggle="dropdown" href="#">
          <i class="far fa-bell"></i>
          <span class="badge badge-warning navbar-badge">15</span>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <span class="dropdown-header">15 Notifications</span>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-envelope mr-2"></i> 4 new messages
            <span class="float-right text-muted text-sm">3 mins</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-users mr-2"></i> 8 friend requests
            <span class="float-right text-muted text-sm">12 hours</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item">
            <i class="fas fa-file mr-2"></i> 3 new reports
            <span class="float-right text-muted text-sm">2 days</span>
          </a>
          <div class="dropdown-divider"></div>
          <a href="#" class="dropdown-item dropdown-footer">See All Notifications</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-widget="control-sidebar" data-slide="true" href="#" role="button">
          <i class="fas fa-th-large"></i>
        </a>
      </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">Alexander Pierce</a>
        </div>
      </div>

      <!-- SidebarSearch Form -->
      <div class="form-inline">
        <div class="input-group" data-widget="sidebar-search">
          <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
          <div class="input-group-append">
            <button class="btn btn-sidebar">
              <i class="fas fa-search fa-fw"></i>
            </button>
          </div>
        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
              with font-awesome or any other icon font library -->
          <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                Starter Pages
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Active Page</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>Inactive Page</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                Simple Link
                <span class="right badge badge-danger">New</span>
              </p>
            </a>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
<!-- Insert Modal -->
<div class="modal fade" id="insertModal" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">구성원 추가</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">

        <table class="tableMiddle table table-striped table-bordered ">
          <colgroup>
            <col width="30%" />
            <col width="70%" />
          </colgroup>
          <thead>
          </thead>
          <form id="officerInsertForm" action="/admin/officerInsert"
            method="post" enctype="multipart/form-data">
            <tbody>
              <tr>
                <th class="text-center"><img id="imgView" class="profileImg"
                  src="/resources/img/user.png"> <input type="file"
                  id="file" name="file" class="form-control"></th>
                <td>
                  <h5>이미지는 가로 96px, 세로 128px를 준수 해주시기 바랍니다.</h5>
                  <h5>(*)이 작성된 칸은 필수항목 입니다.</h5>
                </td>
              </tr>
              
              <tr>
                <th>이름(*)</th>
                <td><input type="text" id="stf_nm" name="stf_nm"
                  class="form-control" placeholder="이름"></td>
              </tr>
              
              <tr>
                <th>비밀번호(*)</th>
                <td>
                  <div id="stf_pw1_Div">
                    <input type="password" id="stf_pw1" class="form-control"
                      placeholder="비밀번호"> <span id="stf_pw1_Span"></span>
                  </div>
                </td>
              </tr>
              
              <tr>
                <th>사원번호(*)</th>
                <td>
                  <div class="col-sm-9 col-md-10 leftNoPadding">
                    <div id="stf_sq_Div">
                      <input type="text" id="stf_sq1" class="form-control"
                        placeholder="사원번호"> <span id="stf_sq_Span"></span>
                    </div>
                  </div>
                  <button type="button" id="stfNumSearchBtn"
                    class="btn btn-default col-sm-3 col-md-2">중복확인</button> <input
                  type="hidden" id="stf_sq" name="stf_sq" class="form-control">
                </td>
              </tr>
              
              <tr>
                <th>부서(*)</th>
                <td><select id="dpt_sq" name="dpt_sq"
                  class="form-control">
                    <c:forEach items="${selectDpt_Div_Tb}" var="map">
                      <option value="${map.DPT_SQ}">${map.DPT_NM}</option>
                    </c:forEach>
                </select></td>
              </tr>
              <tr>
                <th>직급(*)</th>
                <td><select id="rnk_sq" name="rnk_sq"
                  class="form-control">
                    <c:forEach items="${selectRnk_Tb}" var="map">
                      <option value="${map.RNK_SQ}">${map.RNK_NM}</option>
                    </c:forEach>
                </select></td>
              </tr>
              <tr>
                <th>주소(*)</th>
                <td>

                  <div class="col-sm-9 col-md-10 leftNoPadding">
                    <input type="text" id="stf_cm_add" name="stf_cm_add"
                      class="form-control" placeholder="주소" readonly="readonly">
                  </div>
                  <button type="button"
                    class="btn btn-default col-sm-3 col-md-2"
                    onclick="addrSearch();">주소검색</button>
                </td>
              </tr>
              <tr>
                <th>상세주소(*)</th>
                <td><input type="text" id="stf_dt_add" name="stf_dt_add"
                  class="form-control" placeholder="상세주소"></td>
              </tr>
              <tr>
                <th>이메일(*)</th>
                <td><input type="email" id="stf_eml" name="stf_eml"
                  class="form-control" placeholder="이메일"></td>
              </tr>

              <tr>
                <th>휴대폰(*)</th>
                <td>

                  <div class="col-sm-2 col-md-2 leftNoPadding rightNoPadding">
                    <select id="phoneNum1" class="form-control">
                      <option value="010">010</option>
                      <option value="011">011</option>
                      <option value="016">016</option>
                      <option value="017">017</option>
                      <option value="018">018</option>
                      <option value="019">019</option>
                    </select>
                  </div>
                  <div
                    class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
                    <h5>-</h5>
                  </div>
                  <div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
                    <input type="text" id="phoneNum2" class="form-control telNumMax" />
                  </div>
                  <div
                    class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
                    <h5>-</h5>
                  </div>
                  <div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
                    <input type="text" id="phoneNum3" class="form-control telNumMax" />
                  </div> <input type="hidden" id="stf_ph" name="stf_ph"
                  class="form-control">
                </td>
              </tr>
              <tr>
                <th>내선번호</th>
                <td>
                  <div class="col-sm-2 col-md-2 leftNoPadding rightNoPadding">
                    <input type="text" id="telNum1" class="form-control"
                      value="070" readonly="readonly" />
                  </div>
                  <div
                    class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
                    <h5>-</h5>
                  </div>
                  <div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
                    <input type="text" id="telNum2" class="form-control telNumMax" />
                  </div>
                  <div
                    class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
                    <h5>-</h5>
                  </div>
                  <div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
                    <input type="text" id="telNum3" class="form-control telNumMax" />
                  </div> <input type="hidden" id="stf_bs_ph" name="stf_bs_ph"
                  class="form-control">
                </td>
              </tr>
              <tr>
                <th>입사일(*)</th>
                <td><input type="date" id="stf_ent" name="stf_ent"
                  class="form-control" placeholder="입사일"></td>
              </tr>
            </tbody>
          </form>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" id="officerInsert" class="btn btn-success">등록</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
      </div>
    </div>
  </div>
</div>

<!-- Update Modal -->
<div class="modal fade" id="updateModal" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">구성원 수정</h4>
        <button type="button" class="close" data-dismiss="modal">&times;</button>
      </div>
      <div class="modal-body">

        <table class="tableMiddle table table-striped table-bordered">
          <colgroup>
            <col width="30%" />
            <col width="70%" />
          </colgroup>
          <thead>
          </thead>
          <form id="officerUpdateForm" action="/admin/officerUpdate"
            method="post" enctype="multipart/form-data">
            <tbody>
              <tr>
                <th class="text-center"><img id="imgView_up" class="profileImg"
                  src="/resources/img/user.png"> <input type="file"
                  id="file_up" name="file" class="form-control"></th>
                <td>
                  <h5>이미지는 가로 96px, 세로 128px를 준수 해주시기 바랍니다.</h5>
                  <h5>(*)이 작성된 칸은 필수항목 입니다.</h5>
                  <h5><strong>프로필 사진</strong>, <strong>비밀번호</strong>, <strong>사원번호</strong>는
                  공백일 경우 기존 데이터로 유지됩니다.</h5>
                </td>
              </tr>
               <tr>
                <th>이름(*)</th>
                <td><input type="text" id="stf_nm" name="stf_nm"
                  class="form-control" placeholder="이름"></td>
              </tr>
              
              <tr>
                <th>비밀번호(*)</th>
                <td>
                  <div id="stf_pw1_Div">
                    <input type="password" id="stf_pw1" class="form-control"
                      placeholder="비밀번호"> <span id="stf_pw1_Span"></span>
                  </div>
                </td>
              </tr>
              
              <tr>
                <th>사원번호(*)</th>
                <td>
                  <div class="col-sm-9 col-md-10 leftNoPadding">
                    <div id="stf_sq_Div">
                      <input type="text" id="stf_sq1" class="form-control"
                        placeholder="사원번호"> <span id="stf_sq_Span"></span>
                    </div>
                  </div>
                  <button type="button" id="stfNumSearchBtn"
                    class="btn btn-default col-sm-3 col-md-2">중복확인</button> <input
                  type="hidden" id="stf_sq" name="stf_sq" class="form-control">
                </td>
              </tr>
              
              <tr>
                <th>부서(*)</th>
                <td><select id="dpt_sq" name="dpt_sq"
                  class="form-control">
                    <c:forEach items="${selectDpt_Div_Tb}" var="map">
                      <option value="${map.DPT_SQ}">${map.DPT_NM}</option>
                    </c:forEach>
                </select></td>
              </tr>
              <tr>
                <th>직급(*)</th>
                <td><select id="rnk_sq" name="rnk_sq"
                  class="form-control">
                    <c:forEach items="${selectRnk_Tb}" var="map">
                      <option value="${map.RNK_SQ}">${map.RNK_NM}</option>
                    </c:forEach>
                </select></td>
              </tr>
              <tr>
                <th>주소(*)</th>
                <td>

                  <div class="col-sm-9 col-md-10 leftNoPadding">
                    <input type="text" id="stf_cm_add" name="stf_cm_add"
                      class="form-control" placeholder="주소" readonly="readonly">
                  </div>
                  <button type="button"
                    class="btn btn-default col-sm-3 col-md-2"
                    onclick="addrSearch();">주소검색</button>
                </td>
              </tr>
              <tr>
                <th>상세주소(*)</th>
                <td><input type="text" id="stf_dt_add" name="stf_dt_add"
                  class="form-control" placeholder="상세주소"></td>
              </tr>
              <tr>
                <th>이메일(*)</th>
                <td><input type="email" id="stf_eml" name="stf_eml"
                  class="form-control" placeholder="이메일"></td>
              </tr>

              <tr>
                <th>휴대폰(*)</th>
                <td>

                  <div class="col-sm-2 col-md-2 leftNoPadding rightNoPadding">
                    <select id="phoneNum1" class="form-control">
                      <option value="010">010</option>
                      <option value="011">011</option>
                      <option value="016">016</option>
                      <option value="017">017</option>
                      <option value="018">018</option>
                      <option value="019">019</option>
                    </select>
                  </div>
                  <div
                    class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
                    <h5>-</h5>
                  </div>
                  <div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
                    <input type="text" id="phoneNum2" class="form-control telNumMax" />
                  </div>
                  <div
                    class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
                    <h5>-</h5>
                  </div>
                  <div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
                    <input type="text" id="phoneNum3" class="form-control telNumMax" />
                  </div> <input type="hidden" id="stf_ph" name="stf_ph"
                  class="form-control">
                </td>
              </tr>
              <tr>
                <th>내선번호</th>
                <td>
                  <div class="col-sm-2 col-md-2 leftNoPadding rightNoPadding">
                    <input type="text" id="telNum1" class="form-control"
                      value="070" readonly="readonly" />
                  </div>
                  <div
                    class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
                    <h5>-</h5>
                  </div>
                  <div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
                    <input type="text" id="telNum2" class="form-control telNumMax" />
                  </div>
                  <div
                    class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
                    <h5>-</h5>
                  </div>
                  <div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
                    <input type="text" id="telNum3" class="form-control telNumMax" />
                  </div> <input type="hidden" id="stf_bs_ph" name="stf_bs_ph"
                  class="form-control">
                </td>
              </tr>
              <tr>
                <th>입사일(*)</th>
                <td><input type="date" id="stf_ent" name="stf_ent"
                  class="form-control" placeholder="입사일"></td>
              </tr>
            </tbody>
          </form>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" id="officerUpdate" class="btn btn-success">수정</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">취소</button>
      </div>
    </div>
  </div>
</div>
</div>
<br>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">

          <h1><b>인사정보</b></h1>
          <br><br>
          <hr>

          <div class="col-sm-6">

          </div><!-- /.col -->
          <div class="col-sm-6">

          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">


        <div class="month left">
          <select name="emp" class="mon">
            <option value="emp1" label="성명" selected></option>
            <option value="emp2" label="사번"></option>
            <option value="emp3" label="직급"></option>
            <option value="emp4" label="부서"></option>
          </select>
        <input type="text" class="mon">
        <a href="#" class="btn btn-primary">조회</a>
        <input type="checkbox"> 퇴직자 포함
        
        <button type="button" id="officerInsertModal"
                  class="btn btn-success" data-toggle="modal" data-backdrop="static"
                  data-target="#insertModal">구성원 추가</button>
                <button type="button" id="officerUpdateModal" class="btn btn-warning"  
                  data-backdrop="static" data-toggle="modal">구성원 수정</button>
                  
        <div class="right">
                    <a href="#" class="btn btn-primary">새 인사정보 등록하기</a>
                  </div>
         

          <hr>
          <h3>기본정보</h3>
          <hr>
        </div>


        <div class="row div1 center">
          <!-- <div class="col-lg-6"> -->

            <table border="1" class="table table-bordered table-hover tb_insa1">
                      <thead>
                        <tr>
                          <th>선택</th>
                          <th>사원번호</th>
                          <th>사진</th>
                          <th>성명</th>
                          <th>직급</th>
                          <th>부서</th>
                          <th>입사일자</th>
                          <th>핸드폰</th>
                          <th>회사이메일</th>
                          <th>내선번호</th>
        
                        </tr>	
                      </thead>
                      <tbody>
                          <tr>
                            <td><input type="radio" class="radio"
                              value="${map.STF_SQ}"></td>
                            <td>101</td>
                            <td><img src="${map.STF_PT_RT}" class="profileImg"/></td>
                            <td>유재석</td>
                            <td>부장</td>
                            <td>마케팅</td>
                            <td>91년 05월 05일</td>
                            <td>010-1972-0814</td>
                            <td>youbujang@muhan.com</td>
                            <td>0814</td>
                          </tr>

                          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                          </tr>

                          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                          </tr>

                          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                          </tr>

                          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                          </tr>

                          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                          </tr>

                          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                          </tr>

                          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                          </tr>

                          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                          </tr>

                          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                          </tr>

                          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                          </tr>

                          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                          </tr>

                          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                          </tr>

                          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                          </tr>


                      </tbody>
                    </table>



  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <!-- <div class="p-3">
      <h5>Title</h5>
      <p>Sidebar content</p>
    </div> -->
  </aside>
  <!-- /.control-sidebar -->

  <!-- Main Footer -->
  <!-- <footer class="main-footer"> -->
    <!-- To the right -->
    <!-- <div class="float-right d-none d-sm-inline">
      Anything you want
    </div> -->
    <!-- Default to the left -->
    <!-- <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>
</div> -->
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="${path}/resources/css/insa/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${path}/resources/css/insa/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${path}/resources/css/insa/dist/js/adminlte.min.js"></script>
</body>
</html>

