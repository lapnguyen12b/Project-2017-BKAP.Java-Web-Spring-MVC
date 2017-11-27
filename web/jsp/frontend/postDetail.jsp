<%-- 
    Document   : postDetail
    Created on : Oct 16, 2017, 5:53:41 PM
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
                <!-- /sys-notification -->
                <div id="breadcrumb">
                    <ol class="breadcrumb container">
                        <li><a href="<%=request.getContextPath()%>"><span><i class="fa fa-home"></i></span></a></li>
                        <li><a href="news.htm"><span>Tin Tức</span></a></li>
                        <li><a href="newsDetail.htm"><span>Chi tiết</span></a></li>
                    </ol>
                </div>
                <div class="container">
                    <div class="row">


                        <section id="sidebar-main" class="col-sm-9">
                            <div id="content">
                                <section id="blog-info" class="pav-blog wrapper blog-wrapper">
                                    <p>${PostDetail.postTitle}</p>
                                    <header><h1 class="blog-title">${PostDetail.postTitle}</h1></header>
                                    <section class="content">
                                        <section class="blog-meta">
                                            <span class="created"><span>
                                                <i class="fa fa-calendar"></i> Đăng vào ${PostDetail.create}</span></span>
                                            <span class="comment_count"><span><i class="fa fa-comment"></i> Bình luận</span> <span class="t-color">0</span></span>
                                        </section>

                                        <section class="description">
                                            <p>${PostDetail.contentDetail}</p>
                                        </section>
                                    <section class="blog-tags">
                                        <b>Từ khóa</b>
                                        <a href="index2934.html?route=news/search&amp;tag=tag1" title="tag1">tag1</a>
                                        <a href="indexd6f0.html?route=news/search&amp;tag=tag2" title="tag2">tag2</a>
                                        <a href="index76e6.html?route=news/search&amp;tag=tag3" title="tag3">tag3</a>
                                        <a href="index1112.html?route=news/search&amp;tag=tag4" title="tag4">tag4</a>
                                    </section>

                                    <section class="blog-social clearfix">
                                        <div class="social-wrap">
                                            <div class="social-heading pull-left">
                                                <b>Like</b>
                                            </div>
                                            <!-- Twitter Button -->
                                            <div class="itemTwitterButton pull-left"><a href="https://twitter.com/share" class="twitter-share-button" data-count="horizontal">Twitter</a></div>
                                            <!-- Facebook Button -->
                                            <div class="itemFacebookButton pull-left"><div class="fb-like" data-send="false" data-width="200" data-show-faces="true"></div></div>
                                            <!-- Google +1 Button -->
                                            <div class="itemGooglePlusOneButton pull-left"><g:plusone annotation="inline" width="120"></g:plusone></div>
                                        </div>
                                    </section>

                                    <section class="blog-bottom row">
                                        <div class="pavcol2">
                                            <h4>Tin liên quan</h4>
                                            <ul>
                                                <c:forEach items="${listPost}" var="list">
                                                    <li>
                                                        <a href="<%=request.getContextPath()%>/newsDetail.htm?postId=${list.postId}">${list.postTitle}</a>
                                                    </li>
                                                </c:forEach>
                                                
                                            </ul>
                                        </div>
                                    </section>

                                    <div class="pav-comment">
                                        <!--list comments-->
                                        <div id="comment"></div>

                                        <h4>Viết bình luận</h4>
                                        <form class="form-horizontal" id="form-comment">
                                            <fieldset>
                                                <div class="message" style="display:none"></div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-name">Họ & Tên đệm</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" name="name" value="" id="input-name" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-email">Email</label>
                                                    <div class="col-sm-8">
                                                        <input type="text" name="email" value="" id="input-email" class="form-control" />
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="col-sm-2 control-label" for="input-comment">Nội dung bình luận</label>
                                                    <div class="col-sm-8">
                                                        <textarea name="text" rows="5" id="input-comment" class="form-control"></textarea>
                                                    </div>
                                                </div>
                                                <div class="buttons-wrap right">
                                                    <button type="button" id="button-comment" data-loading-text="Đang tải..." class="btn btn-submit btn-theme-primary">
                                                        <span>Gửi</span>
                                                    </button>
                                                </div>
                                            </fieldset>
                                        </form>
                                        <hr />
                                        <div class="fb-comments" data-width="100%" data-numposts="5"></div>
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
                                                <a href="tin-tuc-moi.html" title="Tin Tức">Tin Tức</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <script type="text/javascript" src="javascript/theme/pavblog_script.js"></script>
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
                                </script>                    </div>
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
