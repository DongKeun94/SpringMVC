<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html lang="en">
<%@ include file="../include/head.jsp" %>
<body class="hold-transition sidebar-mini">
<div class="wrapper">

  <!-- Navbar -->
  <%@ include file="../include/main_header.jsp" %>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <%@ include file="../include/left_column.jsp" %>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Starter Page</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="${path}">Home</a></li>
              <li class="breadcrumb-item active">Starter Page</li>
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
        <div class="col-md-5">
            <div class="card card-primary card-outline">
                <div class="card-body box-profile">

                    <h3 class="profile-username text-center">${login.userName}</h3>
                    <ul class="list-group list-group-unbordered mb-5">
                        <li class="list-group-item"><b>아이디</b> <a
                                class="float-right">${login.userId}</a></li>
                        <li class="list-group-item"><b>이메일</b> <a
                                class="float-right">${login.userEmail}</a></li>
                        <li class="list-group-item"><b>가입일자</b> <a
                                class="float-right"> <fmt:formatDate
                                value="${login.userJoinDate}" pattern="yyyy-MM-dd" />
                        </a></li>
                        <li class="list-group-item"><b>최근 로그인 일자</b> <a
                                class="float-right"> <fmt:formatDate
                                value="${login.userLoginDate}" pattern="yyyy-MM-dd" />
                        </a></li>
                        
                    </ul>
                </div>
                <div class="card-footer text-center">
                    <a href="${path}/user/modify" class="btn btn-primary btn-xs"> 
                       <i class="fa fa-info-circle">
                        회원정보 수정</i>
                    </a> 
                </div>
            </div>
        </div>


        
  <div class="col-md-7">
    <div class="card">
        <div class="nav-tabs-custom">
            <div class="card-header p-2">
                <ul class="nav nav-pills">
                    <li class="nav-item">
                        <a class="nav-link active" href="#myPosts" data-toggle="tab">
                            <i class="fas fa-pencil-square-o"></i> 나의 게시물
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#myReplies" data-toggle="tab">
                            <i class="fas fa-comment-o"></i> 나의 댓글
                        </a>
                    </li>
                </ul>
            </div>
            <div class="card-body">
                <div class="tab-content">
                    <div class="active tab-pane" id="myPosts">
                        <table id="myPostsTable"
                               class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th style="width: 10%">번호</th>
                                <th style="width: 70%">제목</th>
                                <th style="width: 20%">작성일자</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="articleVO" varStatus="i"
                                       items="${userBoardList}">
                                <tr>
                                    <td>${i.index + 1}</td>
                                    <td><a
                                            href="${path}/article/paging/search/read?article_no=${articleVO.article_no}">
                                        <c:choose>
                                            <c:when test="${fn:length(articleVO.title) > 30}">
                                                <c:out value="${fn:substring(articleVO.title, 0, 29)}" />....
                                            </c:when>
                                            <c:otherwise>
                                                <c:out value="${articleVO.title}" />
                                            </c:otherwise>
                                        </c:choose>
                                    </a></td>
                                    <td><fmt:formatDate pattern="yyyy-MM-dd"
                                                        value="${articleVO.regDate}" /></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane" id="myReplies">
                        <table id="myRepliesTable"
                               class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th style="width: 10px">번호</th>
                                <th style="width: 250px">게시글 제목</th>
                                <th style="width: 250px">댓글 내용</th>
                                <th style="width: 150px">작성일자</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="userReply" varStatus="i"
                                       items="${userReplies}">
                                <tr>
                                    <td>${i.index + 1}</td>
                                    <td><a
                                            href="${path}/article/paging/search/read?article_no=${userReply.articleVO.article_no}">
                                        <c:choose>
                                            <c:when
                                                    test="${fn:length(userReply.articleVO.title) > 10}">
                                                <c:out
                                                        value="${fn:substring(userReply.articleVO.title, 0, 9)}" />....
                                            </c:when>
                                            <c:otherwise>
                                                <c:out value="${userReply.articleVO.title}" />
                                            </c:otherwise>
                                        </c:choose>
                                    </a></td>
                                    <td><c:choose>
                                        <c:when test="${fn:length(userReply.reply_text) > 10}">
                                            <c:out
                                                    value="${fn:substring(userReply.reply_text, 0, 9)}" />....
                                        </c:when>
                                        <c:otherwise>
                                            <c:out value="${userReply.reply_text}" />
                                        </c:otherwise>
                                    </c:choose></td>
                                    <td><fmt:formatDate pattern="yyyy-MM-dd"
                                                        value="${userReply.reg_date}" /></td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                  
                </div>
            </div>

        </div>
    </div>
</div>
        
        
        
        
        
    </div>
</div>
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
  <%@ include file="../include/main_footer.jsp" %>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<%@ include file="../include/plugin_js.jsp" %>

</body>
</html>
