<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var = "path" value = "${pageContext.request.contextPath}">
</c:set>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="${path}/resources/css/salary/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="${path}/resources/css/salary/dist/css/adminlte.min.css">

<!-- 부트스트랩 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.css">
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.js"></script>
<script type='text/javascript' src='${path}/resources/js/gcal.js'></script>

 <!-- jquery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- bootstrap 4 -->
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.10.0/css/bootstrap-select.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
   tr:{cursor:auto;}
</style>
<body>
<!-- 모달 -->
  <div class="modal fade" id="myModal" role="dialog"> <!-- 사용자 지정 부분① : id명 -->
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">근태 상세</h4> <!-- 사용자 지정 부분② : 타이틀 -->
          <button type="button" class="close" data-dismiss="modal">×</button>
        </div>        
        <div class="modal-body">
        <!-- 사용자 지정 부분③ : 텍스트 메시지 -->
        <form action = "" method = "post">
        <table class="table table-borderless">
          <tbody>
            <tr>
               <th>부서</th>
              <td><p id = "dept_name"></td>
            </tr>
            <tr>
               <th>직급</th>
              <td><p id = "job_name"></td>
            </tr>
            <tr>
               <th>사원 이름</th>
              <td><p id = "emp_name"></td>
            </tr>
            <tr>
              <td><input type = "hidden" id = "att_no" value = "att_no"></td>
            </tr>
            <tr>
               <th>업무 일자</th>
              <td><p id = "att_str"></td>
            </tr>
            <tr>
               <th>근무 형태</th>
               <td>
                <p id = "att_work_form">
               </td>
            </tr>
            <tr>
               <th>업무 시작</th>
               <td><p id = "att_str_date"></td>
            </tr>
            <tr>
              <th>업무 종료</th>
               <td> <p id = "att_end_date"></td>
            </tr>
            <tr>
              <th>총근무 시간</th>
               <td> <p id = "att_total"></td>
            </tr>
            <tr>
              <th style = "vertical-align:middle">수정 사유</th>
               <td> 
               <textarea rows="5" cols="25" id = "att_content" readonly></textarea>
            </td>
            </tr>
            <tr>
              <th>결재 여부</th>
               <td> 
                  <select id ="att_select">
                     <option value = "승인">승인</option>
                     <option value = "반려">반려</option> 
                  </select>
               </td>
            </tr>
            <tr>
              <th>사유</th>
               <td><input type = "text" value = "" name = "att_content_reason" id = "att_content_reason"></td>
            </tr>
          </tbody> 
         </table>
         </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn btn-default" id = "submit" data-dismiss="modal">수정 </button>
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
        </div>
      </div>
    </div>
  </div>

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
      <!-- <img src="dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8"> -->
      <span class="brand-text font-weight-light">Hi Hello</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <!-- <img src="#" class="img-circle elevation-2" alt="User Image"> -->
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
                <a href="${path}/attendance/All" class="nav-link">
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
                <a href="${path}/history" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    퇴직 업무
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/receipt"  class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>
                    퇴직급여 입력
                  </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="${path}/totalresign" class="nav-link">
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

          <h1><b>근태 현황</b></h1>
          <br><br>
          <hr>

          <div class="card card-primary card-outline">
             <div class="card-body">
               <h5 class="card-title"></h5>
<h1>근태 수정 관리</h1>
   <table class="table table-hover">
    <thead>
      <tr>
         <th>부서</th>
         <th>직급</th>
         <th>사원 이름</th>
         <th>근태 번호</th>
         <th>업무 일자</th>
         <th>근무 상태</th>
         <th>업무 시작</th>
         <th>업무 종료</th>
         <th>수정 사유</th>
         <th>결재 여부</th>
      </tr>
    </thead>
    <tbody>

    <c:forEach items="${list}" var = "l">
         <tr onclick = "AttInfo(this)" data-toggle="modal" href="#myModal">
            <td>${l.deptName}</td>
            <td>${l.jobName}</td>
            <td>${l.empName}</td>
            <td style = "display:none">${l.attNo}</td>
            <td>${l.toDay}</td>
            <td>${l.workForm}</td>
            <td>${l.start}</td>
            <td>${l.end}</td>
            <td>${l.total}</td>
            <td>${l.attContent}</td>
            <td>${l.attContentYn}</td>
         </tr>
      </c:forEach>
    </tbody> 
   </table>
   <br>
<iframe src="${path}/attendance/setupdateContent" width="100%" height="700px%">
   </iframe> 


          </div><!-- /.col -->
          <div class="col-sm-6">

          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->

  <!-- /.content-wrapper -->

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->

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
<script type="text/javascript">
/*    모달창 띄우기 */
/*    모달창 띄우기 */
function AttInfo(clicked_element){
   let row_td = clicked_element.getElementsByTagName("td");
   let modal = document.getElementById("myModal");
   
   document.getElementById("dept_name").innerHTML = row_td[0].innerHTML;
   document.getElementById("job_name").innerHTML = row_td[1].innerHTML;
   document.getElementById("emp_name").innerHTML = row_td[2].innerHTML;
   document.getElementById("att_no").value = row_td[3].innerHTML;
   document.getElementById("att_str").innerHTML = row_td[4].innerHTML;
   document.getElementById("att_work_form").innerHTML = row_td[5].innerHTML;
   document.getElementById("att_str_date").innerHTML = row_td[6].innerHTML;
   document.getElementById("att_end_date").innerHTML = row_td[7].innerHTML;
   document.getElementById("att_total").innerHTML = row_td[8].innerHTML;
   document.getElementById("att_content").innerHTML = row_td[9].innerHTML;
   document.getElementById("att_content_yn").innerHTML = row_td[10].innerHTML;
   document.getElementById("att_content_reason").innerHTML = row_td[11].innerHTML;
   modal.style.display = "block";
} 

   
   function modalclose(){
      window.location.reload();
   }
   
   $(document).ready(function(){
      $('#submit').click(function(){   //submit 버튼을 클릭하였을 때
         let attno = $('#att_no').val();  //폼의 이름 값을 변수 안에 담아줌
         let attselect = $("#att_select option:selected").val();
         let attreason = $("#att_content_reason").val();
         console.log(attno);
         console.log(attselect);
         console.log(attreason);
         $.ajax({
            type:'post',   //post 방식으로 전송
            url:"${root}/attendance/attstatus/adminupdate",   //데이터를 주고받을 파일 주소
            data:{attno, attreason, attselect}, //위의 변수에 담긴 데이터를 전송해준다.
            success : function(data){  //파일 주고받기가 성공했을 경우. data 변수 안에 값을 담아온다.
                  modalclose();
            }
         });
      });
   });
</script>

</script>


</html>
