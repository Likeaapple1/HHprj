<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

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
      max-height: 1000px;
      scroll-behavior: auto;
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

/*     .tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0lax{text-align:left;vertical-align:top} */
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>??????????????????</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="${path}/resources/css/insa/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${path}/resources/css/insa/dist/css/adminlte.min.css">

  <!-- ??????????????? -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<!-- ?????? ?????? API -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script type="text/javascript">
	
	$(document).ready(function() {

		
		/* ?????? ?????? */
		$("#search").on("click", function() {
			if ($("#keyword").val() == "") {
				alert("???????????? ?????? 1?????? ?????? ??????????????????.");
				return;
			} else if ($("#keyword").val() != "")
				var params = {
					cate : $("#cate").val(),
					keyword : $("#keyword").val()
				};
			
				officerListSearch(params);
		});
		
		// Ajax ????????? ??????
		$(document).on("click", "#pageIndexListAjax > li > a", function() {
			var params = {
					cate : $("#cate").val(),
					keyword : $("#keyword").val(),
					page : $(this).attr("data-page")
				};
			
			officerListSearch(params);
		});
		
		/* ????????? ?????? ?????? */
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

		/* ?????? ?????? ?????? */
		$("#emp_email, #emp_no1").on("keyup", function() {
			$(this).val($(this).val().replace(/[???-???|???-???|???-???]/g, ""));
		});
				
		// Update ????????? ??????
		$(".telNumMax").on("keyup", function() {
			$(this).val($(this).val().replace(/[^0-9]/gi, ""));
		
			// ???????????? ?????? ?????? ??????
			if ($(this).val().length > 4) {
				$(this).val($(this).val().substring(0, 4));
			}
			
			if ($(this).attr("id") == "phoneNum2" || $(this).attr("id") == "phoneNum3") {
				var phoneNum = $("#phoneNum1").val() + "-" + $("#phoneNum2").val() + "-" + $("#phoneNum3").val();
				$("#emp_phone").val(phoneNum);
			}
			else if ($(this).attr("id") == "telNum2" || $(this).attr("id") == "telNum3") {
				var telNum = $("#telNum1").val() + "-" + $("#telNum2").val() + "-" + $("#telNum3").val();
				$("#emp_office_phone").val(telNum);
			}			
			else if ($(this).attr("id") == "phoneNum2_up" || $(this).attr("id") == "phoneNum3_up") {
				var phoneNum = $("#phoneNum1_up").val() + "-" + $("#phoneNum2_up").val() + "-" + $("#phoneNum3_up").val();
				$("#emp_phone_up").val(phoneNum);
			}
			else if ($(this).attr("id") == "telNum2_up" || $(this).attr("id") == "telNum3_up") {
				var telNum = $("#telNum1_up").val() + "-" + $("#telNum2_up").val() + "-" + $("#telNum3_up").val();
				$("#emp_office_phone_up").val(telNum);
			}
		});

		// insert ???????????? ?????? ??????1
		$("#emp_password1").on("keyup", function() {
			if ($("#emp_password1").val() == "" && $("#emp_password2").val() == "") {
				$("#emp_password1_Div").removeAttr("class");
				$("#emp_password1_Span").removeAttr("class");
			} else if ($("#emp_password1").val() == $("#emp_password2").val()) {
				$("#emp_password").val($("#emp_password1").val());
				$("#emp_password1_Div").attr("class",	"has-success has-feedback");
				$("#emp_password1_Span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
			} else if ($("#emp_password1").val() != $("#emp_password2").val()) {
				$("#emp_password").val("");
				$("#emp_password1_Div").attr("class",	"has-error has-feedback");
				$("#emp_password1_Span").attr("class", "glyphicon glyphicon-remove form-control-feedback");
			}
		});

		// insert ???????????? ?????? ??????2
		/* $("#stf_pw2").on("keyup", function() {
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
		}); */
		
		// update ???????????? ?????? ??????1
		$("#emp_password1_up").on("keyup", function() {
			if ($("#emp_password1_up").val() == "" && $("#emp_password2_up").val() == "") {
				$("#emp_password1_Div_up").removeAttr("class");
				$("#emp_password1_Span_up").removeAttr("class");
			} else if ($("#emp_password1_up").val() == $("#emp_password2_up").val()) {
				$("#emp_password_up").val($("#emp_password1_up").val());
				$("#emp_password1_Div_up").attr("class",	"has-success has-feedback");
				$("#emp_password1_Span_up").attr("class", "glyphicon glyphicon-ok form-control-feedback");
			} else if ($("#emp_password1_up").val() != $("#emp_password2_up").val()) {
				$("#emp_password_up").val("");
				$("#emp_password1_Div_up").attr("class",	"has-error has-feedback");
				$("#emp_password1_Span_up").attr("class", "glyphicon glyphicon-remove form-control-feedback");
			}
		});

		// update ???????????? ?????? ??????2
		/* $("#stf_pw2_up").on("keyup", function() {
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
		}); */
		
		// insert ???????????? ?????? ??????
		$("#empNumSearchBtn").on("click", function() {
			if ($("#emp_no1").val() == "") {
				alert("??????????????? ??????????????????.");
			} else if ($("#emp_no1").val() != "") {
				selectEmp_no($("#emp_no1").val());
			}
		});

		// insert ???????????? ?????? ??????
		$("#emp_no1").on("keyup", function() {
			if ($("#emp_no1").val() != $("#emp_no").val()) {
				$("#emp_no_Div").removeAttr("class");
				$("#emp_no_Span").removeAttr("class");
				$("#emp_no").val("");
			}
		});

		// update ???????????? ?????? ??????
		$("#empNumSearchBtn_up").on("click", function() {
			if ($("#emp_no1_up").val() == "") {
				alert("??????????????? ??????????????????.");
			} else if ($("#emp_no1_up").val() != "") {
				selectEmp_no($("#emp_no1_up").val());
			}
		});

		// update ???????????? ?????? ??????
		$("#emp_no1_up").on("keyup", function() {
			if ($("#emp_no1_up").val() != $("#emp_no").val()) {
				$("#emp_no_Div_up").removeAttr("class");
				$("#emp_no_Span_up").removeAttr("class");
				$("#emp_no_up").val("");
			}
		});
		
		// ?????? ?????? ??????
		$("#emp_no1, #emp_no1_up").on("keyup", function() {
			if ($(this).val().length > 10) {
				$(this).val($(this).val().substring(0, 10));
			}
		});


		// ?????? ?????? ??????
		$("#emp_dt_add").on("keyup", function() {
			if ($(this).val().length > 33) {
				$(this).val($(this).val().substring(0, 33));
			}
		});

		/* ????????? ?????? */
		$("#officerInsert").on("click",	function() {
	
			let email = document.join_form.empEmail.value;
			var emailCheck = /^[\w]+@[\w]+.[a-zA-Z.]{2,6}$/;

			if ($("#file").val() == "") {
				alert("????????? ????????? ??????????????????.");
				return;
			} else if ($("#emp_name").val() == "") {
				alert("????????? ??????????????????.");
				return;
			} else if ($("#emp_password").val() == "") {
				alert("??????????????? ??????????????????.");
				return;
			} else if ($("#emp_no").val() == "") {
				alert("??????????????? ??????????????????.");
				return;
			} else if ($("#emp_add").val() == ""
					|| $("#emp_dt_add").val() == "") {
				alert("????????? ??????????????????.");
				return;
			} else if (!(emailCheck.test(email))) {
				alert("???????????? ??????????????????.");
				return;
			} else if ($("#emp_phone").val().length != 13) {
				alert("????????? ????????? ??????????????????.");
				return;
			} else if ($("#emp_office_phone").val().length != 13) {
				alert("??????????????? ??????????????????.");
				return;
			}
			else if ($("#emp_enrolldate").val() == "") {
				alert("???????????? ??????????????????.");
				return;
			}

			officerInsert();
		});
		
		/* ????????? ?????? */
		$("#officerUpdate").on("click",	function() {
	
			var emailCheck = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

			if ($("#emp_name_up").val() == "") {
				alert("????????? ??????????????????.");
				return;
			} else if ($("#emp_password_up").val() != $("#stf_pw2_up").val()) {
				alert("??????????????? ??????????????????.");
				return;
			} else if ($("#emp_add_up").val() == ""
					|| $("#emp_dt_add_up").val() == "") {
				alert("????????? ??????????????????.");
				return;
			} else if (!emailCheck.test($(
					"#emp_email_up").val())) {
				alert("???????????? ??????????????????.");
				return;
			} else if ($("#emp_phone_up").val().length != 13) {
				alert("????????? ????????? ??????????????????.");
				return;
			} else if ($("#emp_office_phone_up").val().length != 13) {
				alert("??????????????? ??????????????????.");
				return;
			} else if ($("#emp_enrolldate_up").val() == "") {
				alert("???????????? ??????????????????.");
				return;
			}

			officerUpdate();
		});
		
		/* ??????(?????????) ???????????? */
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
		
		// ????????? ?????? ?????? ?????????
		$("#officerUpdateModal").on("click", function() {
			
			if ($(".radio").is(":checked") == false) {
				alert("????????? ??????????????????.");
				return;
			}
			
			$("#officerUpdateModal").attr("data-target", "#updateModal");
			
			selectUpdateOfficer();
		});
		
		// ????????? ??????
		$("#deptInsert").on("click", function() {
			deptInsert();
		});

		// ?????? ?????? input?????? ??????
		$(document).on("dblclick", ".deptDiv", function() {
			var dept_code = $(this).attr("data-value");
			var dept_name = $(this).text();
			
			deptList(dept_code, dept_name);
		});
			 	 
		// ????????? ?????? ??????
		$(document).on("click", "#deptUpdate", function() {
			selectDeptName();
		});
		
		// ?????? ?????? ??????
		$(document).on("keyup", "#addDept, #deptNameUp", function() {
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
		
		// ????????? ??????
		$(document).on("click", ".small-icon", function() {
			var dept_code = $(this).parent().children("div").attr("data-value");
			deptDelete(dept_code);
		});
		
		// ????????? ?????? ??? ?????? ???????????????
		$("#deptClose").on("click", function() {
			window.location = "/admin/officerList";
		});
		
	});

	/* ?????? ?????? */
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
					tbody.append($('<tr>').append($('<td>',	{html : "<input type='radio' class='radio' value='"+val.EMP_NO+"'>"}))
										  .append($('<td>',	{html : "<img src='"+val.EMP_PHOTO_ROUTE+"' class='profileImg'/>"}))
										  .append($('<td>',	{text : val.EMP_NAME}))
										  .append($('<td>',	{text : val.JOB_NAME}))
										  .append($('<td>',	{text : val.DEPT_NAME}))
										  .append($('<td>',	{text : val.EMP_PHONE}))
										  .append($('<td>',	{text : val.EMP_OFFICE_PHONE}))
										  .append($('<td>',	{text : val.EMP_EMAIL})));
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

	// ???????????? ?????? ??????
	function selectEmp_no(data) {
		var params = {
			emp_no : data
		};

		$.ajax({
			url : "/admin/selectEmp_No",
			type : "POST",
			dataType : "text",
			data : JSON.stringify(params),
			contentType : "application/json; charset=UTF-8",
			beforeSend : function() {
				$("#emp_no").val("");
				$("#emp_no_up").val("");
			},
			success : function(data) {

				var result = Number(data);

				if (result > 0) {
					alert("?????? ???????????? ???????????? ?????????.");
					$("#emp_no_Div").attr("class", "has-error has-feedback");
					$("#emp_no_Span").attr("class", "glyphicon glyphicon-remove form-control-feedback");
					$("#emp_no_Div_up").attr("class", "has-error has-feedback");
					$("#emp_no_Span_up").attr("class", "glyphicon glyphicon-remove form-control-feedback");
				} else if (result == 0) {
					$("#emp_no").val($("#emp_no1").val());
					$("#emp_no_up").val($("#emp_no1_up").val());
					
					$("#emp_no_Div").attr("class", "has-success has-feedback");
					$("#emp_no_Span").attr("class", "glyphicon glyphicon-ok form-control-feedback");
					$("#emp_no_Div_up").attr("class", "has-success has-feedback");
					$("#emp_no_Span_up").attr("class", "glyphicon glyphicon-ok form-control-feedback");
				}
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}

	// ?????? ?????? Ajax ?????? ?????????
	function officerInsert() {

		var params = {
			emp_no : $("#emp_no").val(),
			dept_code : $("#dept_code").val(),
			job_code : $("#job_code").val(),
			emp_name : $("#emp_name").val(),
			emp_password : $("#emp_password").val(),
			emp_phone : $("#emp_phone").val(),
			emp_add : $("#emp_add").val(),
			emp_dt_add : $("#emp_dt_add").val(),
			emp_office_phone : $("#emp_office_phone").val(),
			emp_email : $("#emp_email").val(),
			emp_enrolldate : $("#emp_enrolldate").val(),
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
					alert("??????????????? ?????????????????????.");
					window.location = "/admin/officerList";
				} else if (data == "FAIL") {
					alert("????????? ?????????????????????.");
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

	// ?????? ?????? ????????????
	function selectUpdateOfficer() {
		var emp_no = $("input[type=radio]:checked").val();

		var params = {
				emp_no : emp_no
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
				
				$("#emp_phote_route_up").attr("src", data.EMP_PHOTO_ROUTE);
				$("#emp_name_up").val(data.EMP_NAME);
				$("#emp_no1_up").val(data.EMP_NO);
				$("#emp_no_up").val(data.EMP_NO);
				$("#emp_no_old").val(data.EMP_NO);
				$("#dept_code_up").val(data.DEPT_CODE);
				$("#job_code_up").val(data.JOB_CODE);
				$("#emp_add_up").val(data.EMP_ADD);
				$("#emp_dt_add_up").val(data.EMP_DT_ADD);
				$("#emp_email_up").val(data.EMP_EMAIL);
				
				var arrPhoneNum = data.EMP_PHONE.split("-");
				
				$("#phoneNum1_up").val(arrPhoneNum[0]);
				$("#phoneNum2_up").val(arrPhoneNum[1]);
				$("#phoneNum3_up").val(arrPhoneNum[2]);
				$("#emp_phone_up").val(data.EMP_PHONE);
				
				var arrTelNum = data.EMP_OFFICE_PHONE.split("-");
				
				$("#telNum1_up").val(arrTelNum[0]);
				$("#telNum2_up").val(arrTelNum[1]);
				$("#telNum3_up").val(arrTelNum[2]);
				$("#emp_office_phone_up").val(data.EMP_OFFICE_PHONE);
				
				$("#emp_enrolldate").val(data.EMP_ENROLLDATE);
				
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}
	
	// ?????? ?????? Ajax ?????? ?????????
	function officerUpdate() {

		var params = {
			emp_no : $("#emp_no_up").val(),
			emp_no_old : $("#emp_no_old").val(),
			dept_code : $("#dept_code_up").val(),
			job_code : $("#job_code_up").val(),
			emp_name : $("#emp_name_up").val(),
			emp_password : $("#emp_password_up").val(),
			emp_phone : $("#emp_phone_up").val(),
			emp_add : $("#emp_add_up").val(),
			emp_dt_add : $("#emp_dt_add_up").val(),
			emp_office_phone : $("#emp_office_phone_up").val(),
			emp_email : $("#emp_email_up").val(),
			emp_enrolldate : $("#emp_enrolldate_up").val(),
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
					alert("??????????????? ?????????????????????.");
					window.location = "/admin/officerList";
				} else if (data == "FAIL") {
					alert("????????? ?????????????????????.");
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
	
	/* // ????????? ??????
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
					alert("?????? ????????? ?????????????????????.");
					deptList();
				}
				else if (data == 0) {
					alert("?????? ????????? ?????????????????????.");
				}
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}
	
	// ????????? ?????? ????????????
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
						div.append($('<button>', {id : "deptUpdate", text : "??????"}))
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
	
	// ????????? ????????? ??????
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
					alert("?????? ????????? ???????????? ???????????????.");
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
	
	// ????????? ??????
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
					alert("????????? ????????? ?????????????????????.");
					deptList();
				}
				else if (data == 0) {
					alert("????????? ????????? ?????????????????????.");
				}
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	}
	
	// ????????? ??????
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
					alert("?????? ????????? ?????????????????????.");
					deptList();
				}
				else if (data == 0) {
					alert("?????? ????????? ?????????????????????.");
				}
				else if (data == -1) {
					alert("????????? ???????????? ???????????? ????????? ??? ????????????.");
				}
				
			},
			error : function(request, status, error) {
				alert("list search fail :: error code: "
						+ request.status + "\n" + "error message: "
						+ error + "\n");
			}
		});
	} */
	
	/* ?????? ?????? API */
	function addrSearch() {
		new daum.Postcode({
			oncomplete : function(data) {
				var str = "[" + data.zonecode + "] " + data.address
				$("#empAdd").val(str);
				$("#empAdd_up").val(str);
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
      <img src="${path}/resources/img/svg/HiHellofavicon.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Hi Hello</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="/hh/resources/static/upload/${loginUser.empNo}_profile.png" class="img-circle elevation-2" alt="User Image">
        </div>
        <div class="info">
          <a href="#" class="d-block">${loginUser.empName}</a>
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

          <li class="nav-header">EXAMPLES</li>
          <li class="nav-item">
            <a href="pages/calendar.html" class="nav-link">
              <i class="nav-icon fas fa-book"></i>
              <p>
                ?????? ??????
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="pages/gallery.html" class="nav-link">
              <i class="nav-icon far fa-calendar-alt"></i>
              <p>
                ?????????
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="pages/kanban.html" class="nav-link">
              <i class="nav-icon fas fa-columns"></i>
              <p>
                ??????
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <p>
                ??????
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${path}/attendance/home" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>????????????</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/attendance/attstatus" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>????????? ??????</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/attendance/admin/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>?????? ????????? ??????</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/attendance/admin/setatt" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>????????? ?????? ??????</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <p>
                ??????
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/examples/invoice.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>????????????</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/profile.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>??????????????????</p>
                </a>
              </li>>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <p>
                ?????? ??????
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${path}/appr/home" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    ?????? ??????
                    <i class="fas fa-angle-left right"></i>
                  </p>
                </a>
              </li>
              </ul>
			<li class="nav-item"> <!-- ?????? -->
            <a href="#" class="nav-link">
              <p>
                ??????
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="<%=request.getContextPath()%>/salary/payroll" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    ??????????????????
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/salary/payslip" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    ???????????????
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="<%=request.getContextPath()%>/salary/setting" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>????????????</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/salary/input" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>???????????????</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/salary/email" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    ??????????????? ????????? ??????
                  </p>
                </a>
              </li>
            </ul>
          </li> 
          <li class="nav-item">
                     <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              <p>
                ?????? ??????
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${path}/resign/resignhistory" class="nav-link">
                 <!-- <a href="#" class="nav-link active"></a>-->
                  <i class="far fa-circle nav-icon"></i>
                  <p>????????? ??????</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/resign/resigninput" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>???????????? ??????</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/resign/resignreceipt"" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>????????????????????????</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/resign/totalresign" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>????????? ???????????????</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <p>
                ????????????
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${path}/insa/home" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    ??????????????????
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/insa/organization??? " class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    ?????? ?????????
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/insa/certificate???" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>????????? ??????</p>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>
  
  
  <!-- ???????????? ?????? ????????? ?????? ??????  -->
  
  <!-- ?????? ?????? ??????  -->
<!-- Insert Modal -->
<div class="modal fade" id="insertModal" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">????????? ??????</h4>
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
          
          <form id="officerInsertForm" action="" name="join_form"
            method="post" enctype="multipart/form-data">
            <tbody>
              <tr>
                <th class="text-center"><img id="imgView" class="profileImg"
                  src="/resources/img/user.png"> <input type="file"
                  id="file" name="profileFile" class="form-control"></th>
                <td>
                  <h5>???????????? ?????? 96px, ?????? 128px??? ?????? ???????????? ????????????.</h5>
                  <h5>(*)??? ????????? ?????? ???????????? ?????????.</h5>
                </td>
              </tr>
              
              <tr>
                <th>??????(*)</th>
                <td><input type="text" name="empName"
                  class="form-control" placeholder="??????"></td>
              </tr>
              
              <tr>
                <th>????????????(*)</th>
                <td>
                  <div id="stf_pw1_Div">
                    <input type="password" name="empPassword" class="form-control"
                      placeholder="????????????"> 
                  </div>
                </td>
              </tr>
              
              <tr>
                <th>????????????(*)</th>
                <td>
                  <div class="col-sm-9 col-md-10 leftNoPadding">
                    <div id="stf_sq_Div">
                      <input type="text" name="empNo" class="form-control"
                        placeholder="????????????"> 
                    </div>
                  </div>
                  <button type="button" id="stfNumSearchBtn"
                    class="btn btn-default col-sm-3 col-md-2">????????????</button> <input
                  type="hidden" name="" class="form-control">
                </td>
              </tr>

			 <tr>
                <th>????????????(*)</th>
                <td><input type="text" id="empBirth" name="empBirth"
                  class="form-control" placeholder="YYYYMMDD"></td>
              </tr>
              
              
              
              <tr>
                <th>??????(*)</th>
                <td><select id="deptName" name="deptName"
                  class="form-control">
                    <option value="?????????">?????????</option>
                    <option value="?????????">?????????</option>
                    <option value="?????????">?????????</option>
                    <option value="?????????">?????????</option>
                    <option value="?????????">?????????</option>
                </select></td>
              </tr>
              
              <tr>
                <th>??????(*)</th>
                <td><select id="jobName" name="jobName"
                  class="form-control">
                  <option value="??????">??????</option>
                  <option value="??????">??????</option>
                  <option value="??????">??????</option>
                  <option value="??????">??????</option>
                  <option value="??????">??????</option>
                  <option value="??????">??????</option>
                  
                    
                </select></td>
              </tr>
              
              <tr>
                <th>??????(*)</th>
                <td>
                  <div class="col-sm-9 col-md-10 leftNoPadding">
                    <input type="text" id="empAdd" name="empAdd"
                      class="form-control" placeholder="??????" readonly="readonly">
                  </div>
                  <button type="button"
                    class="btn btn-default col-sm-3 col-md-2"
                    onclick="addrSearch();">????????????</button>
                </td>
              </tr>
              
              <tr>
                <th>????????????(*)</th>
                <td><input type="text" id="empDtAdd" name="empDtAdd"
                  class="form-control" placeholder="????????????"></td>
              </tr>
              
              <tr>
                <th>?????????(*)</th>
                <td><input type="email" id="empEmail" name="empEmail"
                  class="form-control" placeholder="?????????"></td>
              </tr>

              <tr>
                <th>?????????(*)</th>
                <td>
                  <div class="col-sm-2 col-md-2 leftNoPadding rightNoPadding">
                    <select id="phoneNum1" class="form-control" name="empPhone1">
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
                    <input type="text" id="phoneNum2" name="empPhone2" class="form-control telNumMax" />
                  </div>
                  <div
                    class="col-sm-1 col-md-1 text-center leftNoPadding rightNoPadding">
                    <h5>-</h5>
                  </div>
                  <div class="col-sm-4 col-md-4 leftNoPadding rightNoPadding">
                    <input type="text" id="phoneNum3" name="empPhone3" class="form-control telNumMax" />
                    
                  </div> <input type="hidden" id="empPhone" name="empPhone"
                  class="form-control">
                </td>
              </tr>
              
              <tr>
                <th>????????????</th>
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
                  </div> <input type="hidden" id="empOfficePhone" name="empOfficePhone"
                  class="form-control">
                </td>
              </tr>
              
              <tr>
                <th>?????????(*)</th>
                <td><input type="date" id="stf_ent" name="empEnrolldate"
                  class="form-control" placeholder="?????????"></td>
              </tr>
            </tbody>
        </table>
      </div>
      <div class="modal-footer">
        <button type="submit" id="officerInsert" name="abc" class="btn btn-success">??????</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">??????</button>
      </div>
    </form>
    </div>
  </div>
</div>

<!-- ?????? ?????? ?????? -->

<!-- Update Modal -->
<div class="modal fade" id="updateModal" role="dialog">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title">????????? ??????</h4>
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
                  <h5>???????????? ?????? 96px, ?????? 128px??? ?????? ???????????? ????????????.</h5>
                  <h5>(*)??? ????????? ?????? ???????????? ?????????.</h5>
                  <h5><strong>????????? ??????</strong>, <strong>????????????</strong>, <strong>????????????</strong>???
                  ????????? ?????? ?????? ???????????? ???????????????.</h5>
                </td>
              </tr>
               <tr>
                <th>??????(*)</th>
                <td><input type="text" id="empName" name="empName"
                  class="form-control" placeholder="??????"></td>
              </tr>
              
              <tr>
                <th>????????????(*)</th>
                <td>
                  <div id="stf_pw1_Div">
                    <input type="password" id="empPassword" class="form-control"
                      placeholder="????????????"> <span id="stf_pw1_Span"></span>
                  </div>
                </td>
              </tr>
              
              <tr>
                <th>????????????(*)</th>
                <td>
                  <div class="col-sm-9 col-md-10 leftNoPadding">
                    <div id="stf_sq_Div">
                      <input type="text" id="empNo" class="form-control"
                        placeholder="????????????"> <span id="stf_sq_Span"></span>
                    </div>
                  </div>
                  <button type="button" id="stfNumSearchBtn"
                    class="btn btn-default col-sm-3 col-md-2">????????????</button> <input
                  type="hidden" id="stf_sq" name="stf_sq" class="form-control">
                </td>
              </tr>
              
              <tr>
                <th>????????????(*)</th>
                <td><input type="text" id="empBirth" name="empBirth"
                  class="form-control" placeholder="YYYYMMDD"></td>
              </tr>

              <!-- ??????, ????????? DEPT, JOB ??????????????? ?????? ?????? -->
              <tr>
                <th>??????(*)</th>
                <td><select id="deptName" name="deptName"
                  class="form-control">
                    <c:forEach items="${selectDpt_Div_Tb}" var="map">
                      <option value="${map.DPT_SQ}">${map.DPT_NM}</option>
                    </c:forEach>
                </select></td>
              </tr>
              <tr>
                <th>??????(*)</th>
                <td><select id="jobName" name="jobName"
                  class="form-control">
                    <c:forEach items="${selectRnk_Tb}" var="map">
                      <option value="${map.RNK_SQ}">${map.RNK_NM}</option>
                    </c:forEach>
                </select></td>
              </tr>
              <tr>
                <th>??????(*)</th>
                <td>

                  <div class="col-sm-9 col-md-10 leftNoPadding">
                    <input type="text" id="empAdd" name="empAdd"
                      class="form-control" placeholder="??????" readonly="readonly">
                  </div>
                  <button type="button"
                    class="btn btn-default col-sm-3 col-md-2"
                    onclick="addrSearch();">????????????</button>
                </td>
              </tr>
              <tr>
                <th>????????????(*)</th>
                <td><input type="text" id="empDtAdd" name="empDtAdd"
                  class="form-control" placeholder="????????????"></td>
              </tr>
              <tr>
                <th>?????????(*)</th>
                <td><input type="email" id="empEmail" name="empEmail"
                  class="form-control" placeholder="?????????"></td>
              </tr>

              <tr>
                <th>?????????(*)</th>
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
                  </div> <input type="hidden" id="empPhone" name="empPhone"
                  class="form-control">
                </td>
              </tr>
              <tr>
                <th>????????????</th>
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
                  </div> <input type="hidden" id="empOfficePhone" name="empOfficePhone"
                  class="form-control">
                </td>
              </tr>
              <tr>
                <th>?????????(*)</th>
                <td><input type="date" id="empEnrolldate" name="empEnrolldate"
                  class="form-control" placeholder="?????????"></td>
              </tr>
            </tbody>
          </form>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" id="officerUpdate" class="btn btn-success">??????</button>
        <button type="button" class="btn btn-danger" data-dismiss="modal">??????</button>
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

          <h1><b>????????????</b></h1>
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
            <option value="emp1" label="??????" selected></option>
            <option value="emp2" label="??????"></option>
            <option value="emp3" label="??????"></option>
            <option value="emp4" label="??????"></option>
          </select>
        <input type="text" class="mon">
        <a href="#" class="btn btn-primary">??????</a>
        <input type="checkbox"> ????????? ??????
        
        <button type="button" id="officerInsertModal"
                  class="btn btn-success" data-toggle="modal" data-backdrop="static"
                  data-target="#insertModal">????????? ??????</button>
                <button type="button" id="officerUpdateModal" class="btn btn-warning"  
                  data-backdrop="static" data-toggle="modal">????????? ??????</button>
           
         
		
		
          <br><br>
          <h3>????????????</h3>
          <hr>
          
          <%-- <form class="form-inline" role="form" method="post">
						<a href="employeeinsertform.it" class="btn btn-default">Add</a>
						<button type="button" class="btn btn-default">
							totalCount <span class="badge">${totalcount}</span>
						</button>
						<button type="button" class="btn btn-default">
							Count <span class="badge">${count}</span>
						</button>
					</form> --%>
        </div>


        <div class="row div1 center">
          <!-- <div class="col-lg-6"> -->

            <table border="1" class="table table-bordered table-hover tb_insa1">
                      <thead>
                        <tr>
                          <th>??????</th>
                          <th>????????????</th>
                          <th>????????????</th>
                          <th>??????</th>
                          <th>??????</th>
                          <th>??????</th>
                          <th>??????</th>
                          <th>????????????</th>
                          <th>?????????</th>
                          <th>???????????????</th>
                          <th>????????????</th>
                          <th>??????</th>
                        
        
                        </tr>	
                      </thead>
                      <tbody>
                          <tr>
							<c:forEach items = "${list}" var = "emp">
                          <tr>
                            <td><input type="checkbox"></td>
                            <td>${emp.empNo}</td>
                            <td>${emp.empBirth}</td>
                            <td><img alt="???????????????" style="width:100px; height:100px;" src="/hh/resources/static/upload/${emp.empNo}_profile.png"/></td>  <%-- ${emp.empPhotoRoute} --%>
                            <td><a href="http://localhost:9999/hh/emp/injuk">${emp.empName}</a></td>                       
                            <td>${emp.deptName}</td>
                            <td>${emp.jobName}</td>
                            <td>${emp.empEnrolldate}</td>
                            <td>${emp.empPhone}</td>
                            <td>${emp.empEmail}</td>
                            <td>${emp.empOfficePhone}</td>
                            <td>${emp.empAdd} ${emp.empDtAdd}</td>
                         
                          </tr>
							</c:forEach>
                         
                         

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
<!-- <script>
$(document).on("click","button[name=abc]",function(){
	alert("123");
})
</script> -->
<script>
$("#phoneNum3").blur(function(){
	let phoneNumAll = $("#phoneNum1").val() +  $("#phoneNum2").val() + $("#phoneNum3").val()
	$("#empPhone").val(phoneNumAll);
});
</script>
<script>
$("#telNum3").blur(function(){
	let telNumAll = $("#telNum1").val() +  $("#telNum2").val() + $("#telNum3").val()
	$("#empOfficePhone").val(telNumAll);
});
</script>
<!-- jQuery -->
<script src="${path}/resources/css/insa/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${path}/resources/css/insa/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${path}/resources/css/insa/dist/js/adminlte.min.js"></script>

</body>
</html>


