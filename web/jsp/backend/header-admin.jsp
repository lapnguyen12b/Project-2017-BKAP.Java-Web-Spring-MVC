<%-- 
    Document   : header-admin
    Created on : Sep 21, 2017, 8:33:12 PM
    Author     : LAPNV
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<header class="main-header">
    <!-- Logo -->
    <a href="<%=request.getContextPath()%>/homeAdmin.htm" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>A</b>FT</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>Admin</b></span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!-- Messages: style can be found in dropdown.less-->
            <!--<li class="dropdown messages-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-envelope-o"></i>
                        <span class="label label-success">4</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">Bạn có 4 thư</li>
                        <li>
                             inner menu: contains the actual data 
                            <ul class="menu">
                                <li> start message 
                                    <a href="#">
                                        <div class="pull-left">
                                            <img src="jsp/backend/img/user3-128x128.jpg" class="img-circle" alt="User Image" />
                                        </div>
                                        <h4>
                                            Support Team
                                            <small><i class="fa fa-clock-o"></i> 5 mins</small>
                                        </h4>
                                        <p>Why not buy a new awesome theme?</p>
                                    </a>
                                </li> end message 
                            </ul>
                        </li>
                        <li class="footer"><a href="mailbox.html"><u>Xem tất cả</u></a></li>
                    </ul>
                </li>-->
                <!-- Notifications: style can be found in dropdown.less -->
            <!--<li class="dropdown notifications-menu">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-bell-o"></i>
                        <span class="label label-warning">10</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li class="header">Bạn có 10 thông báo</li>
                        <li>
                             inner menu: contains the actual data 
                            <ul class="menu">
                                <li>
                                    <a href="#">
                                        <i class="fa fa-users text-aqua"></i> 5 thành viên mới gia nhập vào ngày hôm nay
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="footer"><a href="simple.html"><u>Xem tất cả</u></a></li>
                    </ul>
                </li>-->

                <!-- User Account: style can be found in dropdown.less -->
                
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="<%=request.getContextPath()%>/jsp/backend/img/${listViewAdmin.image}" class="user-image" alt="${listViewAdmin.adminName}" />
                            <span class="hidden-xs">${listViewAdmin.adminName}</span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="<%=request.getContextPath()%>/jsp/backend/img/${listViewAdmin.image}" class="img-circle" alt="" style="width: 100px;height: 100px;" />
                                <p>
                                    ${listViewAdmin.adminName}
                                    <!--<small>Thành viên từ tháng 9 - 2017</small>-->
                                </p>
                                <span></span>
                            </li>
                            <!-- Menu Footer-->
                            <li class="user-footer">
                                <div class="pull-left">
                                    <!-- <a href="#" class="btn btn-default btn-flat">Hồ sơ</a> -->
                                    <a href="#" class="btn btn-block btn-danger btn-sm">Hồ sơ</a>
                                </div>
                                <div class="pull-right">
                                    <a href="logoutAdmin.htm" class="btn btn-block btn-danger btn-sm">Đăng xuất</a>
                                </div>
                            </li>
                        </ul>
                    </li>
                <!-- Control Sidebar Toggle Button -->
            </ul>
        </div>
    </nav>
</header>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="<%=request.getContextPath()%>/jsp/backend/img/${listViewAdmin.image}" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
                <p>${listViewAdmin.adminName}</p>
                <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Tìm kiếm..." />
                <span class="input-group-btn">
                    <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
                </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">Danh Mục</li>
            <li class="active treeview">
                <a href="<%=request.getContextPath()%>/homeAdmin.htm">
                    <i class="fa fa-dashboard"></i> <span>Trang chủ</span>
                    <!-- <i class="fa fa-angle-left pull-right"></i> -->
                </a>
            </li>
            <li>
                <a href="widgets.html">
                    <i class="fa fa-th"></i> <span>Thống kê Chi tiết</span> <small class="label pull-right bg-green">Mới</small>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/quan-ly-danh-sach-sp.htm">
                    <i class="fa fa-list"></i> <span>Quản lý danh mục Sản Phẩm</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/quan-ly-san-pham.htm">
                    <i class="fa fa-cart-plus"></i> <span>Quản lý Sản Phẩm</span>
                </a>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-user"></i>
                    <span>Quản lý người dùng</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="simple.html"><i class="fa fa-circle-o"></i>Khách hàng</a></li>
                    <li><a href="<%=request.getContextPath()%>/getAllAdmin.htm"><i class="fa fa-circle-o"></i>Quản trị</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-credit-card"></i>
                    <span>Quản lý hóa đơn</span>
                    <small class="label pull-right bg-yellow">${listorder.size()}</small>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<%=request.getContextPath()%>/getAllOrder.htm"><i class="fa fa-circle-o"></i>Đơn đặt COD
                            <!--<small class="label pull-right bg-red">3</small>-->
                        </a>
                    </li>
                    <li><a href="paymentorder.html"><i class="fa fa-circle-o"></i>Đã Thanh toán</a></li>
                </ul>
            </li>
            <li>
                <a href="reviews.html">
                    <i class="fa fa-star"></i> <span>Quản lý Đánh giá</span>
                    <!--<small class="label pull-right bg-red">3</small>-->
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/getAllPost.htm">
                    <i class="fa fa-newspaper-o"></i> <span>Quản lý Tin tức</span>
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/getAllSlider.htm">
                    <i class="fa fa-photo"></i> <span>Quản lý Slider</span>
                    <!--<small class="label pull-right bg-red">3</small>-->
                </a>
            </li>
            <li>
                <a href="<%=request.getContextPath()%>/getAllContact.htm">
                    <i class="fa fa-gears"></i> <span>Quản lý TT Hệ thống</span>
                    <!--<small class="label pull-right bg-red">3</small>-->
                </a>
            </li>
<!--            <li>
                <a href="calendar.html">
                    <i class="fa fa-calendar"></i> <span>Lịch</span>
                </a>
            </li>-->
            <li>
                <a href="mailbox.html">
                    <i class="fa fa-envelope"></i> <span>Mail</span>
                    <!--<small class="label pull-right bg-yellow">12</small>-->
                </a>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-folder"></i> <span>Examples</span>
                    <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="login.html"><i class="fa fa-circle-o"></i> Login</a></li>
                    <li><a href="<%=request.getContextPath()%>/registerAdmin.htm"><i class="fa fa-circle-o"></i> Register</a></li>
                </ul>
            </li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
