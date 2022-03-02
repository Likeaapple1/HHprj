  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<c:set var="root" value="${pageContext.request.contextPath}"/>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Starter</title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="${root}/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="${root}/dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

       <!-- Navbar -->
  <%@ include file="/WEB-INF/views/include/navbar.jsp" %>

  <!-- Main Sidebar Container -->
  <%@ include file="/WEB-INF/views/include/sidebar.jsp" %>
 

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">퇴직소득원천징수 영수증</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">퇴직소득원천징수</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <sesssion class="session">
      <div class="card">
        <div class="card-body">
          <div class="row">
            <div class="col-12">
              <!-- <h5 class="card-title">Card title</h5> -->

              <span> 귀속연열 : <input type="date" id="searchDate"> 
                <select id="selectBox">
                    <option value="empName">성명</option>
                    <option value="empDept">부서</option>
                </select>
                <input type="text" id="saerchText">
                 <input type="submit" value="검색">
                </span>

              <!-- <a href="#" class="card-link">Card link</a>
              <a href="#" class="card-link">Another link</a> -->
            </div>
          </div>
        </div>
      </div>
            <!--상단검색-->

            <!--사원 조회-->
            <div class="row">
              <div class="col-md-6">
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
                        <thead>
                          <tr>
                            <th><input type="checkbox"></th>
                            <th>사원번호</th>
                            <th>성명</th>
                            <th>직급</th>
                            <th>부서</th>
                            <th>구분</th>
                          </tr>
                        </thead>
                        <tbody>
                          <c:forEach items="${list}" var="n">
                            <tr>
                              <td><input type="checkbox" value="${n.no}"> </td>
                              <td>${n.empNo}</td>
                              <td>${n.empName}</td>
                              <td>${n.empRank}</td>
                              <td>${n.empDept}</td>
                              <td>${n.resignType}</td>
                            </tr>
                          </c:forEach>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
                    <!-- /.card-body -->
                  
                <!-- /.card -->
              <div class="col">
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

                
                <!-- /.card -->
              <div class="col">
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
                <!-- /.card -->
              </div>

              <!-- /.card -->
              <div class="col">
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
                <!-- /.card -->
              </div>

              <!-- /.card -->
              <div class="col">
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
                <!-- /.card -->
              </div>
            </div>
            </div>
          </div>
        </div>

      </div>
     </div> 

      </div>
    </session>
    <!--session end-->
    
 
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
<script src="${root}/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="${root}/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="${root}/dist/js/adminlte.min.js"></script>
</body>
</html>
  