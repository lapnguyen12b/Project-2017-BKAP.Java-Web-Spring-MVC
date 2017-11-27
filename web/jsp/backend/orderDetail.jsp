<%-- 
    Document   : orderDetail
    Created on : Nov 1, 2017, 1:08:49 PM
    Author     : LAPNV
--%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <script>
        var num = document.getElementsByName("total").length;
        document.getElementById("total").innerHTML = x;
    </script>
    <jsp:include page="head-admin.jsp"/>
    <body class="skin-blue sidebar-mini">
        <div class="wrapper">
            <jsp:include page="header-admin.jsp"/>
                <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Chi tiết đơn hàng
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                        <li class="#">Quản lý đơn hàng</li>
                        <li class="active">Chi tiết đơn hàng</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-success">
                                <div class="box-header">
                                    <!--<h3 class="box-title">Đơn hàng số</h3>-->
                                </div><!-- /.box-header -->
                                               
                                <div class="box-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Tên Sản Phẩm</th>
                                                <th>Gia</th>
                                                <th>So luong</th>
                                                <th>Tong</th>
                                                <th>Ngay tao</th>
                                                <!--<th>Chức năng</th>-->
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- tự  phân trang khi thêm DL -->
                                            <c:forEach items="${listOrderDetail}" var="list">
                                                <tr>
                                                    <td>${list.productName}</td>
                                                    <!--<td></td>-->
                                                    <td><fmt:formatNumber maxFractionDigits="3">${list.price}</fmt:formatNumber></td>
                                                    <td>${list.quantity}</td>
                                                    <td class="total"><fmt:formatNumber maxFractionDigits="3">${list.price*list.quantity}</fmt:formatNumber></td>
                                                    <td>${list.created}</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div><!-- /.box-body 
                            </div><!-- /.box -->
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </section><!-- /.content -->
            </div>
            <jsp:include page="footer-admin.jsp"/>
            <div class="control-sidebar-bg"></div>
        </div>    
    </body>
</html>
