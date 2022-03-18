<%@page import="com.hh.hh.salary.entity.PayrollDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <style>
    .center {
      margin: auto;
      text-align: center;
    }
    .t1 {
      border-top: 2px solid;
      border-left: 2px solid;
      border-right: 2px solid;
      border-bottom: 2px solid;
    }
    .th2{
      width: 150px;
    }
    .left {
      text-align: left;
      border: 1px ;
    }
    table {
      width: 800px;
    }
    .mon {
      height: 35px;
    }
    .radius {
	  border-radius: 5px !important;
	  border: 1px solid lightgray;
    }
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>급여명세서</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="${path}/resources/css/salary/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${path}/resources/css/salary/dist/css/adminlte.min.css">

  <!-- 부트스트랩 -->
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script> -->

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

          <li class="nav-header"></li>
          <li class="nav-item">
            <a href="${path}/notice/list" class="nav-link">
              <i class="nav-icon fas fa-book"></i>
              <p>
                공지 사항
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="pages/gallery.html" class="nav-link">
              <i class="nav-icon far fa-calendar-alt"></i>
              <p>
                캘린더
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="pages/kanban.html" class="nav-link">
              <i class="nav-icon fas fa-columns"></i>
              <p>
                쪽지
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <p>
                근태
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${path}/attendance/home" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>근태관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/attendance/attstatus" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>출퇴근 현황</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/attendance/admin/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>전사 출퇴근 현황</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/attendance/admin/setatt" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>출퇴근 변경 사항</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <p>
                연차
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/examples/invoice.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>연차관리</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/examples/profile.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>연차신청현황</p>
                </a>
              </li>>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <p>
                전자 결재
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${path}/appr/home" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    전자 결재
                    <i class="fas fa-angle-left right"></i>
                  </p>
                </a>
              </li>
              </ul>
			<li class="nav-item"> <!-- 급여 -->
            <a href="#" class="nav-link">
              <p>
                급여
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${path}/salary/payroll" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    급여이체현황
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/salary/payslip" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    급여명세서
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/salary/setting" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>급여설정</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/salary/input" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>급상여입력</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/salary/email" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    급여명세서 이메일 발송
                  </p>
                </a>
              </li>
            </ul>
            <li class="nav-item">
            <a href="#" class="nav-link">
              <p>
                퇴직금
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${path}/resign/history" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    퇴직 업무
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/resign/input"  class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    퇴직급여 입력
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/resign/receipt" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>퇴직소득원천징수</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/resign/totalresign" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>퇴직추계액관리</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <p>
                인사관리
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${path}/insa/home" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    인사기록카드
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/insa/organization” " class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    부서 조직도
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/insa/certificate”" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>증명서 발급</p>
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

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
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
        <div class="row">
          <!-- <div class="col-lg-6"> -->

        <div class="center">
        
<form action="/hh/salary/payslip/search" method="post">
          <div class="month left">
            <input name="month" class="mon radius" type="month">
            <input hidden name="empNo" type="text" value="${loginUser.empNo}">
            　<input type="submit" class="btn btn-primary" value="조회"><br><br><br>
          </div>
</form>          

<form method="post">

<c:forEach items="${Userlist}" var="p">          
          <h4>
          <b>
            급 여 지 급 명 세 서<br><br>
          </b>
        </h4>
        <h5><b><u>${p.payrollDate}</u></b></h5>
<br><br>
          <table class="center" border="1">
            <tr>
              <th>소속</th>
              <th>성명</th>
              <th>입사일</th>
              <th>직급</th>
            </tr>
            <tr>
              <td>　${p.deptName}　</td>
              <td>　${p.empName}　</td>
              <td>　${p.empenrollDate}　</td>
              <td>　${p.jobName}　</td>
            </tr>
          </table>
<br><br>
<p class="left"><b>1. 실 지급액</b></p>
          <table class="center t1" border="1">
            <tr>
              <th>지급 합계</th>
              <th>공제 합계</th>
              <th>실 수령액</th>
            </tr>
            <tr>
              <td>　${p.totalSalary}　</td>
              <td>　${p.ehntl}　</td>
              <td>　${p.netSalary}　</td>
            </tr>
          </table>
<br><br>
          <p class="left"><b>2. 지급 내역</b></p>
          <table class="center" border="1">
            <tr>
              <th colspan="2">지급항목</th>
              <th colspan="2">공제항목</th>
            </tr>
            <tr>
              <th class="th2">기본급</th>
              <td>${p.basicSalary}</td>
              <th class="th2">소득세</th>
              <td>${p.tax}</td>
            </tr>
            <tr>
              <th class="th2">잔업수당</th>
              <td>${p.overtimeAllowance}</td>
              <th class="th2">지방 소득세</th>
              <td>${p.localIncomeTax}</td>
            </tr>
            <tr>
              <th class="th2">특근수당</th>
              <td>${p.holidayAllowance}</td>
              <th class="th2">고용보험</th>
              <td>${p.employmentInsurance}</td>
            </tr>
            <tr>
              <%-- <th class="th2">근속수당</th>
              <td>${p.longServiceAllowance}</td> --%>
              <th class="th2">연차수당</th>
              <td>${p.annualLeaveAllowance}</td>
              <th class="th2">건강보험</th>
              <td>${p.healthInsurance}</td>
            </tr>
            <tr>
			  <th class="th2">중식비</th>
              <td>${p.mealExpenses}</td>
              <th class="th2">국민연금</th>
              <td>${p.nationalPension}</td>
            </tr>
            <tr>
              <th class="th2">교통비(유류비)</th>
              <td>${p.transportationExpenses}</td>
              <th class="th2"></th>
              <td>　</td>
            </tr>
            <tr>
              <th class="th2">상여금</th>
              <td>${p.bonus}</td>
              <th class="th2"></th>
              <td>　</td>
            </tr>
            <tr>
              <th class="th2">특별수당</th>
              <td>${p.specialAllowance}</td>
              <th class="th2"></th>
              <td>　</td>
            </tr>
            <tr>
              <th class="th2"></th>
              <td>　</td>
              <th class="th2"></th>
              <td>　</td>
            </tr>
            <tr>
              <th class="th2"></th>
              <td>　</td>
              <th class="th2"></th>
              <td>　</td>
            </tr>
            <tr>
              <th class="th2"></th>
              <td>　</td>
              <th class="th2"></th>
              <td>　</td>
            </tr>

          </table>

<br><br>
          ${p.payrollDate}
<br><br>
          <!-- <h5><b>㈜○○○ 대표이사 ○○○</b></h5> -->
<br><br><br><br><br>

</c:forEach>

          
        </div>
      </div>


          </div>
          <!-- /.col-md-6 -->
          <!-- <div class="col-lg-6">

              </div> -->
            <!-- </div>
          </div> -->
          <!-- /.col-md-6 -->
        <!-- </div> -->
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <!-- 폼 -->
</form>
  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
      <h5>Title</h5>
      <p>Sidebar content</p>
    </div>
  </aside>
  <!-- /.control-sidebar -->

  
</div>

<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- fontawesome -->
<script src="https://kit.fontawesome.com/60d2b52e19.js" crossorigin="anonymous"></script>
<!-- jQuery -->
<script src="${path}/resources/css/insa/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${path}/resources/css/insa/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${path}/resources/css/insa/dist/js/adminlte.min.js"></script>
</body>
</html>
