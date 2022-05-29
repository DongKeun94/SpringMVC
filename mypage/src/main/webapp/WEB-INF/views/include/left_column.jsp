<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%> 
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="${path}" class="brand-link">
      <img src="${path}/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light">Global SCM</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <c:if test="${empty login}">
	        <div class="image">
	          <img src="${path}/dist/img/user1-128x128.jpg" class="img-circle elevation-2" alt="User Image">
	        </div>
	        <div class="info">
                <%-- Status --%>
            	<a href="#"><i class="fa fa-circle text-danger"></i> Guest</a>
	        </div>
        </c:if>
        
        <c:if test="${not empty login}">
	        <div class="image">
	          <img src="${path}/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
	        </div>
	        <div class="info">
                <%-- Status --%>
            	<a href="#"><i class="d-block"></i> ${login.userName}</a>
	        </div>
        </c:if>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <!--li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                게시판(기본)
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${path}/article/write" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>게시물 쓰기</p>
                </a>
              </li>
              
              <li class="nav-item">
                <a href="${path}/article/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>게시물 목록</p>
                </a>
              </li>
            </ul>
          </li>
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                게시판(Paging)
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${path}/article/paging/write" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>게시물 쓰기</p>
                </a>
              </li>
              
              <li class="nav-item">
                <a href="${path}/article/paging/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>게시물 목록</p>
                </a>
              </li>
            </ul>
          </li-->
          
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                운항 스케줄
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${path}/schedule/ocean" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>해상 운송</p>
                </a>
              </li>
              
              <li class="nav-item">
                <a href="https://nlic.go.kr/nlic/transchFlight0010.action" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>항공 운송</p>
                </a>
              </li>
            </ul>
          </li-->
          
          <li class="nav-item has-treeview">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tachometer-alt"></i>
              <p>
                ORDER
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="${path}/article/paging/search/write" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>운송 요청</p>
                </a>
              </li>
              
              <li class="nav-item">
                <a href="${path}/article/paging/search/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>운송 요청 현황</p>
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