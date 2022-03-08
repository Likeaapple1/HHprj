<%@page import="com.hh.hh.member.entity.MemberDto"%>
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
<html lang="ko">
<head>
  <style>
    .tb_salary1 {
      font-size: 10pt;
    }
    .month {
      width: 300px;
    }
    .center {
      text-align: center;
    }
    .left {
      text-align: left;
    }
    .right {
      text-align: right;
    }
    .mon {
      height: 35px;
    }
    th, td {
      height: 30px;
    }
    th {
      background-color: rgb(241, 241, 241) !important;
      width: 130px;
    }
    .th_g {
      background-color: rgb(230, 230, 230) !important;
    }
    /* .tb_emp {
      height: 400px;
    } */
    .tb_sal {
      width: 700px !important;
    }
    .div1 {
      /* border: 1px solid red; */
      width: 500px !important;
    }
    .div2 {
      /* border: 1px solid red; */
      width: 750px !important;
    }
    .scr {
      min-height: 0px;
      max-height: 400px;
      overflow-y: scroll;
    }
    .radius {
	  border-radius: 5px !important;
	  border: 1px solid lightgray;
    }
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>급상여입력</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="${path}/resources/css/salary/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${path}/resources/css/salary/dist/css/adminlte.min.css">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
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

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">


<h1><b>급상여입력</b></h1>
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
        <div class="row center">


          <div class="month left">
            <input class="mon radius" type="month" value="2022-03">　
            <select name="emp" class="mon radius">
              <option value="emp1" label="사번" selected></option>
              <option value="emp2" label="성명"></option>
              <option value="emp3" label="직급"></option>
              <option value="emp4" label="부서"></option>
          </select>
          <input type="text" class="mon radius">
          <a href="#" class="btn btn-primary">조회</a>
            <br><br>
          </div>

          <div class="col-lg-6 div1">

            <form action="">


<!--
                  <th>기본급</th>
                  <th>통상시급</th>
                  <th>잔업수당</th>
                  <th>특근수당</th>
                  <th>근속수당</th>
                  <th>직책수당</th>
                  <th>연차수당</th>
                  <th>자격수당</th>
                  <th>중식비</th>
                  <th>교통비(유류비)</th>
                  <th>상여금</th>
                  <th>특별수당</th>
                  <th>급여총액</th>
                  <th>4대보험</th>
                  <th>소득세,지방소득세</th>
                  <th>실지급액</th>
-->





<div class="scr">

  <table border="1" class="table table-hover table-bordered tb_salary1">
    <thead>
      <tr>
        <th>사번</th>
        <th>성명</th>
        <th>직급</th>
        <th>부서</th>
      </tr>	
    </thead>
    <tbody>
    
        	<%
			List<MemberDto> memberList = (List)request.getAttribute("memberList");
			for(MemberDto m : memberList){
			%>
				<tr>
					<td><%=m.getEmpNo()%></td>
					<td><b><a href="input/<%=m.getEmpNo()%>" style="color: black; text-decoration: none;"><%=m.getEmpName()%></a></b></td>
					<td><%=m.getEmpjobCode()%></td>
					<td><%=m.getManagerDept()%></td>
				</tr>
			<%
			}
			%>

    </tbody>
  </table>

</div>








</form>

          </div>
          <!-- /.col-md-6 -->
          <div class="col-lg-6 div2">

            <form action="">











            <table border="1" class="table table-bordered tb_salary1 tb_sal">
              <tr>
                <th colspan="2" class="th_g">지급항목</th>
                <th colspan="2" class="th_g">공제항목</th>
              </tr>
              <tr>
                <th>기본급${data.empNo}</th>
                <td><input class="radius" type="text" placeholder="(근무일수*통상시급)+주휴수당"></td> <!-- 직접설정 -->
                <th>소득세</th>
                <td><input class="radius" type="text"></td>
              </tr>
              <tr>
                <th>잔업수당</th>
                <td><input class="radius" type="text" placeholder="잔업일수*(통상시급*1.5)"></td>
                <th>지방 소득세</th>
                <td><input class="radius" type="text" placeholder="소득세의 10%"></td>
              </tr>
              <tr>
                <th>특근수당</th>
                <td><input class="radius" type="text" placeholder="휴일근무일수*(통상시급*1.5)"></td>
                <th>고용보험</th>
                <td><input class="radius" type="text"></td>
              </tr>
              <tr>
                <th>근속수당</th>
                <td><input class="radius" type="text"></td> <!-- 근속일수가 *일 이상이면 *원 지급 --> <!-- 직접설정 -->
                <th>건강보험</th>
                <td><input class="radius" type="text"></td>
              </tr>
              <!-- <tr>
                <th>직책수당</th>
                <td><input class="radius" type="text" placeholder="직급별수당"></td> 인턴/사원/대리/차장/과장/부장... 직접설정
                <th>국민연금</th>
                <td><input class="radius" type="text"></td>
              </tr> -->
              <tr>
                <th>연차수당</th>
                <td><input class="radius" type="text"></td> <!-- 미사용연차를 통상시급으로 환산 -->
                <th>국민연금</th>
                <td><input class="radius" type="text"></td>
              </tr>
              <!-- <tr>
                <th>자격수당</th>
                <td><input class="radius" type="text" placeholder="자격증별수당"></td> 직접설정
                <th>기타</th>
                <td><input class="radius" type="text"></td>
              </tr> -->
              <tr>
                <th>중식비</th>
                <td><input class="radius" type="text" placeholder="근무일수*일일중식비"></td> <!-- 직접설정 -->
                <th>기타</th>
                <td><input class="radius" type="text"></td>
              </tr>
              <tr>
                <th>교통비(유류비)</th>
                <td><input class="radius" type="text" placeholder="근무일수*일일교통비"></td> <!-- 직접설정 -->
                <th></th>
                <td></td>
              </tr>
              <tr>
                <th>상여금</th>
                <td><input class="radius" type="text"></td>
                <th></th>
                <td></td>
              </tr>
              <tr>
                <th>특별수당</th>
                <td><input class="radius" type="text"></td>
                <th></th>
                <td></td>
              </tr>

              </tbody>
            </table>




<div class="right">
  <br><br>
  <a href="#" class="btn btn-primary">저장</a>　<a href="#" class="btn btn-secondary">취소</a>
  <br><br><br>
</div>


</form>
              </div>
            </div>
          </div>
          <!-- /.col-md-6 -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
    <div class="p-3">
      <h5>Title</h5>
      <p>Sidebar content</p>
    </div>
  </aside>
  <!-- /.control-sidebar -->

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
<script src="${path}/resources/css/salary/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${path}/resources/css/salary/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${path}/resources/css/salary/dist/js/adminlte.min.js"></script>
</body>
</html>
