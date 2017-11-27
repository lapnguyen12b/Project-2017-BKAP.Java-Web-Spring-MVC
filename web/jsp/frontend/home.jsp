<%-- 
    Document   : home
    Created on : Sep 14, 2017, 10:12:21 AM
    Author     : LAPNV
--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="vi">
    <jsp:include page="head.jsp"/>
    <body id="offcanvas-container" class="offcanvas-container common-home page-common-home layout-fullwidth">
        <section class="row-offcanvas row-offcanvas-left offcanvas-pusher">
            <div id="page">
                <jsp:include page="header.jsp"/>
                <div class="container">
                    <div class="row">
                        <!--left-->
                        <aside id="sidebar-left" class="col-sm-3">
                        <jsp:include page="sidebar-left.jsp"/>
                        </aside>
                        <!--end-left-->
                        <!--right-->
                        <div id="sidebar-main" class="col-sm-9">
                            <div id="content">
                                <jsp:include page="sidebar-right.jsp"/>
                                <jsp:include page="banner-right.jsp"/>
                                <jsp:include page="sanphambanchay.jsp"/>
                                <jsp:include page="sanphamnoibat.jsp"/>
                            </div><!-- /content# -->
                        </div><!-- /#sidebar-main -->
                        <!--end right-->
                    </div> <!--/.row-->
                </div><!--/.container-->
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
