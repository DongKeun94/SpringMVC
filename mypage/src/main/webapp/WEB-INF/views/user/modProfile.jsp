<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<%@ include file="../include/head.jsp" %>
<body class="hold-transition register-page">
<div class="register-box">
  <div class="register-logo">
    <a href="${path}/"><b>Admin</b>LTE</a>
  </div>

  <div class="card">
    <div class="card-body register-card-body">
      <p class="login-box-msg">회원정보 수정</p>

      <form action="${path}/user/modify" method="post">
        <div class="input-group mb-3">
          <input type="text" name="userId" class="form-control" value="${login.userId}" readonly>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-exclamation"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="text" name="userName" class="form-control" value="${login.userName}">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-user"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="email" name="userEmail" class="form-control" value="${login.userEmail}">
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block">수정</button>
          </div>
        </div>
      </form>

      <a href="${path}/user/profile" class="text-center">수정 취소</a>
    </div>
    <!-- /.form-box -->
  </div><!-- /.card -->
</div>
<!-- /.register-box -->

<%@ include file="../include/plugin_js.jsp" %>
<script>
    $(function () {
        $('input').iCheck({
            checkboxClass: 'icheckbox_square-blue',
            radioClass: 'iradio_square-blue',
            increaseArea: '20%' // optional
        });
    });
</script>
</body>
</html>
