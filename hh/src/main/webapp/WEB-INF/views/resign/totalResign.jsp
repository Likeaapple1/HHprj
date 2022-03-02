<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <c:set var="root" value="${pageContext.request.contextPath}" />
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
            <h1 class="m-0">퇴직금추계액관리</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">퇴직금추계액관리</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                기준연월 : <input type="date">
                <select name="" id="">
                  <option value="">성명</option>
                  <option value="">직급</option>
                  <option value="">부서</option>
                </select>
                <input type="text">
                <input type="submit" value="검색">
              </div>
              <div class="card-body">
                <table id="example1" data-widget="10%" class="table table-bordered table-striped">
                  <thead>
                  <tr bgcolor="eeeee">
                    <th>사원번호</th>
                    <th>성명</th>
                    <th>직급</th>
                    <th>부서</th>
                    <th>입사일</th>
                    <th>퇴직일</th>
                    <th>최근3개월 급여총액</th>
                    <th>년상여총액</th>
                    <th>기준급여</th>
                    <th>근속일수</th>
                    <th>퇴직급추계액</th>
                  </tr>
                  </thead>
                  <tbody>
                    <c:forEach items="${list}" var="n">
                    <tr>
                      <td>${n.no}</td>
                      <td>${n.userName}</td>
                      <td>${n.userRank}</td>
                      <td>${n.userDept}</td>
                      <td>${n.hireDate}</td>
                      <td>${n.totalDate}</td>
                      <td>${n.monthsPay}</td>
                      <td>${n.yearBonus}</td>
                      <td>${n.bonus}</td>
                      <td>${n.workDays}</td>
                      <td>${n.resignPay}</td>
                    </tr>
                    </c:forEach> 
                    </tbody>
                    <tr></tr>
                  <tfoot>
                    <tr>
                      <td>합계</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>${s.monthsTotalpay}</td>
                        <td>${s.yearTotalBonus}</td>
                        <td>${s.bonusTotal}</td>
                        <td>${s.resignTotalPay}</td>
                      </tr>
                  </tfoot>
                </table>
              </div>
              <!-- /.card -->
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
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
    