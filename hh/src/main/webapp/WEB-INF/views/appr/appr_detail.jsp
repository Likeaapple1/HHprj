<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>전자결재 상세조회</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="${path}/resources/css/appr/plugins/fontawesome-free/css/all.min.css">
  <link rel="stylesheet" href="${path}/resources/css/appr/plugins/fontawesome-free/css/all.min.css">
  <!-- IonIcons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${path}/resources/css/appr/dist/css/adminlte.min.css">
  <!-- home css -->
  <link rel="stylesheet" href="${path}/resources/css/appr/dist/css/home.css">
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
            <h1 class="m-0">전자결재 Home</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="./home.html">Home</a></li>
              <li class="breadcrumb-item active">전자결재 Home</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <h5 class="m-0" style="font-weight: bold;">자주쓰는 결재 &nbsp;
          <span class="text_1">사용자가 가장 많이 사용한 결재양식입니다. 양식 선택 시 결재 작성화면으로 이동됩니다.</span>
        </h5>
        <div class="appr_often">
        	<a href="./appr_gian.html">
	            <div class="appr_often_div">
	              <img src="${path}/resources/css/appr/dist/img/file_img1.png">
	              <p>기안서</p>
	            </div>
          	</a>
          <!-- 추가하기 버튼 -->
          <a href="#">
            <div class="appr_often_add">
              <img src="${path}/resources/css/appr/dist/img/plus.png">
              <p>추가하기</p>
            </div>
          </a>
        </div> 
        <!-- appr_often -->
        <div class="appr_content">
          <div class="appr_content1">
				<div class="appr_content1_div">
					<div>
						<div class="appr_content1_header">
							<span class="state read">진행중</span>
							<p class="appr_form_text3 mb0">휴가 가고싶어요</p>
							<p class="appr_form_text2 mb0">기안자 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이훈희</p>
							<p class="appr_form_text2 mb0">기안일 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022-03-04</p>
							<p class="appr_form_text2 mb0">결재양식 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;기안서</p>
						</div>
						<a href="#">
							<div class="appr_content1_footer">
								<p class="appr_form_text5">결재하기</p>
							</div>							
						</a>
					</div>
					<div>
						<div class="appr_content1_header">
							<span class="state read">진행중</span>
							<p class="appr_form_text3 mb0">관두겠습니다!</p>
							<p class="appr_form_text2 mb0">기안자 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이훈희</p>
							<p class="appr_form_text2 mb0">기안일 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022-03-04</p>
							<p class="appr_form_text2 mb0">결재양식 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;퇴직신청서</p>
						</div>
						<a href="#">
							<div class="appr_content1_footer">
								<p class="appr_form_text5">결재하기</p>
							</div>							
						</a>
					</div>
					<div>
						<div class="appr_content1_header">
							<span class="state read">진행중</span>
							<p class="appr_form_text3 mb0">출장다녀오겠습니다.</p>
							<p class="appr_form_text2 mb0">기안자 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이훈희</p>
							<p class="appr_form_text2 mb0">기안일 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022-03-04</p>
							<p class="appr_form_text2 mb0">결재양식 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;출장신청서</p>
						</div>
						<a href="#">
							<div class="appr_content1_footer">
								<p class="appr_form_text5">결재하기</p>
							</div>							
						</a>
					</div>
					<div>
						<div class="appr_content1_header">
							<span class="state read">진행중</span>
							<p class="appr_form_text3 mb0">과자샀습니다</p>
							<p class="appr_form_text2 mb0">기안자 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이훈희</p>
							<p class="appr_form_text2 mb0">기안일 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022-03-04</p>
							<p class="appr_form_text2 mb0">결재양식 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;지출결의서(기본)</p>
						</div>
						<a href="#">
							<div class="appr_content1_footer">
								<p class="appr_form_text5">결재하기</p>
							</div>							
						</a>
					</div>
					<div>
						<div class="appr_content1_header">
							<span class="state read">진행중</span>
							<p class="appr_form_text3 mb0">죄송합니다</p>
							<p class="appr_form_text2 mb0">기안자 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이훈희</p>
							<p class="appr_form_text2 mb0">기안일 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2022-03-04</p>
							<p class="appr_form_text2 mb0">결재양식 : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;시말서</p>
						</div>
						<a href="#">
							<div class="appr_content1_footer">
								<p class="appr_form_text5">결재하기</p>
							</div>							
						</a>
					</div>
				</div>
          </div>
          <div class="appr_content2">
            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-header" style="padding-top: 15px;">
                    <h5 class="appr_form_text3">
                      기안 진행 문서
                    </h5>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body table-responsive p-0">
                    <table class="table table-hover text-nowrap">
                      <thead>
                        <tr>
                          <th>기안일</th>
                          <th>결재양식</th>
                          <th>제목</th>
                          <th>첨부</th>
                          <th style="width: 10%;">결재상태</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>2022-03-04</td>
                          <td>기안서</td>
                          <td>휴가 가고싶어요</td>
                          <td><span class="tag tag-warning"></span></td>
                          <td><span class="state read">진행중</span></td>
                        </tr>
                        <tr>
                          <td>2022-03-04</td>
                          <td>퇴직신청서</td>
                          <td>관두겠습니다!</td>
                          <td><span class="tag tag-primary"></span></td>
                          <td><span class="state read">진행중</span></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <!-- /.card-body -->
                </div>
                <!-- /.card -->
              </div>
            </div>
            <!-- /.row -->
          </div>
          <div class="appr_content3">
            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-header" style="padding-top: 15px;">
                    <h5 class="appr_form_text3">
                      완료 문서
                    </h5>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body table-responsive p-0">
                    <table class="table table-hover text-nowrap">
                      <thead>
                        <tr>
                          <th>기안일</th>
                          <th>결재양식</th>
                          <th>제목</th>
                          <th>첨부</th>
                          <th>문서번호</th>
                          <th style="width: 10%;">결재상태</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>2022-03-04</td>
                          <td>기안서</td>
                          <td>결재승인해주세요</td>
                          <td><span class="tag tag-warning"></span></td>
                          <td>HH그룹-2022-00001</td>
                          <td><span class="state finish">완료</span></td>
                        </tr>
                        <tr>
                          <td>2022-03-04</td>
                          <td>기안서</td>
                          <td>노트북 구매</td>
                          <td><span class="tag tag-primary"></span></td>
                          <td>HH그룹-2022-00002</td>
                          <td><span class="state finish">완료</span></td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                  <!-- /.card-body -->
                </div>
                <!-- /.card -->
              </div>
            </div>
            <!-- /.row -->
          </div>
        </div>
        <!-- appr_content -->
      </div>
      <!-- container-fluid -->
    </div>
    <!-- content -->
  </div>
  <!-- /.content-wrapper -->

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

</script>
</body>
</html>
