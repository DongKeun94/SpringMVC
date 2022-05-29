<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%> 
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="${path}" class="nav-link">Home</a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="mailto:donggen94@naver.com" class="nav-link">Contact</a>
      </li>
    </ul>

    <!-- Right navbar links -->
     <ul class="navbar-nav ml-auto">
	     <c:if test="${not empty login}">
              <li class="nav-item dropdown user user-menu">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <img src="${path}/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                      <span class="hidden-xs">${login.userName}</span>
                  </a>
                  <ul class="dropdown-menu">
                      <li class="user-header">
                          <img src="${path}/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                          <p>
                              <small>
                                  가입일자 : <fmt:formatDate value="${login.userJoinDate}" pattern="yyyy-MM-dd"/>
                              </small>
                              <small>
                                  최근로그인일자 : <fmt:formatDate value="${login.userLoginDate}" pattern="yyyy-MM-dd"/>
                              </small>
                          </p>
                      </li>
                      <li class="user-footer">
                          <div class="float-left">
                              <a href="${path}/user/profile" class="btn btn-default btn-flat"><i
                                      class="fa fa-info-circle"></i><b> 내 프로필</b></a>
                          </div>
                          <div class="float-right">
                              <a href="${path}/user/logout" class="btn btn-default btn-flat"><i
                                      class="glyphicon glyphicon-log-out"></i><b> 로그아웃</b></a>
                          </div>
                      </li>
                  </ul>
              </li>
              </c:if>
              <c:if test="${empty login}">
              <li class="nav-item dropdown user user-menu">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                      <img src="${path}/dist/img/user1-128x128.jpg" class="user-image" alt="User Image">
                      <span class="hidden-xs">회원가입 또는 로그인</span>
                  </a>
                  <ul class="dropdown-menu">
                      <li class="user-header">
                          <img src="${path}/dist/img/user1-128x128.jpg" class="img-circle" alt="User Image">
                          <p>
                              <b>회원가입 또는 로그인해주세요</b>
                              <small></small>
                          </p>
                      </li>
                      <li class="user-footer">
                          <div class="float-left">
                              <a href="${path}/user/register" class="btn btn-default btn-flat"><i
                                      class="fas fa-user-plus"></i><b> 회원가입</b></a>
                          </div>
                          <div class="float-right">
                              <a href="${path}/user/login" class="btn btn-default btn-flat"><i
                                      class="glyphicon glyphicon-log-in"></i><b> 로그인</b></a>
                          </div>
                      </li>
                  </ul>
              </li>
              </c:if>
          </ul>
  </nav>