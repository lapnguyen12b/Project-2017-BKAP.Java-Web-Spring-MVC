<%-- 
    Document   : register
    Created on : Sep 21, 2017, 9:10:29 PM
    Author     : LAPNV
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>AdminLTE | ĐĂng ký</title>
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

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
            <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
        <script>
            function check() {
                var name = document.getElementById("adminName");
                var pass = document.getElementById("passWord");
                var email = document.getElementById("email");
                 var pattern=/^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
//                 var pat = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
                if (name != "" && pass != "" && email != "" && pattern.test(email) == true) {
                    return true;
                } else {
                    if (name == "" ) {
                        alter("Bạn phải nhập tên đăng nhập");
                        document.getElementById("userName").focus();
                        return false;
                    }if (email === "") {
                        alter("Bạn phải nhập Email.");
                        document.getElementById("email").focus();
                        return false;
                    }if (pass === "") {
                        alter("Bạn phải nhập Mật khẩu.");
                        document.getElementById("address").focus();
                        return false;
                    } else {
                        if(!pattern.test(email)){
                        alter("Email sai định dạng.");
                        document.getElementById("email").focus();
                        return false; 
                        }
                        
                    }

                }
            }
        </script>
    <body class="register-page">
        <div class="register-box">
            <div class="register-logo">
                <a href="index.html"><b>Admin</b>LTE</a>
            </div>

            <div class="register-box-body">
                <p class="login-box-msg">Đăng ký thành viên mới</p>
                <f:form action="initRegisterAdmin.htm" commandName="newAdmin" onsubmit="return check()">
                    <div class="form-group message">
                        ${message}
                    </div>
                    <div class="form-group has-feedback">
                        <label for="adminName">Tài Khoản<span class="required">*</span></label>
                        <f:input type="text" path="adminName" id="adminName" class="form-control form-control-fix" placeholder="Tài Khoản" />
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="email">E-mail<span class="required">*</span></label>
                        <f:input type="email" path="email" id="email" class="form-control form-control-fix" placeholder="Email" />
                        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
                    </div>
                    <div class="form-group has-feedback">
                        <label for="password">Mật Khẩu<span class="required">*</span></label>
                        <f:input type="password" path="passWord" id="passWord" class="form-control form-control-fix" placeholder="Mật khẩu" />
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <button type="submit" class="btn btn-primary btn-block btn-flat" onclick="check()">Đăng ký</button>
                        </div><!-- /.col -->
                    </div>
                </f:form>

                <!--<a href="login.html" class="text-center"><u>Đăng nhập</u></a>-->
            </div><!-- /.form-box -->
        </div><!-- /.register-box -->

        <!-- jQuery 2.1.4 -->
        <script src="jsp/backend/js/jQuery-2.1.4.min.js" type="text/javascript"></script>
        <!-- Bootstrap 3.3.2 JS -->
        <script src="jsp/backend/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        <!-- iCheck -->
        <script src="jsp/backend/js/icheck.min.js" type="text/javascript"></script>
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

