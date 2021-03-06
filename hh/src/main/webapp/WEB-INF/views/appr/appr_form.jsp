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
    <a href="${path}/main" class="nav-link">Home</a>
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
    <img src="${path}/resources/img/svg/HiHellofavicon.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
    <span class="brand-text font-weight-light">전자결재</span>
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
                <a href="./reception" class="nav-link">
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
        <h1 class="m-0">결재 작성</h1>
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
            <div style="background-color: #B3D5F9;">
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
            <div>
                <a href="./appr_form_appr.html">
                    <p class="appr_form_text1">기안문서</p>
                    <span class="appr_form_text2">일반적인 업무에 사용되는</span>
                    <span class="appr_form_text2">기안, 협조, 폼의 결재 양식입니다.</span>
                </a>
            </div>
        </div>
        
        <div class="appr_form_right">
            <h5 class="appr_form_text3">
                자주 사용되는 결재양식
            </h5>
            <sub class="appr_form_text4">회사에서 자주 사용되는 결재양식입니다.</sub>
            <hr>
            <div class="appr_often_cp">
            	<div>
                    <a href="./appr_gian.html">
                        <img src="${path}/resources/css/appr/dist/img/file_img1.png">
                        <p style="padding-top: 5px;">기안문</p>
                    </a>
                </div>
                <div>
                    <a href="#">
                        <img src="${path}/resources/css/appr/dist/img/file_img1.png">
                        <p style="padding-top: 5px;">협조문</p>
                    </a>
                </div>
                <div>
                    <a href="#">
                        <img src="${path}/resources/css/appr/dist/img/file_img1.png">
                        <p style="padding-top: 5px;">동의서</p>
                    </a>
                </div>
                <div>
                    <a href="#">
                        <img src="${path}/resources/css/appr/dist/img/file_img1.png">
                        <p style="padding-top: 5px;">업무보고</p>
                    </a>
                </div>
                <div>
                    <a href="#">
                        <img src="${path}/resources/css/appr/dist/img/file_img1.png">
                        <p style="padding-top: 5px;">회의록</p>
                    </a>
                </div>
                <div>
                    <a href="#">
                        <img src="${path}/resources/css/appr/dist/img/file_img1.png">
                        <p style="padding-top: 5px;">회의실예약신청서</p>
                    </a>
                </div>
                <div>
                    <a href="#">
                        <img src="${path}/resources/css/appr/dist/img/file_img1.png">
                        <p style="padding-top: 5px;">휴가신청서(기본)</p>
                    </a>
                </div>
                <div>
                    <a href="#">
                        <img src="${path}/resources/css/appr/dist/img/file_img1.png">
                        <p style="padding-top: 5px;">구매요청서</p>
                    </a>
                </div>
            </div>
            <!-- appr_often_cp -->
            <h5 class="appr_form_text3" style="padding-top: 10px;">
                자주 쓰는 결재
                <a href="#" id="show" class="often_btn">자주쓰는 결재 설정</a>
                <!-- appr_select_btn -->
            </h5>
            <sub class="appr_form_text4">사용자가 가장 많이 사용한 결재양식입니다. 설정을 통해 수정하여 사용 가능합니다.</sub>
            <hr>
            <div class="my_often">
                <a href="#">
                    <div class="my_often1">
                        <div class="my_often1_L">
                            <img src="${path}/resources/css/appr/dist/img/file_img1.png">&nbsp;기본양식
                            <span class="appr_form_text5">업무보고</span>
                        </div>
                        <div class="my_often1_R">
                            <span class="appr_form_text4">업무 내역을 보고하기 위해 작성하는 양식입니다.</span>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="my_often1">
                        <div class="my_often1_L">
                            <img src="${path}/resources/css/appr/dist/img/file_img1.png">&nbsp;기본양식
                            <span class="appr_form_text5">연장근무신청서</span>
                        </div>
                        <div class="my_often1_R">
                            <span class="appr_form_text4">연장근무를 신청하기 위해 작성하는 양식입니다.</span>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="my_often1">
                        <div class="my_often1_L">
                            <img src="${path}/resources/css/appr/dist/img/file_img1.png">&nbsp;기본양식
                            <span class="appr_form_text5">협조문</span>
                        </div>
                        <div class="my_often1_R">
                            <span class="appr_form_text4">업무 협조를 요청하기 위해 작성하는 양식입니다.</span>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="my_often1">
                        <div class="my_often1_L">
                            <img src="${path}/resources/css/appr/dist/img/file_img1.png">&nbsp;기본양식
                            <span class="appr_form_text5">회의실예약신청서</span>
                        </div>
                        <div class="my_often1_R">
                            <span class="appr_form_text4">회의실 예약을 위해 작성하는 양식입니다.</span>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="my_often1">
                        <div class="my_often1_L">
                            <img src="${path}/resources/css/appr/dist/img/file_img1.png">&nbsp;기본양식
                            <span class="appr_form_text5">휴가신청서(기본)</span>
                        </div>
                        <div class="my_often1_R">
                            <span class="appr_form_text4">휴가를 신청하기 위해 작성하는 양식입니다. *근태관리 서비스 사용자는 근태관리서비스 연동양식을 사용하시기 바랍니다.</span>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <!-- appr_form_right -->
    </div>
    <!-- container-fluid -->
</div>
<!-- /.content-wrapper -->

<!-- 자주쓰는 결재 팝업창 -->
    <div class="background">
        <div class="window">
            <div class="popup">
                <p class="appr_form_text3" style="border-bottom: 3px solid #dcdcdc; padding-bottom: 5px; font-weight: bold;">자주쓰는 결재를 설정합니다.</p>
                <a id="go_popup_close_icon" class="btn_layer_x" style data-bypass title="닫기">
                    <span id="close"></span>
                </a>
                <p class="appr_form_text6 mb5">결재양식을 추가하여 순서를 변경하거나 새로운 양식을 추가합니다</p>
                <span class="appr_form_text5 dib">&bull;&nbsp;자주 쓰는 결재&nbsp;&nbsp;&nbsp;<p class="appr_form_text7 dib">자주쓰는 결재는 최대 10개까지 지정가능하며, 기본은 사용자가 가장 많이 사용하는 결재양식순으로 반영됩니다.</p></span>
                <div class="popup_often_top mb5">

                </div>
                <span class="appr_form_text5 dib">&bull;&nbsp;결재양식&nbsp;&nbsp;&nbsp;<p class="appr_form_text7 dib">결재양식을 선택하여 추가하세요.</p></span>
                <div class="popup_often_bottom">

                </div>
                <button>취소</button>
                <button>저장</button>
            </div>
        <div>
    <div>
<!-- 자주쓰는 결재 팝업창 -->

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


<!-- Page specific script -->
<script>
    function show () {
document.querySelector(".background").className = "background show";
}

function close () { 
document.querySelector(".background").className = "background";
}

document.querySelector("#show").addEventListener('click', show);
document.querySelector("#close").addEventListener('click', close);
document.querySelector(".apprline_btn3").addEventListener('click', close);

</script>>
<script>

</script>
</body>
</html>
