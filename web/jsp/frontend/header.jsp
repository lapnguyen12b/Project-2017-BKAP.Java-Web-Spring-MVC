<%-- 
    Document   : header
    Created on : Sep 14, 2017, 10:12:32 AM
    Author     : LAPNV
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--header-->
<header id="header">
    <!--header top-->
    <div id="topbar">
        <div class="container">
            <div class="row  hidden-sm hidden-xs">
                <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                    <ul class="links pull-left">
                        <li>
                            <a class="wishlist" href="" id="mobile-wishlist-total">
                                <span class="fa fa-heart"></span>Yêu thích (0)
                            </a>
                        </li>
                        <li>
                            <a class="account" href=""><span class="fa fa-user"></span>Tài khoản</a>
                        </li>
                        <li>
                            <a class="shoppingcart" href="<%=request.getContextPath()%>/youCart.htm"><span class="fa fa-shopping-cart"></span>Giỏ hàng</a>
                        </li>
<!--                        <li>
                            <a class="last checkout" href="thanh-toan.html"><span class="fa fa-file"></span>Thanh toán</a>
                        </li>-->
                    </ul>
                        <%
                            String myname = (String)session.getAttribute("account");
                            if(myname != null){
                                out.println("<div class=\"welcome pull-left\">["+myname+"] : <a href=\"logout.htm\" >Đăng xuất</a></div>");
                            }else{
                                out.println("<div class=\"welcome pull-left\"><a href=\"dangky.htm\" >Đăng ký  :</a><a href=\"initLoginFontend.htm\" >  Đăng nhập</a></div>");
                            }
                        %>
                           
                </div>

                <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                    <div class="currency pull-right">
                        <form action="" method="post" enctype="multipart/form-data" class="currency">
                            <div class="btn-group">
                                <div class="">
                                    <a href="javascript:void(0);" data-name="EUR" class="list-item currency-select">€</a>
                                    <a href="javascript:void(0);" data-name="GBP" class="list-item currency-select">£</a>
                                    <a href="javascript:void(0);" data-name="USD" class="list-item currency-select">$</a>
                                    <a title="VND" class="list-item currency-select"><b class="item-symbol">đ</b></a>
                                    <input type="hidden" name="code" value="" />
                                    <input type="hidden" name="redirect" value="index.html" />
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="pull-right"></div>
                </div>
            </div>
            <!-- /row  hidden-sm hidden-xs -->
            <!-- show-mobile -->
            <div class="show-mobile hidden-lg hidden-md pull-right">
                <div class="quick-user pull-left">
                    <div class="quickaccess-toggle">
                        <i class="fa fa-user"></i>
                    </div>
                    <div class="inner-toggle">
                        <div class="login links">
                            <a href="<%=request.getContextPath()%>/dangky.htm">Đăng ký</a> hoặc<a href="login.html"> Đăng nhập</a>
                        </div>
                    </div>
                </div>

                <div class="quick-access pull-left">
                    <div class="quickaccess-toggle">
                        <i class="fa fa-list"></i>
                    </div>
                    <div class="inner-toggle">
                        <ul class="links pull-left">
                            <li>
                                <a class="wishlist" href="" id="wishlist-total"><span class="fa fa-heart"></span>Yêu thích (0)</a>
                            </li>
                            <li>
                                <a class="account" href=""><span class="fa fa-user"></span>Tài khoản</a>
                            </li>
                            <li>
                                <a class="shoppingcart" href="thanh-toan.html"><span class="fa fa-shopping-cart"></span>Giỏ hàng</a>
                            </li>
                            <li>
                                <a class="last checkout" href="thanh-toan.html">
                                    <span class="fa fa-file"></span>Thanh toán</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div id="search_mobile" class="search pull-left"></div>

                <div class="currency-mobile pull-left">
                    <div class="quickaccess-toggle">
                        <i class="fa fa-money"></i>
                    </div>
                    <div class="inner-toggle">
                        <div class="currency pull-left">
                            <form action="" method="post" enctype="multipart/form-data" class="currency">
                                <div class="btn-group">
                                    <div class="">
                                        <a href="javascript:void(0);" data-name="EUR" class="list-item currency-select">€</a>
                                        <a href="javascript:void(0);" data-name="GBP" class="list-item currency-select">£</a>
                                        <a href="javascript:void(0);" data-name="USD" class="list-item currency-select">$</a>
                                        <a title="VND" class="list-item currency-select"><b class="item-symbol">đ</b></a>
                                        <input type="hidden" name="code" value="" />
                                        <input type="hidden" name="redirect" value="index.html" />
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <div class="language-mobile pull-left">
                    <div class="quickaccess-toggle">
                        <i class="fa fa-cog"></i>
                    </div>
                    <div class="inner-toggle">
                        <div class="language pull-left">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- /#topbar -->
    <!--end header top-->

    <!--main header-->
    <!--main header-->
            <div id="header-main">
                <div class="container">
                    <div class="row header-wrap">
                        <!--logo-->
                        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 inner">
                            <div id="logo-theme" class="logo-store">
                                <a href="<%=request.getContextPath()%>" class="img-responsive" style="background-image: none;">
                                    <img src="http://foodstore.myzozo.net/image/catalog/logo/logo.png" title="FoodStore" alt="FoodStore" />
                                </a>
                            </div>
                        </div>
                        <div class="header-right col-lg-8 col-md-8 col-sm-12 header-hidden inner">
                            <div class="row header-service">    
                                <div class="col-sm-4 pull-right">
                                    <div id="cart" class="cart">
                                        <span class="fa fa-shopping-cart pull-left"></span>
                                        <div data-toggle="dropdown" data-loading-text="Đang tải" class="heading dropdown-toggle">
                                            <div class="cart-inner media-body">
                                                <h4>Giỏ hàng</h4>                        
                                                
                                                <c:if test="${listCart == null}">
                                                    <a><span id="cart-total">tổng - 0vnđ</span></a>
                                                </c:if>
                                                <c:if test="${listCart != null}">
                                                    <a><span id="cart-total">tổng - <fmt:formatNumber maxFractionDigits="3">${total}</fmt:formatNumber> vnđ</span></a>
                                                </c:if>
                                            </div>
                                        </div>
                                        <ul class="dropdown-menu" style="width: 400px;left: initial;right: -30px;margin-top:45px;">
                                    <!--<ul class="dropdown-menu">-->
                                            <li>
                                                <table class="table table-striped">
                                                    <c:forEach items="<%=request.getSession().getAttribute("listCart")%>" var="cart">
                                                    <tr>
                                                        <td class="text-center">
                                                            <a href="http://foodstore.myzozo.net/kem-oc-que">
                                                                <img src="<%=request.getContextPath()%>/jsp/frontend/image/products/${cart.product.images}" alt="${cart.product.productName}" title="${cart.product.productName}" style="width:94px;" />
                                                            </a>
                                                        </td>
                                                        <td class="text-left">
                                                            <a href="http://foodstore.myzozo.net/kem-oc-que">${cart.product.productName}</a>
                                                        </td>
                                                        <td class="text-right">x ${cart.quantity}</td>
                                                        <td class="text-right"><fmt:formatNumber maxFractionDigits="3">${cart.product.price*cart.quantity}</fmt:formatNumber>đ</td>
                                                        <td class="text-center">
<!--                                                            <button type="button" onclick="cart.remove('108');" title="Gỡ bở" class="btn btn-danger btn-xs">
                                                            <i class="fa fa-times"></i>
                                                        </button>-->
                                                            <a href="<%=request.getContextPath()%>/remove.htm?Id=${cart.product.productId}" data-toggle="tooltip" data-placement="top" title="Gỡ bở" class="btn btn-danger btn-xs" style="margin-top:1px">
                                                                <i class="fa fa-times"></i>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                                </table>
                                            </li>
                                            <li>
                                                <div>
                                                    <table class="table table-bordered">
                                                        <tr>
                                                            <td class="text-right"><strong>Thành tiền</strong></td>
                                                            <td class="text-right"><fmt:formatNumber maxFractionDigits="3">${total}</fmt:formatNumber>đ</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-right"><strong>Tổng số</strong></td>
                                                            <td class="text-right"><fmt:formatNumber maxFractionDigits="3">${total}</fmt:formatNumber>đ</td>
                                                        </tr>
                                                    </table>
                                                    <p class="text-right">
                                                        <a href="<%=request.getContextPath()%>/youCart.htm" class="button btn btn-theme-default"><i class="fa fa-shopping-cart"></i>Xem giỏ hàng</a>
                                                        <a href="<%=request.getContextPath()%>/order.htm" class="button btn btn-theme-default"><i class="fa fa-share"></i>Thanh toán</a>
                                                    </p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    <!--end main header-->

    <!--main menu-->
    <div id="pav-mainnav">
        <style>
            li.parent.dropdown-submenu {
                position: relative;
            }
        </style>
        <div class="container">
            <div class="mainnav-wrap">
                <div class="row">
                    <div class="col-lg-9 col-md-9 col-sm-6 col-xs-12">
                        <div class="navbar navbar-inverse">
                            <div class="pav-megamenu">
                                <div class="navbar">
                                    <div id="mainmenutop" class="megamenu" role="navigation">
                                        <div class="navbar-header">
                                            <!--button menu on mobile-->
                                            <a href="javascript:;" data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle">
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                                <span class="icon-bar"></span>
                                            </a>
                                            <div class="collapse navbar-collapse navbar-ex1-collapse">
                                                <ul class="nav navbar-nav megamenu">
                                                    
                                                    <li class="">
                                                        <a href="<%=request.getContextPath()%>">
                                                            <span class="menu-title">Trang chủ</span>
                                                        </a>
                                                    </li>
                                                    <li class="">
                                                        <a href="about.htm">
                                                            <span class="menu-title">Giới Thiệu</span>
                                                        </a>
                                                    </li>
                                                    <!--menu parent-->
                                                    <!--lv1-->
                                                    <li class="parent dropdown aligned-left">
                                                        <a class="dropdown-toggle" data-toggle="dropdown" href="<%=request.getContextPath()%>/getProductHot.htm">
                                                            <span class="menu-title">Thực đơn</span>
                                                            <b class="caret"></b>
                                                        </a>
                                                        <div class="dropdown-menu level1">
                                                            <div class="dropdown-menu-inner">
                                                                <div class="row">
                                                                    <div class="mega-col col-xs-12 col-sm-12 col-md-12" data-type="menu">
                                                                        <div class="mega-col-inner">
                                                                            <ul>
                                                                                <!--menu lv1-->
                                                                                <!--if not lv2-->
                                                                                <c:forEach items="${catalog}" var="c">
                                                                                <li class=" ">
                                                                                    <a href="listProduct.htm?catalogId=${c.catalogId}" target="_self">
                                                                                        <span class="menu-title">${c.catalogName}</span>
                                                                                    </a>
                                                                                </li>
                                                                                </c:forEach>
                                                                                <!--end lv1-->
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <!--menu parent-->
                                                    <!--not lv1-->
                                                    <li class="">
                                                        <a href="news.htm">
                                                            <span class="menu-title">Tin Tức</span>
                                                        </a>
                                                    </li>
                                                    <!--menu parent-->
                                                    <!--not lv1-->
                                                    <li class="">
                                                        <a href="lienhe.htm">
                                                            <span class="menu-title">Liên Hệ</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-3 hidden-sm hidden-xs">
                        <div id="search" class="pull-right">
                            <input type="text" name="search" value="" placeholder="Tìm kiếm" class="input-search" />
                            <span class="button-search"></span>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!--endmain menu-->
</header>

<!--end header-->
<!-- sys-notification -->
<div id="sys-notification">
    <div class="container">
        <div id="notification"></div>
    </div>
</div>
<!-- /sys-notification -->
