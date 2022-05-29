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
            <h1 class="m-0 text-dark"> Ocean !</h1>
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
          <div class="col-lg-6">
            <div class="card">
            
            <div class="card card-primary card-outline">
            	<div class="card-body">
	                <h5 class="card-title">HMM</h5>
	                <p class="card-text">
	                <img src="${path}/dist/img/hmm.jpg">
	                  ( 미주,유럽,중동 )
	                </p>
	                
	                <a href="http://www.hmm21.com/cms/company/korn/index.jsp" class="card-link">Schedule link</a>
	                <a href="https://www.hmm21.com/cms/business/ebiz/tariff/tariff/index.jsp" class="card-link">Rate link</a>
	              </div>
	            </div>
            </div>
              

            <div class="card card-primary card-outline">
              <div class="card-body">
                <h5 class="card-title">Maersk</h5>
                <p class="card-text">
                <img src="${path}/dist/img/maersk.jpg">
                (유럽,아프리카,중동)
                </p>
                <a href="https://www.maersk.com/schedules/pointToPoint" class="card-link">Schedule link</a>
                <a href="https://www.maersk.com/rules-lookup/" class="card-link">Rate link</a>
              </div>
            </div><!-- /.card -->
            
            <div class="card card-primary card-outline">
              <div class="card-body">
                <h5 class="card-title">고려해운(KMTC)</h5>
                <p class="card-text">
                <img src="${path}/dist/img/kmtc.jpg">
                  (중국,동남아,일본)
                </p>
                <a href="http://www.ekmtc.com/" class="card-link">Schedule link</a>
                <a href="http://www.ekmtc.com/CMBA300/popupLocalCharge.do" class="card-link">Rate link</a>
              </div>
            </div><!-- /.card -->
            
            <div class="card card-primary card-outline">
              <div class="card-body">
                <h5 class="card-title">장금상선(SINOKOR)</h5>
                
                <p class="card-text">
                <img src="${path}/dist/img/sino.png">
                  (중국,동남아)
                </p>
                <a href="http://ebiz.sinokor.co.kr/" class="card-link">Schedule link</a>
                <a href="http://ebiz.sinokor.co.kr/Etc/StandardTariff" class="card-link">Rate link</a>
              </div>
            </div><!-- /.card -->
            
            <div class="card card-primary card-outline">
              <div class="card-body">
                <h5 class="card-title">SM Line</h5>
                <p class="card-text">
                <img src="${path}/dist/img/smline.png">
                  (미주)
                </p>
                <a href="https://esvc.smlines.com/smline/CUP_HOM_3001.do?sessLocale=ko" class="card-link">Schedule link</a>
                <a href="https://esvc.smlines.com/smline/CUP_HOM_3116.do?sessLocale=ko" class="card-link">Rate link</a>
              </div>
            </div><!-- /.card -->
          </div>
          <!-- /.col-md-6 -->
          <div class="col-lg-6">
            <div class="card">
              <div class="card-header">
                <h5 class="m-0">한국  -  LA , NYC</h5>
              </div>
              <div class="card-body">
                <h6 class="card-title">미주 운임 실시간 변동 중</h6>

                <p class="card-text"> ▶출항일 기준 운임 적용◀</p>
                <a href="mailto:donggen94@naver.com" class="btn btn-primary">견적 문의</a>
              </div>
            </div>

            <div class="card card-primary card-outline">
              <div class="card-header">
                <h5 class="m-0">CBM 계산</h5>
              </div>
              <div class="card-body">
                <h6 class="card-title">3M 이상 장축 (운임 추가)</h6>

                <p class="card-text"></p>
                <a href="https://www.cbmcalculator.com" class="btn btn-primary">Calculator</a>
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
  <%@ include file="../include/main_footer.jsp" %>
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

<!-- jQuery -->
<%@ include file="../include/plugin_js.jsp" %>

</body>
</html>
