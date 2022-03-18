<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Date nowTime = new Date();
	SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd(E)");
%>
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
  <!-- smarteditor2 -->
  <script type="text/javascript" src="${path}/resources/static/smarteditor/js/HuskyEZCreator.js" charset="utf-8"></script>
  <!-- swal -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
        <a href="${path}/appr/appr_form">
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
                  <a href="${path}/appr/reception" class="nav-link">
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
            <h1 class="m-0">전자결재</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="${path}/appr/home">Home</a></li>
              <li class="breadcrumb-item active">전자결재</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <div class="content">
      <div class="container-fluid">
      	<div class="detail_btn">
	        <div class="button_gp1">
	           <a id="act_draft" class="btn_tool" data-role="button">
	               <span class="ic_toolbar approval"></span>
	               <span class="reqAppr appr_form_text1">결재</span>
	           </a>
	           <a id="act_return" class="btn_tool" data-role="button">
	               <span class="ic_toolbar return"></span>
	               <span class="reqAppr">반려</span>
	           </a>
	           <a id="act_hold" class="btn_tool" data-role="button">
	               <span class="ic_toolbar delay"></span>
	               <span class="reqAppr">보류</span>
	           </a>
	           <a id="act_edit" class="btn_tool" data-role="button">
	               <span class="ic_toolbar modify"></span>
	               <span class="reqAppr">문서 수정</span>
	           </a>
	           <a id="act_edit_apprflow" class="btn_tool" data-role="button">
	                <span class="ic_toolbar info"></span>
	                <span class="reqAppr">결재 정보</span>
            	</a>
            	<a id="sendMail" class="btn_tool" data-role="button">
                    <span class="ic_toolbar mail"></span>
                    <span class="reqAppr">메일발송</span>
                </a>
	       </div>
	       <div class="button_gp2">
	       		<a href="${path}/appr/reception" id="act_list" class="btn_tool" data-role="button">
		            <span class="ic_toolbar list" title="목록"></span>
		            <span class="reqAppr">목록</span>
		 		</a>
		 		<a id="act_doc_print" class="btn_tool btn_print" data-role="button">
		            <span class="ic_toolbar print"></span>
		            <span class="reqAppr">인쇄</span>
        		</a>
	       </div>
         <hr>
       </div>
        <div class="appr_content">
          <div>
            <form action="" method="post" id="ApprForm">
              <div class="detail_header">
                ${approval.formName}
              </div>
              <div class="detail_body">
                <div class="form_table3_tr_td1">
                    결재
                </div>
                <div class="form_table3_tr_td2">
                    <div class="form_table3_tr_td2_header">${emp1.jobName}</div>
                    <div class="form_table3_tr_td2_body"></div>
                    <div class="form_table3_tr_td2_footer">${emp1.empName}</div>
                    <input type="hidden" name="apprNo1" value="${person.empNo}">
                </div>
                <div class="form_table3_tr_td2">
                    <div class="form_table3_tr_td2_header">${emp2.jobName}</div>
                    <div class="form_table3_tr_td2_body"></div>
                    <div class="form_table3_tr_td2_footer">${emp2.empName}</div>
                    <input type="hidden" name="apprNo2" value="${person1.empNo}">
                </div>
                <div class="form_table3_tr_td2">
                    <div class="form_table3_tr_td2_header">${emp3.jobName}</div>
                    <div class="form_table3_tr_td2_body"></div>
                    <div class="form_table3_tr_td2_footer">${emp3.empName}</div>
                    <input type="hidden" name="apprNo3" value="${person2.empNo}">
                </div>
                <div class="form_table3_tr_td2">
                    <div class="form_table3_tr_td2_header">${emp4.jobName}</div>
                    <div class="form_table3_tr_td2_body"></div>
                    <div class="form_table3_tr_td2_footer">${emp4.empName}</div>
                    <input type="hidden" name="apprNo4" value="${person3.empNo}">
                </div>
                <div class="form_table3_tr_td1" style="border-left: 0;">
                    합의
                </div>
                <div class="form_table3_tr_td2">
                    <div class="form_table3_tr_td2_header">${person4.jobName}</div>
                    <div class="form_table3_tr_td2_body"></div>
                    <div class="form_table3_tr_td2_footer">${person4.empName}</div>
                </div>
                <div class="form_table3_tr_td2">
                    <div class="form_table3_tr_td2_header">${person5.jobName}</div>
                    <div class="form_table3_tr_td2_body"></div>
                    <div class="form_table3_tr_td2_footer">${person5.empName}</div>
                </div>
                <div class="form_table3_tr_td2">
                    <div class="form_table3_tr_td2_header">${person6.jobName}</div>
                    <div class="form_table3_tr_td2_body"></div>
                    <div class="form_table3_tr_td2_footer">${person6.empName}</div>
                </div>
                <div class="form_table3_tr_td2">
                    <div class="form_table3_tr_td2_header">${person7.jobName}</div>
                    <div class="form_table3_tr_td2_body"></div>
                    <div class="form_table3_tr_td2_footer">${person7.empName}</div>
                </div>
              </div>
              <table class="info_table">
                <tbody>
                    <tr>
                        <td class="td1">기안자</td>
                        <td class="td2"><input type="text" value="${emp.empName}" style="border: 0;" readonly></td>
                    </tr>
                    <tr>
                        <td class="td1">소속</td>
                        <td class="td2"><input type="text" value="HH그룹" style="border: 0;" readonly></td>
                    </tr>
                    <tr>
                        <td class="td1">부서</td>
                        <td class="td2"><input type="text" value="${emp.deptName}" style="border: 0;" readonly></td>
                    </tr>
                    <tr>
                        <td class="td1">기안일</td>
                        <td class="td2"><input type="text" value="${approval.docDate}"  name="docDate" style="border: 0;" readonly></td>
                    </tr>
                </tbody>
              </table>
              <table class="info_table2">
                <tbody>
                    <tr class="form_table2_tr1">
                        <td class="form_table2_tr1_td1">시행일자</td>
                        <td class="form_table2_tr1_td2"><input type="text" value="${approval.effDate}" readonly></td>
                        <td class="form_table2_tr1_td1">협조부서</td>
                        <td class="form_table2_tr1_td3"><input type="text" readonly></td>
                    </tr>
                    <tr class="form_table2_tr2">
                        <td class="form_table2_tr2_td1">합의</td>
                        <td class="form_table2_tr2_td2" colspan="3"><input type="text" readonly></td>
                    </tr>
                    <tr class="form_table2_tr2">
                        <td class="form_table2_tr2_td1">제목</td>
                        <td class="form_table2_tr2_td2" colspan="3"><input type="text" name="docName" value="${approval.docName}" readonly></td>
                    </tr>
                    <tr class="form_table2_tr3">
                        <td class="form_table2_tr3_td" colspan="4">
                            <!-- <form action="insertStudentInfoForm" method="post"> -->
                            <div id="smarteditor">
                                <textarea name="docContent" id="editorTxt" 
                                        rows="17" cols="10" 
                                        placeholder="내용을 입력해주세요"
                                        style="width: 100%" readonly>
                                      ${approval.docContent}
                                      </textarea>
                            </div>
                            <!-- <input type="button" />
                            </form> -->
                        </td>
                    </tr>
                </tbody>
            </table>
            </form>
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
<!-- /wrapper -->

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

<!-- smarteditor2 -->
<script>
  let oEditors = []

  smartEditor = function() {
      nhn.husky.EZCreator.createInIFrame({
      oAppRef: oEditors,
      elPlaceHolder: "editorTxt",
      sSkinURI: "${path}/resources/static/smarteditor/SmartEditor2Skin.html",
      fOnAppLoad : function(){ //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용 
      oEditors.getById["editorTxt"].exec("PASTE_HTML", [""]); },
      fCreator: "createSEditor2"
      })
  }

  $(document).ready(function() {
      smartEditor()
  })
</script>
<script>
  $("#act_draft").click(function(){
    swal("결재 완료", "", "success").then((value) => {
        oEditors.getById["editorTxt"].exec("UPDATE_CONTENTS_FIELD", []);
        // $('#ApprForm').submit();
      });
  })
</script>
</body>
</html>
