<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>결재 작성하기</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="${path}/resources/css/appr/plugins/fontawesome-free/css/all.min.css">
<!-- IonIcons -->
<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="${path}/resources/css/appr/dist/css/adminlte.min.css">
<!-- home css -->
<link rel="stylesheet" href="${path}/resources/css/appr/dist/css/appr_form.css">
<!-- smarteditor2 -->
<script type="text/javascript" src="${path}/resources/static/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">
<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
<!-- 상단 메뉴 (왼쪽) -->
<ul class="navbar-nav">
    <!-- 메뉴 펼치기/접기 버튼 -->
    <li class="nav-item">
    <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
    </li>
    <!-- Home 버튼 -->
    <li class="nav-item d-none d-sm-inline-block">
    <a href="home.html" class="nav-link">Home</a>
    </li>
    <!-- Contact 버튼 -->
    <li class="nav-item d-none d-sm-inline-block">
    <a href="#" class="nav-link">Contact</a>
    </li>
</ul>

<!-- 상단 메뉴 (오른쪽) -->
<ul class="navbar-nav ml-auto">
    <!-- 검색 버튼 -->
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
            <img src="${path}/resources/css/appr/dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
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
            <img src="${path}/resources/css/appr/dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
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
            <img src="${path}/resources/css/appr/dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
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
        <span class="dropdown-item dropdown-header">15 Notifications</span>
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
<a href="home.html" class="brand-link">
    <img src="${path}/resources/css/appr/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
    <span class="brand-text font-weight-light">전자결재</span>
</a>

<!-- Sidebar -->
<div class="sidebar">
    <!-- Sidebar user panel (optional) -->
    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
    <div class="image">
        <img src="${path}/resources/css/appr/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
    </div>
    <div class="info">
        <a href="#" class="d-block">이훈희</a>
    </div>
    </div>

    <!-- 결재 작성하기 버튼 -->
    <div class="appr">
    <a href="./appr_form.html">
        <!-- <div class="appr_1">결재 작성하기</div> -->
        <button type="button" class="btn btn-block btn-primary" style="margin-left: 10px;">결재 작성하기</button>
    </a>
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
        <li class="nav-item">
            <a href="#" class="nav-link">
            <i class="nav-icon fas fa-tree"></i>
            <p>
                결재 상신함
                <i class="fas fa-angle-left right"></i>
            </p>
            </a>
            <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>결재진행</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>결재완료</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>임시저장</p>
                </a>
            </li>
            </ul>
        </li>
        </li>
        <li class="nav-item menu-open">
        <li class="nav-item">
            <a href="#" class="nav-link">
            <i class="nav-icon fas fa-tree"></i>
            <p>
                결재 수신함
                <i class="fas fa-angle-left right"></i>
            </p>
            </a>
            <ul class="nav nav-treeview">
            <li class="nav-item">
                <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>수신결재</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>결재내역</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>검토</p>
                </a>
            </li>
            <li class="nav-item">
                <a href="#" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>수신참조</p>
                </a>
            </li>
            </ul>
        </li>
        </li>
        <li class="nav-item">
        <a href="#" class="nav-link">
            <i class="far fa-circle nav-icon"></i>
            <p>
            시행
            </p>
        </a>
        </li>
    </ul>
    </nav>
    <!-- /.sidebar-menu -->
</div>
<!-- /.sidebar -->
</aside>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
    <div class="row mb-2">
        <div class="col-sm-6">
        <h1 class="m-0">결재 작성
            <span class="text_1">결재를 작성하고 상신합니다.</span>
        </h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="./home.html">Home</a></li>
            <li class="breadcrumb-item active">결재 작성</li>
        </ol>
        </div><!-- /.col -->
    </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<div class="content">
    <div class="container-fluid">
        <div class="appr_form_left">
            <div class="t">
                결재 양식
            </div>
            <hr>
            <div>
                <a href="./appr_form.html">
                    <p class="appr_form_text1">자주쓰는 결재</p>
                    <span class="appr_form_text2">회사에서 자주 사용되는 양식과</span>
                    <span class="appr_form_text2">사용자가 설정한 양식을 작성</span>
                </a>
            </div>
            <div>
                <a href="./appr_form_atte.html">
                    <p class="appr_form_text1">근태문서</p>
                    <span class="appr_form_text2">직원의 근태 및 채용과 관련된 </span>
                    <span class="appr_form_text2">신청양식 입니다</span>
                </div>
            </a>
            <div>
                <a href="./appr_form_app.html">
                    <p class="appr_form_text1">신청문서</p>
                    <span class="appr_form_text2">명함, 경조비, 등 회사에 신청과</span>
                    <span class="appr_form_text2">관련된 결재 양식입니다.</span>
                </a>
            </div>
            <div>
                <a href="./appr_form_repo.html">
                    <p class="appr_form_text1">보고문서</p>
                    <span class="appr_form_text2">업무 보고에 필요한 </span>
                    <span class="appr_form_text2">결재 양식입니다. </span>
                </a>
            </div>
            <div style="background-color: #B3D5F9;">
                <a href="./appr_form_appr.html">
                    <p class="appr_form_text1">기안문서</p>
                    <span class="appr_form_text2">일반적인 업무에 사용되는</span>
                    <span class="appr_form_text2">기안, 협조, 폼의 결재 양식입니다.</span>
                </a>
            </div>
        </div>
        
        <div class="appr_form_right">
            <div class="appr_form_right_L">
                <h5 class="appr_form_text3">
                    기안서
                </h5>
                <sub class="appr_form_text4">일반적인 업무 기안을 진행하기 위해 작성하는 양식입니다.</sub>
                <hr>
                <table class="form_table1">
                    <tbody>
                        <tr class="form_table1_tr1">
                            <td class="form_table1_tr1_td1">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td class="td1">기안자</td>
                                            <td class="td2">이훈희</td>
                                        </tr>
                                        <tr>
                                            <td class="td1">소속</td>
                                            <td class="td2">HH그룹</td>
                                        </tr>
                                        <tr>
                                            <td class="td1">기안일</td>
                                            <td class="td2">2022-02-27(일)</td>
                                        </tr>
                                        <tr>
                                            <td class="td1">문서번호</td>
                                            <td class="td2"></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </td>
                            <td>
                                
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="form_table2">
                    <tbody>
                        <tr class="form_table2_tr1">
                            <td class="form_table2_tr1_td1">시행일자</td>
                            <td class="form_table2_tr1_td2"><input type="text" class="ipt_hasDatepicker" id="datepicker" readonly></td>
                            <td class="form_table2_tr1_td1"></td>
                            <td class="form_table2_tr1_td3"><input type="text"></td>
                        </tr>
                        <tr class="form_table2_tr2">
                            <td class="form_table2_tr2_td1">합의</td>
                            <td class="form_table2_tr2_td2"><input type="text"></td>
                        </tr>
                        <tr class="form_table2_tr2">
                            <td class="form_table2_tr2_td1">제목</td>
                            <td class="form_table2_tr2_td2"><input type="text"></td>
                        </tr>
                        <tr class="form_table2_tr3">
                            <td class="form_table2_tr3_td" colspan="4">
                                 <form action="insertStudentInfoForm" method="post">
							      <div id="smarteditor">
							        <textarea name="editorTxt" id="editorTxt" 
							                  rows="17" cols="10" 
							                  placeholder="내용을 입력해주세요"
							                  style="width: 100%"></textarea>
							      </div>
							      <input type="button" />
							    </form>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="appr_form_right_R">
                <h5 class="appr_form_text3">
                    기안정보 등록
                </h5>
                <hr style="margin: 0;">
                <p class="appr_form_text1" style="margin-top: 10px;">결재자지정</p>
                <a id="show" class="appr_select_btn">결재자지정</a>
            </div>
        </div>
        <!-- appr_form_right -->
    </div>
    <!-- container-fluid -->
</div>
<!-- /.content-wrapper -->
<!-- 결재자지정 팝업창 -->
    <div class="background">
        <div class="window">
            <div class="popup">
                <p class="appr_form_text3" style="border-bottom: 3px solid #dcdcdc; padding-bottom: 5px;">결재자지정</p>
                <a id="go_popup_close_icon" class="btn_layer_x" style data-bypass title="닫기">
                    <span id="close"></span>
                </a>
                <div class="group">
                    <div class="group_top">
                        <p class="appr_form_text1">조직도</p>
                    </div>
                    <div class="group_bottom">
                        <div class="group_bottom_tree">
                            <ul id="main_menu" class="group_bottom_tree_ul1">
                                <li title="HH그룹" rel="company" id="company" class="tree_company">
                                    <ins class="jstree-icon">&nbsp;</ins>
                                    <a title rel="company" id="company" href="#" class="ui-draggable">
                                        HH그룹
                                    </a>
                                    <ul class="first_menu">
                                        <li title="신짱구 대표이사" rel="MASTER" id="MASTER_1" class="jstree_leaf">
                                            <ins class="jstree-icon_1">&nbsp;</ins>
                                            <a title rel="MASTER" id="MASTER_1" href="#" class="ui-draggable1">
                                                <ins class="jstree-icon_2"></ins>
                                                신짱구 대표이사
                                            </a>
                                        </li>
                                        <li title="봉미선 사장" rel="MEMBER" id="MEMBER_1" class="jstree_leaf">
                                            <ins class="jstree-icon_1">&nbsp;</ins>
                                            <a title rel="MEMBER" id="MEMBER_1" href="#" class="ui-draggable1">
                                                <ins class="jstree-icon_3"></ins>
                                                봉미선 사장
                                            </a>
                                        </li>
                                        <li title="신형만 전무" rel="MEMBER" id="MEMBER_2" class="jstree_leaf">
                                            <ins class="jstree-icon_1">&nbsp;</ins>
                                            <a title rel="MEMBER" id="MEMBER_2" href="#" class="ui-draggable1">
                                                <ins class="jstree-icon_3"></ins>
                                                신형만 전무
                                            </a>
                                        </li>
                                        <li title="영업부">
                                            <ins id="jstree-icon" class="jstree-icon_4">&nbsp;</ins>
                                            <a href="#" class="ui-draggable1 jstree-open">
                                                영업부
                                            </a>
                                            <ul class="second_menu sub_menu">
                                                <li>
                                                    <ins class="jstree-icon_1">&nbsp;</ins>
                                                    <a title rel="MASTER" id="MASTER_1" href="#" class="ui-draggable1">
                                                        <ins class="jstree-icon_2"></ins>
                                                        이훈이 상무
                                                    </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li title="인사팀">
                                            <ins id="jstree-icon" class="jstree-icon_4">&nbsp;</ins>
                                            <a href="#" class="ui-draggable1 jstree-open">
                                                인사팀
                                            </a>
                                            <ul class="second_menu sub_menu">
                                                <li>
                                                    <ins class="jstree-icon_1">&nbsp;</ins>
                                                    <a title rel="MEMBER" id="MEMBER_1" href="#" class="ui-draggable1">
                                                        <ins class="jstree-icon_2"></ins>
                                                        신짱아 상무
                                                    </a>
                                                </li>
                                                <c:forEach items="${list}" var="n">
	                                                <li>
		                                            	<ins class="jstree-icon_1">&nbsp;</ins>
			                                            <a title rel="MEMBER" id="MEMBER_2" href="#" class="ui-draggable1">
			                                                <ins class="jstree-icon_3"></ins>
			                                                <span class="userInfo">${n.empName} ${n.empjobCode}</span>
                                                            <span style="display: none;">${n.managerDept}</span>
                                                            <span style="display: none;">${n.empjobCode}</span>
                                                            <span style="display: none;">${n.empName}</span>
			                                            </a>
	                                                </li>
                                                </c:forEach>
                                            </ul>
                                        </li>
                                        <li title="총무팀">
                                            <ins id="jstree-icon" class="jstree-icon_4">&nbsp;</ins>
                                            <a href="#" class="ui-draggable1 jstree-open">
                                                총무팀
                                            </a>
                                            <ul class="second_menu sub_menu">
                                                <li>
                                                    <ins class="jstree-icon_1">&nbsp;</ins>
                                                    <a title rel="MEMBER" id="MEMBER_1" href="#" class="ui-draggable1">
                                                        <ins class="jstree-icon_2"></ins>
                                                        김철수 상무
                                                    </a>
                                                </li>
                                                <li>
	                                            	<ins class="jstree-icon_1">&nbsp;</ins>
		                                            <a title rel="MEMBER" id="MEMBER_2" href="#" class="ui-draggable1">
		                                                <ins class="jstree-icon_3"></ins>
		                                                한유리 부장
		                                            </a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li title="디자인팀">
                                            <ins id="jstree-icon" class="jstree-icon_4">&nbsp;</ins>
                                            <a href="#" class="ui-draggable1 jstree-open">
                                                디자인팀
                                            </a>
                                            <ul class="second_menu sub_menu">
                                                <li>
                                                    <ins class="jstree-icon_1">&nbsp;</ins>
                                                    <a title rel="MEMBER" id="MEMBER_1" href="#" class="ui-draggable1">
                                                        <ins class="jstree-icon_2"></ins>
                                                        맹구 상무
                                                    </a>
                                                </li>
                                                <li>
	                                            	<ins class="jstree-icon_1">&nbsp;</ins>
		                                            <a title rel="MEMBER" id="MEMBER_2" href="#" class="ui-draggable1">
		                                                <ins class="jstree-icon_3"></ins>
		                                                한수지 부장
		                                            </a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li> 
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="appr_add">
                    <div class="appr_add_top">
                        <button class="appr_add_btn add_action1">추가</button>
                    </div>
                    <div class="appr_add_bottom">
                        <button class="appr_add_btn add_action2">추가</button>
                    </div>
                </div>
                <div class="appruser">
                    <div class="appruser_top">
                        <p class="appr_form_text1">결재자</p>
                    </div>
                    <div class="appruser_bottom">
                        <table border="1" style="margin:auto;">
                            <thead>
                                <tr style="border-top: 1px solid black;">
                                    <th>부서</th>
                                    <th>직위</th>
                                    <th>이름</th>
                                    <th>타입</th>
                                    <td>
                                        <span id="allActivityDelete" class="btn_bdr delete_activity" title="전체 삭제" name="Alldel1">
                                            <span class="ic_classic ic_basket"><img src="${path}/resources/css/appr/dist/img/basket.png" width="15px" height="15px"></span>
                                        </span>
                                    </td>
                                </tr>
                            </thead>
                        </table>
                        <div>
                            <table border="1" style="margin:auto;">
                                <tbody class="parent1">
                                    <tr>
                                        <td>1</td>
                                        <td>2</td>
                                        <td class="listedName">3</td>
                                        <td>4</td>
                                        <td>
                                            <span id="allActivityDelete" class="btn_bdr delete_activity" title="삭제" name="del">
                                                <span class="ic_classic ic_basket"><img src="${path}/resources/css/appr/dist/img/basket.png" width="15px" height="15px"></span>
                                            </span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>	
                        </div>
                    </div>
                </div>
                <div class="apprviewer">
                    <div class="apprviewer_top">
                        <p class="appr_form_text1">열람자</p>
                    </div>
                    <div class="apprviewer_bottom">
                        <table border="1" style="margin:auto;">
                            <thead>
                                <tr style="border-top: 1px solid black;">
                                    <th>부서</th>
                                    <th>직위</th>
                                    <th>이름</th>
                                    <th>타입</th>
                                    <td>
                                        <span id="allActivityDelete" class="btn_bdr delete_activity" title="전체 삭제" name="Alldel2">
                                            <span class="ic_classic ic_basket"><img src="${path}/resources/css/appr/dist/img/basket.png" width="15px" height="15px"></span>
                                        </span>
                                    </td>
                                </tr>
                            </thead>
                        </table>
                        <div>
                            <table border="1" style="margin:auto;">
                                <tbody class="parent2">
                                    <tr>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>3</td>
                                        <td>4</td>
                                        <td>
                                            <span id="allActivityDelete" class="btn_bdr delete_activity" title="삭제" name="del">
                                                <span class="ic_classic ic_basket"><img src="${path}/resources/css/appr/dist/img/basket.png" width="15px" height="15px"></span>
                                            </span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>	
                        </div>
                    </div>
                </div>
                <div class="my_apprline">
                    <div class="my_apprline_top">
                        <p class="appr_form_text1">나의 결재선</p>
                    </div>
                    <div class="my_apprline_bottom">
                        <table border="1" style="margin:auto;">
                            <thead>
                                <tr style="border-top: 1px solid black;">
                                    <th>No.</th>
                                    <th>결재선 명칭</th>
                                    <th>결재경로</th>
                                    <th>삭제</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%-- <c:forEach items="${list}" var="n">
                                    <tr>
                                        <td>${n.no}</td>
                                        <td>${n.apprLineTitle}</td>
                                        <td>${n.apprLine}</td>
                                        <td>
                                            <span id="allActivityDelete" class="btn_bdr delete_activity" title="삭제">
                                                <span class="ic_classic ic_basket"><img src="${path}/resources/css/appr/dist/img/basket.png" width="15px" height="15px"></span>
                                            </span>
                                        </td>
                                    </tr>
                                </c:forEach> --%>
                            </tbody>	
                        </table>	
                    </div>
                </div>
                <div class="apprline_footer">
                    <div class="apprline_footer_left">
                        <input type="text" placeholder="결재선 이름" style="margin-left: 10px;">
                    </div>
                    <div class="apprline_footer_right" style="float: right;">
                        <a href="#" class="apprline_btn1">결재선 저장</a>
                        <a href="#" class="apprline_btn2">결재선 불러오기</a>
                        <a href="#" class="apprline_btn3">닫기</a>
                        <a href="#" class="apprline_btn4">확인</a>
                    </div>
                </div>
            </div>
        <div>
    <div>
<!-- 결재자지정 팝업창 -->
<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
<!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->

</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<script src="${path}/resources/css/appr/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="${path}/resources/css/appr/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE -->
<script src="${path}/resources/css/appr/dist/js/adminlte.js"></script>

<!-- OPTIONAL SCRIPTS -->
<script src="${path}/resources/css/appr/plugins/chart.js/Chart.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="${path}/resources/css/appr/dist/js/demo.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="${path}/resources/css/appr/dist/js/pages/dashboard3.js"></script>
<!-- jQuery -->
<script src="${path}/resources/css/appr/plugins/jquery/jquery.min.js"></script>
<!-- calendar datepicker -->
<!-- 값 제어를 위해 jquery -->
<!-- <script src="./jquery-3.1.1.min.js"></script>  -->
<link href="${path}/resources/css/appr/dist/css/datepicker.min.css" rel="stylesheet" type="text/css" media="all">
<!-- Air datepicker css -->
<script src="${path}/resources/css/appr/dist/js/datepicker.js"></script> <!-- Air datepicker js -->
<script src="${path}/resources/css/appr/dist/js/i18n/datepicker.ko.js"></script> <!-- 달력 한글 추가를 위해 커스텀 -->

<!-- smarteditor2 -->
<script>
    let oEditors = []

    smartEditor = function() {
        // console.log("Naver SmartEditor")
        nhn.husky.EZCreator.createInIFrame({
        oAppRef: oEditors,
        elPlaceHolder: "editorTxt",
        sSkinURI: "${path}/resources/static/smarteditor/SmartEditor2Skin.html",
        fCreator: "createSEditor2"
        })
    }

    $(document).ready(function() {
        smartEditor()
    })
</script>

<!-- datepicker -->
<script>
    $("#datepicker").datepicker({
    language: 'ko',
    timepicker: true,
    timeFormat: "hh:ii AA"
});
</script>

<!-- Page specific script -->
<script>
	function show() {
		document.querySelector(".background").className = "background show";
	}
	function close() {
		document.querySelector(".background").className = "background";
	}
	document.querySelector("#show").addEventListener('click', show);
	document.querySelector("#close").addEventListener('click', close);
	document.querySelector(".apprline_btn3").addEventListener('click', close);
</script>

<!-- 조직도 토글 이벤트 -->
<script>
    $('#main_menu > li > ins').click(function(){
        $(this).next().next($('.first_menu')).slideToggle('fast');
    })

    $('.jstree-open').click(function(){
        if ($(this).hasClass('on')) {
            slideUp();
        } else {
            slideUp();
            $(this).addClass('on').next().slideDown();
            $(this).prev().attr('class','jstree-icon_5') ;
        }
        function slideUp() {
            $('.jstree-open').removeClass('on').next().slideUp();
            $('.jstree-open').prev().attr('class','jstree-icon_4') ;
        };
    })

    $('li > a').focus(function(){
    	$(this).addClass('selec');
    })
    $("li > a").blur(function(){
    	$(this).removeClass('selec');
    })
</script>

<script>

let userInfoList = document.getElementsByClassName('userInfo');

$(userInfoList).each(function(idx, element){
    $(element).on('click' , function(event){
        let t = event.currentTarget;
        var name = t.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.innerText;
        // console.log(t);
        // console.log(t.nextSibling.nextSibling);
        // console.log(t.nextSibling.nextSibling.nextSibling.innerText);
        // console.log(t.nextSibling.nextSibling.nextSibling.nextSibling.innerText);
        // on, one, unbind, off
        const addButton1 = document.querySelector('.add_action1');
        const addButton2 = document.querySelector('.add_action2');
        
        console.log(document.getElementsByClassName('listedName').innerText);

	    addButton1.addEventListener('click', () => {
            $(element).off('click');
            
            var innerHtml = "";
            innerHtml += '<tr>';
            innerHtml += '<td>' + t.nextSibling.nextSibling.innerText +'</td>';
            innerHtml += '<td>' + t.nextSibling.nextSibling.nextSibling.nextSibling.innerText +'</td>';
            innerHtml += '<td class="listedName">' + t.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.innerText +'</td>';
            innerHtml += '<td>4</td>';
            innerHtml += '<td>';
            innerHtml += '<span id="allActivityDelete" class="btn_bdr delete_activity" title="삭제" name="del">';
            innerHtml += '<span class="ic_classic ic_basket"><img src="${path}/resources/css/appr/dist/img/basket.png" width="15px" height="15px"></span>';
            innerHtml += '</span>';
            innerHtml += '</td>';
            innerHtml += '</tr>';
            $('.parent1:last').append(innerHtml);
            // return false;
	    })
        addButton2.addEventListener('click', () => {
            $(element).off('click');
            
            var innerHtml = "";
            innerHtml += '<tr>';
            innerHtml += '<td>' + t.nextSibling.nextSibling.innerText +'</td>';
            innerHtml += '<td>' + t.nextSibling.nextSibling.nextSibling.nextSibling.innerText +'</td>';
            innerHtml += '<td>' + t.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.innerText +'</td>';
            innerHtml += '<td>4</td>';
            innerHtml += '<td>';
            innerHtml += '<span id="allActivityDelete" class="btn_bdr delete_activity" title="삭제" name="del">';
            innerHtml += '<span class="ic_classic ic_basket"><img src="${path}/resources/css/appr/dist/img/basket.png" width="15px" height="15px"></span>';
            innerHtml += '</span>';
            innerHtml += '</td>';
            innerHtml += '</tr>';
            $('.parent2:last').append(innerHtml);
            // return false;
	    })
    })
});

</script>
<!-- 조직도 토글 - 삭제버튼 -->
<script>
    //삭제 버튼
    $(document).on("click","span[name=del]",function(){
        var trHtml = $(this).parent().parent();
        trHtml.remove(); //tr 태그 삭제
    })
</script>
<!-- 조직도 토글 - 전체삭제버튼 -->
<script>
    //결재자 전체삭제 버튼
    $(document).on("click","span[name=Alldel1]",function(){
        var standard = document.getElementsByClassName('parent1');
        $(".parent1").children().remove();
    })
    //열람자 전체삭제 버튼
    $(document).on("click","span[name=Alldel2]",function(){
        var standard = document.getElementsByClassName('parent2');
        $(".parent2").children().remove();
    })
</script>
</body>
</html>
