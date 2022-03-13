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
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<link rel="stylesheet"href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
  <style>
    .center {
      margin: auto;
      text-align: center;
    }
    .tb_salary1 {
      font-size: 10pt;
    }
    td, th {
      height: 30px;
    }
    .mon {
      height: 35px;
    }
    .right {
      text-align: right;
    }
    table {
      margin: auto;
      width: 1000px !important;
    }
    
	.tb_radius {
	  border-collapse: collapse !important;
	  border-radius: 5px !important;
 	  border-style: hidden !important;
	  box-shadow: 0 0 0 1px lightgray !important;
	}
	
	.radius {
	  border-radius: 5px !important;
	  border: 1px solid lightgray;
    }
  </style>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>공지사항</title>

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

          <h1><b>공지사항</b></h1>
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

        <table>
          <tr>
            <td>
              <div class="month left">
                <input class="mon radius" type="date" value="2022-03-25">　<b>~</b>　<input class="mon radius" type="date" value="2022-03-25">　
              <input type="text" class="mon radius">
              <input type="submit" class="btn btn-primary" value="검색">
                <br><br>
              </div>
            </td>
          </tr>
        </table>


        <div class="row center">
          <!-- <div class="col-lg-6"> -->



            <table border="1" class="table table-bordered table-hover tb_salary1 tb_radius">
              <thead>
                <tr>
                  <th width="30px"><input type="checkbox"></th>
                  <th width="50px">번호</th>
                  <th>제목</th>
                  <th width="100px">작성자</th>
                  <th width="100px">작성일</th>
                </tr>	
              </thead>
              <tbody>
              
                <c:forEach items="${list}" var="b">
					<tr>
						<td><input type="checkbox" class="checkbox-del" value="${b.noticeNo}"></td>
						<td>${b.noticeNo}</td>
						<td><b><a style="font-size: 12pt; color: black; text-decoration: none;" href="http://localhost:9999/hh/notice/detail/${b.noticeNo}">${b.title}</a></b></td>
						<td>${b.writer}</td>
						<td>${b.enrollDate}</td>
					</tr>
				</c:forEach>
                  
              </tbody>

            </table>



<table>
<tr>
<td>
		<!-- 페이지 start -->
		<br><br>
		<c:if test="${page.startPage != 1}"> <a href="${page.startPage - 1}">이전</a> </c:if>
		<c:forEach var="i" begin="${page.startPage}" end="${page.endPage}">
			<%-- <c:if test="${page.currentPage != i and i <= page.lastPage}"><a href="${root}/notice/list/${i}">${i}</a> &nbsp</c:if> --%>
			<c:if test="${page.currentPage != i and i <= page.lastPage}"><a href="${i}">${i}</a> &nbsp</c:if>
			<c:if test="${page.currentPage == i and i <= page.lastPage}">${i} &nbsp</c:if>
		</c:forEach>
		<c:if test="${page.endPage < page.lastPage }"> <a href="${page.endPage + 1}">다음</a> </c:if>
		<!-- 페이지 end -->
</td>
</tr>
</table>



            <table>
              <tr>
                <td>
                  <div class="right">
                    <br>
                    <a href="<%=request.getContextPath()%>/notice/insert" class="btn btn-primary">글쓰기</a>　
                    <button onclick="del();" class="btn btn-secondary">삭제</button>
                  </div>
                </td>
              </tr>
            </table>


          </div>
          
          <br><br>


<script type="text/javascript">
		
		//상단 체크박스 클릭하면 , 전체 체크박스 클릭되게
		let topCheckBox = document.querySelector('thead input[type=checkbox]');
		let delArr = document.getElementsByClassName('checkbox-del');
		
		topCheckBox.onchange = function(e){
			if(this.checked){
				for(let i = 0 ; i < delArr.length; ++i){
					delArr[i].checked = true;
				}
			}else{
				for(let i = 0 ; i < delArr.length; ++i){
					delArr[i].checked = false;
				}
			}
		}

		
		
		//삭제하기 버튼 눌렀을 때
		function del(){
			
			var alert = function(msg, type) {
		        swal({
		            title : '',
		            text : msg,
		            type : type,
		            timer : 1500,
		            customClass : 'sweet-size',
		            showConfirmButton : false
		        });
		    }

		    var confirm = function(msg, title, resvNum) {
		        swal({
		            title : title,
		            text : msg,
		            /* type : "error", */
		            showCancelButton : true,
		            confirmButtonClass : "btn-danger",
		            confirmButtonText : "예",
		            cancelButtonText : "아니오",
		            closeOnConfirm : false,
		            closeOnCancel : true
		        }, function(isConfirm) {
		            if (isConfirm) {
		               /*  swal('', '승인되었습니다.', "success"); */
		               
		            	//삭제할 번호들 가져오기
						let checkBoxList = $(".checkbox-del");
						
						let result = "";
						
						for(let i = 0 ; i < checkBoxList.length; ++i){
							if(checkBoxList[i].checked == true){
								console.log(checkBoxList[i].value);
								result += checkBoxList[i].value + ",";
							}
						}
						
					

						$.ajax({
							url : "<%=request.getContextPath()%>/notice/deleteCheckbox" ,
							data : { "noList" : result} ,
							type : 'post' ,
							success : function(data){
								console.log(data);
							},
							error : function(e){
								console.log(e);
							}
						});
						
						window.location.reload(); //새로고침
						window.location.reload(); //새로고침
		            }else{
		                /* swal('', '취소되었습니다.', "failed"); */
		            }

		        });
		    }

		        confirm('', '삭제하시겠습니까?');

			}

		
	</script>


          </div>
          <!-- /.col-md-6 -->
          <!-- <div class="col-lg-6">

222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222222

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
