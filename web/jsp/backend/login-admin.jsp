<%-- 
    Document   : login-admin
    Created on : Sep 21, 2017, 9:03:24 PM
    Author     : LAPNV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%--
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>--%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Admin | Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.4 -->
    <link href="jsp/backend/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="jsp/backend/css/AdminLTE.css" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="jsp/backend/css/blue.css" rel="stylesheet" type="text/css" />
<!--    <script>
            
            function validate(){
                var username = document.getElementById("username").value;
                var pass = document.getElementById("password").value;
                if( username != "" && pass != ""){
                    
                    return true;
                } else {
                    
                    if(username == ""){
                        swal("Bạn phải nhập tên đăng nhập.");
                        document.getElementById("username").focus();
                        return false;
                    }
                     if(pass == ""){
                        swal("Bạn phải nhập mật khẩu.");
                        document.getElementById("password").focus();
                        return false;
                    }
                }
                
            }
        </script>-->
  </head>
  <body class="login-page">
    <div class="login-box">
      <div class="login-logo">
        <a href="index.html"><b>Admin</b>LTE</a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">Đăng nhập để bắt đầu phiên làm việc</p>
        <f:form action="adminLogin.htm" commandName="accountAdmin" onsubmit="return">
          <div class="form-group has-feedback">
            <f:input type="text" id="adminName" path="adminName" class="form-control form-control-fix" placeholder="adminName" />
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <f:input type="password" id="passWord" path="passWord" class="form-control form-control-fix" placeholder="Mật khẩu" />
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
            <div class="row" style="margin-top:40px">
                <p>${message}</p>
            <div class="col-xs-12">
              <button type="submit" class="btn btn-primary btn-block btn-flat">Đăng nhập</button>
            </div><!-- /.col -->
          </div>
        </f:form>

        <a href="#" style="color:#dd4b39"><u>Quên mật khẩu</u></a><br>
        <!--<a href="register.html" class="text-center" style="color:#dd4b39"><u>Đăng ký thành viên mới</u></a>-->

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.4 -->
    <script src="jsp/backend/js/jQuery-2.1.4.min.js" type="text/javascript"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="jsp/backend/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="jsp/backend/js/icheck.min.js" type="text/javascript"></script>
<!--    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>-->
  </body>
</html>

