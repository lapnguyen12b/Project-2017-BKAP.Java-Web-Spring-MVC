<%-- 
    Document   : register
    Created on : Sep 14, 2017, 7:16:42 PM
    Author     : LAPNV
--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html dir="ltr" lang="vi">
    <jsp:include page="head.jsp"/>
    <body id="offcanvas-container" class="offcanvas-container common-home page-common-home layout-fullwidth">
        <section class="row-offcanvas row-offcanvas-left offcanvas-pusher">
            <div id="page">
                <jsp:include page="header.jsp"/>
                <!-- /sys-notification -->
                    <div class="container">
                        <ul class="breadcrumb">
                            <li><a href="index.html"><i class="fa fa-home"></i></a></li>
                            <li><a href="login.html">Tài khoản</a></li>
                            <li><a href="register.html">Đăng ký</a></li>
                        </ul>
                        <div class="row">
                            <section id="idebar-main">
                                <div id="content" class="col-sm-9">
                                    <h1>Đăng ký tài khoản</h1>
                                    <div class="wrapper underline no-margin">
                                        <p>Nếu bạn đã đăng ký tài khoản với chúng tôi, vui lòng <a href="login.html">đăng nhập</a>.</p>
                                        <f:form action="initregisterUser.htm" class="form-horizontal" commandName="newUser">
                                            <fieldset id="account">
                                                <legend>Chi tiết tài khoản</legend>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="userName">Tên</label>
                                                    <div class="col-sm-10">
                                                        <f:input type="text" path="userName" id="userName" value="" placeholder="Tên" class="form-control" />
                                                    </div>
                                                </div>
                                                    <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="passWord">Mật khẩu</label>
                                                    <div class="col-sm-10">
                                                        <f:input type="text" path="passWord" id="pasWord" value="" placeholder="mật khẩu" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="fullName">Họ & Tên</label>
                                                    <div class="col-sm-10">
                                                        <f:input type="text" path="fullName" id="fullName" value="" placeholder="vd: Nguyen Van A" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="phone">Điện thoại</label>
                                                    <div class="col-sm-10">
                                                        <f:input type="tel" path="phone" id="phone" value="" placeholder="Điện thoại"class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="mail">Email</label>
                                                    <div class="col-sm-10">
                                                        <f:input type="email" path="mail" id="mail" value="" placeholder="Email" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="address">Địa chỉ</label>
                                                    <div class="col-sm-10">
                                                        <f:input type="text" path="address" id="address" value="" placeholder="vd: 238 Hoàng Quốc Việt, Cầu Giấy" class="form-control" />
                                                    </div>
                                                </div>
                                            </fieldset>
                                                <div class="buttons">
                                                    <input type="button" value="Back" class="button btn btn-theme-default" onclick="history.go(-1)"/>
                                                    <input type="submit" value="Đăng ký" class="button btn btn-theme-default" onclick="validate()" />
                                                </div>
                                        </f:form>
                                    </div>
                                </div>
                                <aside id="sidebar-right" class="col-sm-3">
                                    <div id="column-right" class="hidden-xs sidebar">
                                        <div class="box box-normal theme account">
                                            <div class="box-heading"><span>Tài khoản</span></div>
                                            <div class="box-content">
                                                <ul class="box-account box-panel">
                                                    <li><a href="login.html">Đăng nhập</a></li>
                                                    <li><a href="register.html">Đăng ký</a></li>
                                                    <li><a href="">Quên mật khẩu</a></li>
                                                    <li><a href="">Tài khoản</a></li>
                                                    <li><a href="">Sổ địa chỉ</a></li>
                                                    <li><a href="">Danh sách Yêu thích</a></li>
                                                    <li><a href="">Lịch sử Đơn hàng</a></li>
                                                    <li><a href="">Tải xuống</a></li>
                                                    <li><a href="">Điểm thưởng</a></li>
                                                    <li><a href="">Đổi / Trả</a></li>
                                                    <li><a href="">Giao dịch</a></li>
                                                    <li><a href="">Nhận thư</a></li>
                                                    <li><a href="">Thanh toán định kỳ</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </aside>
                            </section>
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
