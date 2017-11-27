<%-- 
    Document   : paymentSuccsess
    Created on : Oct 29, 2017, 10:53:59 PM
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
                <div class="container">
                    <div id="breadcrumb">
                        <ol class="breadcrumb container">
                            <li><a href="#"><span><i class="fa fa-home"></i></span></a></li>
                            <li><a href="#"><span>Giỏ hàng</span></a></li>
                            <li><a href="#"><span>Thanh toán</span></a></li>
                            <li><a href="#"><span>Thành công</span></a></li>
                        </ol>
                    </div>
                    <div class="row">
                        <section id="sidebar-main" class="col-sm-12">
                            <div id="content">
                                <h1>Đơn hàng của bạn đã được gửi thành công!</h1>
                                <p>Đơn hàng của bạn đã được xử lý!</p><p>Cảm ơn quý khách đã sử dụng dịch vụ của chúng tôi!</p>
                                <div class="buttons">
                                    <div class="pull-right"><a href="<%=request.getContextPath()%>" class="btn btn-primary">Tiếp tục</a></div>
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
