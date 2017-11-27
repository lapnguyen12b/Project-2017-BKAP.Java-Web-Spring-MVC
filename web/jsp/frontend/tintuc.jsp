<%-- 
    Document   : tintuc
    Created on : Sep 14, 2017, 10:18:21 AM
    Author     : LAPNV
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="vi">
    <jsp:include page="head.jsp"/>
    <body id="offcanvas-container" class="offcanvas-container common-home page-common-home layout-fullwidth">
        <section class="row-offcanvas row-offcanvas-left offcanvas-pusher">
            <div id="page">
                <jsp:include page="header.jsp"/>
                <div id="breadcrumb">
                    <ol class="breadcrumb container">
                        <li><a href="<%=request.getContextPath()%>"><span><i class="fa fa-home"></i></span></a></li>
                        <li><a href="news.htm"><span>Tin Tức</span></a></li>
                    </ol>
                </div>
                <div class="container">
                    <div class="row">
                        <section id="sidebar-main" class="col-sm-9">
                            <div id="content">

                                <header class="pav-header">
                                    <h1>Tin Tức</h1>
                                    <a class="rss-wrapper" href="javascript:void(0)"><span class="fa fa-feed"></span></a>
                                </header>
                                <section class="pav-filter-blogs wrapper blog-wrapper">
                                    <div class="pav-blogs">
                                        <div class="leading-blogs blog-list-item">
                                            <div class="row">
                                                <div class="col-lg-12 col-sm-12 col-xs-12">
                                                    <c:forEach items="${listPost}" var="post">
                                                        <div class="blog-item">
                                                            <figure class="blog-body image">
                                                                <img src="<%=request.getContextPath()%>/jsp/frontend/image/post/${post.image}" title="${post.postTitle}" class="img-responsive" alt="${post.postTitle}" />
                                                            </figure>
                                                            <div class="row">
                                                                <div class="blog-meta col-lg-3 col-md-3 col-sm-4 col-xs-12">
                                                                    <ul>
                                                                        <li class="created">
                                                                            <span class="fa fa-clock-o"> Ngày đăng </span>
                                                                            <span class="day">${post.create}</span>
                                                                        </li>
                                                                        <li class="hits">
                                                                            <span><i class="fa fa-eye"></i> Lượt xem </span>
                                                                            <span class="t-color">852</span>
                                                                        </li>
                                                                        <li class="comment_count">
                                                                            <span><i class="fa fa-comment"></i> Bình luận </span>
                                                                            <span class="t-color">0 </span>
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                                <div class="blog-body col-lg-9 col-md-9 col-sm-8 col-xs-12">
                                                                    <div class="blog-header clearfix">
                                                                        <h3 class="blog-title">
                                                                            <a href="<%=request.getContextPath()%>/newsDetail.htm?postId=${post.postId}" title="${post.postTitle}">
                                                                                ${post.postTitle}
                                                                        </h3>
                                                                    </div>
                                                                    <section class="description">
                                                                        ${post.content}
                                                                    </section>
                                                                    <div class="blog-readmore">
                                                                        <a href="<%=request.getContextPath()%>/newsDetail.htm?postId=${post.postId}" class="button" title="Đọc thêm">Đọc thêm</a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="pav-pagination clearfix"></div>
                                    </div>
                                </section>                
                            </div>
                        </section>

                        <aside id="sidebar-right" class="col-sm-3">
                            <div id="column-right" class="hidden-xs sidebar">
                                <!--<div class="box nopadding red">-->
                                <div class="box nopadding">
                                    <div class="box-heading"><span></span></div>
                                    <div class="box-content" id="pav-categorymenu">
                                        <ul class="level1  ">
                                            <li>
                                                <a href="tin-tuc-moi.html" title="Tin Tức">Tin Tức1111111111</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <script type="text/javascript" src="javascript/jquery/pavblog_script.js"></script>
                                <script>
                                    $(document).ready(function () {
                                        // applying the settings
                                        $("#pav-categorymenu li.active span.head").addClass("selected");
                                        $('#pav-categorymenu ul').Accordion({
                                            active: 'span.selected',
                                            header: 'span.head',
                                            alwaysOpen: false,
                                            animated: true,
                                            showSpeed: 400,
                                            hideSpeed: 800,
                                            event: 'click'
                                        });
                                    });
                                </script>
                            </div>
                        </aside>
                    </div>
                </div>
                <jsp:include page="footer.jsp"/>
                <jsp:include page="copyright.jsp"/>
            </div> <!--/#page-->
        </section>
        <div id="fb-root"></div>
    </body>
</html>
