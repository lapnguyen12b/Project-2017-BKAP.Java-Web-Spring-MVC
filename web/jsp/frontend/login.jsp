<%-- 
    Document   : login
    Created on : Sep 14, 2017, 7:13:20 PM
    Author     : LAPNV
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="vi">
    <jsp:include page="head.jsp"/>
    <body id="offcanvas-container" class="offcanvas-container common-home page-common-home layout-fullwidth">
        <section class="row-offcanvas row-offcanvas-left offcanvas-pusher">
            <div id="page">
                <jsp:include page="header.jsp"/>
                <!-- /sys-notification -->
                <div class="container">
                    <div id="breadcrumb">
                        <ol class="breadcrumb container">
                            <li><a href="<%=request.getContextPath()%>"><span><i class="fa fa-home"></i></span></a></li>
                            <!--<li><a href="login.html?route=account/account"><span>Tài khoản</span></a></li>-->
                            <li><a href="<%=request.getContextPath()%>/initLoginFontend.htm"><span>Đăng nhập</span></a></li>
                        </ol>
                    </div>
                    <div class="row">
                        <section id="sidebar-main" class="col-sm-9">
                            <div id="content">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="well">
                                            <h2>Khách hàng mới</h2>
                                            <p><strong>Đăng ký</strong></p>
                                            <p>Bằng việc tạo tài khoản bạn có thể mua sắm nhanh hơn, theo dõi trạng thái đơn hàng, và theo dõi đơn hàng mà bạn đã đặt.</p>
                                            <a href="dangky.htm" class="button btn btn-theme-default">Tiếp tục</a></div>
                                    </div>
                                    <div class="col-sm-6">
                                        <div class="well">
                                            <h2>Khách hàng cũ</h2>
                                            <p><strong>Tôi là khách hàng cũ</strong></p>
                                            <f:form action="loginFontend.htm" commandName="account">
                                                <input name='FormType' type='hidden' value='customer_login' />
                                                <input name='acction' type='hidden' value='${acction}' />
                                                <input name='utf8' type='hidden' value='true' />
                                                <div class="form-group">
                                                    <div class="message">
                                                      ${message}
                                                    </div>
                                                 </div>
                                                <div class="form-group">
                                                    <label class="control-label" for="userName">Tài Khoản</label>
                                                    <f:input type="text" path="userName" id="userName" class="form-control" />
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label" for="passWord">Mật khẩu</label>
                                                    <f:input type="password" path="passWord" id="passWord" class="form-control" />
                                                    <a href="">Quên mật khẩu</a>
                                                </div>
                                                <input type="submit" value="Đăng nhập" class="button btn btn-theme-default" />
                                                <!-- <input type="hidden" name="redirect" value="login.html?route=account/wishlist" /> -->
                                            </f:form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                        <aside id="sidebar-right" class="col-sm-3">
                            <div id="column-right" class="hidden-xs sidebar">
                                <div class="box box-normal theme account">
                                    <div class="box-heading"><span>Tài khoản</span></div>
                                    <div class="box-content">
                                        <ul class="box-account box-panel">
                                            <li><a href="login.html">Đăng nhập</a></li>
                                            <li><a href="register.html">Đăng ký</a></li>
                                            <li><a href="forgotten">Quên mật khẩu</a></li>                                  
                                            <li><a href="account">Tài khoản</a></li>
                                            <li><a href="address">Sổ địa chỉ</a></li>
                                            <li><a href="wishlist">Danh sách Yêu thích</a></li>
                                            <li><a href="order">Lịch sử Đơn hàng</a></li>
                                            <li><a href="download">Tải xuống</a></li>
                                            <li><a href="reward">Điểm thưởng</a></li>
                                            <li><a href="return">Đổi / Trả</a></li>
                                            <li><a href="transaction">Giao dịch</a></li>
                                            <li><a href="newsletter">Nhận thư</a></li>
                                            <li><a href="recurring">Thanh toán định kỳ</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
                <!--end-->
                <div class="mass-bottom" id="pavo-mass-bottom">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12">
                                <div class="box clearfix">
                                    <div class="pts-container">
                                        <div class="pts-inner">
                                            <div class="row row-level-1">
                                                <div class="row-inner clearfix">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="footer.jsp"/>
                <jsp:include page="copyright.jsp"/>
            </div> <!--/#page-->
        </section>
        <div id="fb-root"></div>
    </body>
</html>
