<%-- 
    Document   : gioithieu
    Created on : Sep 14, 2017, 7:10:49 PM
    Author     : LAPNV
--%>

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
                        <li><a href="index.html"><span><i class="fa fa-home"></i></span></a></li>
                        <li><a href="gioi-thieu.html"><span>Về Chúng Tôi</span></a></li>
                    </ol>
                </div>
                <div class="container">
                    <div class="row">
                        <section id="sidebar-main" class="col-sm-12">
                            <div id="content">

                                <h1>Về Chúng Tôi</h1>
                                <div class="wrapper">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                                        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                                </div>
                                <div class="buttons">
                                    <div class="right">
                                        <a href="index.html" class="button btn btn-theme-default">
                                            Tiếp tục
                                        </a>
                                    </div>
                                </div>

                            </div>
                        </section>
                    </div>
                </div>
                <jsp:include page="footer.jsp"/>
                <jsp:include page="copyright.jsp"/>
            </div> <!--/#page-->
        </section>
        <div id="fb-root"></div>
    </body>
</html>
