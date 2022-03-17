<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<c:set var="root" value="${pageContext.request.contextPath}"/>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="${root}/resources/css/resign/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${root}/resources/css/resign/dist/css/adminlte.min.css">
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
              <img src="${root}/resources/resign/dist/img/user1-128x128.jpg" alt="User Avatar" class="img-size-50 mr-3 img-circle">
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
              <img src="${root}/resources/resign/dist/img/user8-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
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
              <img src="${root}/resources/resign/dist/img/user3-128x128.jpg" alt="User Avatar" class="img-size-50 img-circle mr-3">
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
    </ul>
  </nav>
  <!-- /.navbar -->
















  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="index3.html" class="brand-link">
      <img src="${root}/resources/resign/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light">Hi Hello</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <img src="${root}/resources/resign/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
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


               <!--퇴직 왼쪽 메뉴-->
          <li class="nav-item menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                퇴직 업무
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${pageContext.request.contextPath}/resign/history" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>퇴직금 산정</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${pageContext.request.contextPath}/resign/input" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>퇴직급여 입력</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${pageContext.request.contextPath}/resign/receipt" class="nav-link active">
                  <i class="far fa-circle nav-icon"></i>
                  <p>퇴직소득원천징수</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${pageContext.request.contextPath}/resign/totalresign" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>퇴직금 추계액관리</p>
                </a>
              </li>
            </ul>
          </li>
          <!--퇴직 왼쪽 메뉴 끝-->
          
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
            <h1 class="m-0">퇴직소득원천징수</h1><!-- 해당 페이지 명 바꿔주기-->
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">퇴직소득원천징수</li><!-- 해당페이지 명으로 바꿔주기-->
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->




    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
        <div class="row">

          <div class="col-12">
            <div class="card">
              <div class="card-body">
                <p class="card-text">


                  <form action="" method="post">
                  귀속연월 : <input type="date" name="searchDate"> &nbsp;&nbsp;&nbsp;
                  <select name="searchValue" id="">
                      <option value="empNmae">성명</option>
                      <option value="empRank">직책</option>
                      <option value="empDept">부서</option>
                  </select>
                  <input type="text" name="searchText">
                  <input type="submit" value="검색"  class="btn btn-primary float-right">
                </form>


                </p>
              </div>
            </div>
          </div>
          <!--상단검색 끝-->
            

          <div class="col-lg-5">

            


            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">사원목록</h3>
  
                <div class="card-tools">
                  <div class="input-group input-group-sm" style="width: 150px;">
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">
                    <div class="input-group-append">
                      <button type="submit" class="btn btn-default">
                        <i class="fas fa-search"></i>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
                <!--/사원 목록 해더-->
              
                <div class="card-body table-responsive p-0" style="height: 300px;">
                      
                   <table class="table table-head-fixed text-nowrap">
                    <thead border="1">
                      <tr>
                        <th>사원번호</th>
                        <th>성명</th>
                        <th>직급</th>
                        <th>부서</th>
                      </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${list}" var="n">
                           <tr style="cursor: pointer"  onclick="clickOutput();" class="listCheckTest">
                       	     <td class="searchNoKey">${n.resignNo}</td>
		                     <td>${n.resignEmpName}</td>
		                     <td>${n.resignEmpRank}</td>
		                   <td>${n.resignEmpDept}</td>
                          </tr>
                	 </c:forEach> 
                    </tbody>
                  </table>
                </div>
              </div>
            <!-- /.card -->


          </div>
          <!-- /.col-md-5 -->







          <div class="col-lg-7">


            <div class="card card-primary card-outline">
              <div class="card-header">
                <div class="card-tools">
                  <button class="btn btn-primary">급상여가져오기</button>
                  <button class="btn btn-primary">재계산</button>
                   <button class="btn btn-primary">저장</button>
                </div>

              </div>
              <div class="card-body">
                <table class="table table-bordered">
                  <tr>
                    <td bgcolor="eeeee">
                      주민번호
                    </td>
                    <td>

                                              </td>
                    <td bgcolor="eeeee">
                      주소
                    </td>
                    
                    
                    <td>
                      asdasdasd
                    </td>
                  </tr>
                  <tr>
                    <td bgcolor="eeeee"> 
                      확정급여형 퇴직연금제도 가입일
                    </td>
                    <td>
                      <input type="date">
                    </td>
                    <td bgcolor="eeeee">
                        귀속연도
                    </td>
                    <td>
                      <input type="date">
                      ~
                      <input type="date">
                    </td>
                  </tr>
                  <tr>
                    <td bgcolor="eeeee"ㄴㄴ>
                      퇴직사유
                    </td>
                    <td colspan="3">
                      <input type="checkbox" value="">정년퇴직
                      <input type="checkbox" value="">정리해고
                      <input type="checkbox" value="">자발적퇴직
                      <input type="checkbox" value="">입원퇴직
                      <input type="checkbox" value="">중간정산
                      <input type="checkbox" value="">기타
                    </td>
                  </tr>
                </table>
              </div>
              <!-- /.card-body -->
            </div>


            <div class="card card-primary card-outline">
              <div class="card-header">
                <h5 class="m-0">퇴직전 3개월 임금총액 계산내역</h5>
              </div>
              <div class="card-body">

                <table class="table table-bordered">
                  <thead>
                    <tr bgcolor="eeeee">
                      <td>근무처구분</td>
                      <td>근무처명</td>
                      <td>사업자등록번호</td>
                      <td>퇴직급여</td>
                      <td>비과세퇴직급여</td>
                      <td>과세대상퇴직급여(퇴직급여-비과세퇴직급여)</td>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td bgcolor="eeeee">최종</td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td bgcolor="eeeee">중간지급 등</td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                    <tr>
                      <td bgcolor="eeeee">정산</td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                      <td></td>
                    </tr>
                  </tbody>
                  
                </table>
                
              </div>
              <!-- /.card-body -->
            </div>



            <div class="card card-primary card-outline">
              <div class="card-header">
                <h5 class="m-0">퇴직전 1년간 상여 내역</h5>

              </div>
              <div class="card-body">
                <table class="table table-bordered">
                  <tr bgcolor="eeeee">
                    <td>구분</td>
                    <td>입사일</td>
                    <td>퇴사일</td>
                    <td>지급일</td>
                    <td>근속월수</td>
                    <td>제외월수</td>
                    <td>가산월수</td>
                    <td>중복월수</td>
                    <td>근속연수</td>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td bgcolor="eeeee">중간지급 근속연수</td>
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
                    <td bgcolor="eeeee">최종 근속연수</td>
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
                    <td bgcolor="eeeee">정산 근속연수</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                  </tr>
                </table>
              </div>
              <!-- /.card-body -->
            </div>



            <div class="card card-primary card-outline">
              <div class="card-header">
                <h5 class="m-0">퇴직소득세액 상세내역</h5>
              </div>
              <div class="card-body">
                <table class="table table-bordered">
                  <tr>
                    <td bgcolor="eeeee">일평균</td>
                    <td></td>
                    <td bgcolor="eeeee">일통상임금</td>
                    <td></td>
                    <td bgcolor="eeeee">퇴직금</td>
                    <td></td>
                  </tr>
                  <tr>
                    <td bgcolor="eeeee">퇴직소득세</td>
                    <td></td>
                    <td bgcolor="eeeee">퇴직지방소득세</td>
                    <td></td>
                    <td bgcolor="eeeee">지급액</td>
                    <td></td>
                  </tr>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
          


          </div>
          <!-- /.col-md-7 -->


        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


  <!-- Main Footer -->
  <footer class="main-footer">
    <!-- To the right -->
    <div class="float-right d-none d-sm-inline">
      Anything you want
    </div>
    <!-- Default to the left -->
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer>



  
</div>
<!-- ./wrapper -->
















  <!-- REQUIRED SCRIPTS -->

  <!-- jQuery -->
  <script src="${root}/resources/css/resign/plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="${root}/resources/css/resign/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="${root}/resources/css/resign/dist/js/adminlte.min.js"></script>
</body>
</html>