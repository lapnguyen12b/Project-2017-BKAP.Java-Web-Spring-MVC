<%-- 
    Document   : ql-dondat
    Created on : Nov 1, 2017, 10:14:54 AM
    Author     : LAPNV
--%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <jsp:include page="head-admin.jsp"/>
    <body class="skin-blue sidebar-mini">
        <div class="wrapper">
            <jsp:include page="header-admin.jsp"/>
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Quản lý hóa đơn
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                        <li class="active">Đơn đặt hàng</li>
                    </ol>
                </section>

                <div class="pad margin no-print">
                    <div class="callout callout-info" style="margin-bottom: 0!important;">
                        <h4><i class="fa fa-info"></i> Chú ý:</h4>
                        Trang này đã được nâng cao để in ấn. Nhấp vào nút in tại phía dưới cùng của hoá đơn để kiểm tra.
                    </div>
                </div>

                <!-- Main content -->
                <section class="invoice">
                    <!-- title row -->
                    <div class="row">
                        <div class="col-xs-12">
                            <h2 class="page-header">
                                <i class="fa fa-globe"></i> Đơn đặt hàng COD
                                <!-- <small class="pull-right">Date: 2/10/2014</small> -->
                            </h2>
                        </div><!-- /.col -->
                    </div>
                    <!-- info row -->


                    <!-- Table row -->
                    <div class="row">
                        <div class="col-xs-12 table-responsive">
                            <div class="box-body">
                                <table id="example1" class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th>#STT</th>
                                            <th>#Id User</th>
                                            <th>Tên Người dùng</th>
                                            <th>SĐT</th>
                                            <th>Tin nhắn</th>
                                            <th>Ngày mua</th>
                                            <th>Tổng tiền</th>
                                            <th>Trạng thái</th>
                                            <th>Hoạt động</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${listOrder}" var="od">
                                            <tr>
                                                <td>${od.orderId}</td>
                                                <td>${od.userId}</td>
                                                <td>${od.fullName}</td>
                                                <td>${od.phone}</td>
                                                <td>${od.sms}</td>
                                                <td>${od.created}</td>
                                                <td><fmt:formatNumber  maxFractionDigits="3">${od.totalAmount}</fmt:formatNumber>  đ</span></td>
                                                <c:if test="${od.status == 'False'}">
                                                    <td>
                                                        <span class="label label-warning">Chưa duyệt</span></td>
                                                    </td>
                                                </c:if>
                                                <c:if test="${od.status == 'True'}">
                                                    <td>
                                                        <span class="label label-success">Đã Duyệt</span></td>
                                                    </td>
                                                </c:if>
                                                <!--<td><span class="label label-warning">Chưa duyệt</span></td>-->
                                                <td>
                                                    
                                                    <!--<button type="" class="btn btn-block btn-success btn-sm">Duyệt đơn hàng</button>-->
                                                    <c:if test="${od.status == 'True'}">
                                                        <a href="getAllOrderDetail.htm?orderId=${od.orderId}" class="btn btn-block btn-success btn-sm">Xem chi tiết đơn hàng</a>
                                                        <!--<button type="" class="btn btn-block btn-success btn-sm">Xem chi tiết đơn hàng</button>-->
                                                    </c:if>
                                                    <c:if test="${od.status == 'False'}">
                                                        <a href="getAllOrderDetail.htm?orderId=${od.orderId}" class="btn btn-block btn-success btn-sm">Xem chi tiết đơn hàng</a>
                                                        <a href="approvalOrder.htm?orderId=${od.orderId}" class="btn btn-block btn-success btn-sm">Duyệt đơn hàng</a>
                                                    </c:if>
                                                    
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div><!-- /.col -->
                    </div><!-- /.row -->

                    <div class="row">
                        <!-- accepted payments column -->
                        <div class="col-xs-6">
                            <p class="lead">Phương thức thanh toán:</p>
                            <img src="jsp/backend/img/credit/visa.png" alt="Visa"/>
                            <img src="jsp/backend/img/credit/mastercard.png" alt="Mastercard"/>
                            <img src="jsp/backend/img/credit/american-express.png" alt="American Express"/>
                            <img src="jsp/backend/img/credit/paypal2.png" alt="Paypal"/>

                        </div><!-- /.col -->
                    </div><!-- /.row -->

                    <!-- this row will not appear when printing -->
                    <!-- <div class="row no-print">
                      <div class="col-xs-12">
                        <a href="invoice-print.html" target="_blank" class="btn btn-default"><i class="fa fa-print"></i> In</a>
                        <button class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> Thanh toán</button>
                        <button class="btn btn-primary pull-right" style="margin-right: 5px;"><i class="fa fa-download"></i> Tạo PDF</button>
                      </div>
                    </div> -->
                </section><!-- /.content -->
                <div class="clearfix"></div>
            </div><!-- /.content-wrapper -->
            <jsp:include page="footer-admin.jsp"/>
            <div class="control-sidebar-bg"></div>
        </div>    
    </body>
</html>
