<%-- 
    Document   : productDetail
    Created on : Nov 1, 2017, 8:59:58 AM
    Author     : LAPNV
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <jsp:include page="head-admin.jsp"/>
    <body class="skin-blue sidebar-mini">
        <div class="wrapper">
            <jsp:include page="header-admin.jsp"/>
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Chi tiết Đơn hàng
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                        <li class="">Quản lý Đơn hàng</li>
                        <li class="active">Chi tiết Đơn hàng</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-success">
                                <div class="box-header">
                                    <h3 class="box-title">Chi tiết Đơn hàng</h3>
                                </div><!-- /.box-header -->              
                                <div class="box-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        
                                        <tr>
                                            <th>#ID</th>
                                            <td>${listViewProduct.productId}</td>
                                        </tr>
                                        <tr>
                                            <th>Ảnh</th>
                                            <td><img title="${listViewProduct.productName}" src="<%=request.getContextPath()%>/jsp/frontend/image/products/${listViewProduct.images}" style="width:400px;height:400px;" /></td>
                                        </tr>
                                        <tr>
                                            <th>Tên Sản Phẩm</th>
                                            <td>${listViewProduct.productName}</td>
                                        </tr>
                                        <tr>
                                            <th>Giá</th>
                                            <td>${listViewProduct.price}</td>
                                        </tr>
                                        <tr>
                                            <th>Giảm giá</th>
                                            <td>${listViewProduct.discount}</td>
                                        </tr>
                                        <tr>
                                            <th>Tieu đề</th>
                                            <td>${listViewProduct.title}</td>
                                        </tr>
                                        <tr>
                                            <th>Danh mục</th>
                                            <td>${listViewProduct.catalogId}</td>
                                        </tr>
                                        <tr>
                                            <th>Trạng thái</th>
                                            <c:if test="${listViewProduct.status == 'True'}">
                                                <td>
                                                    <span class="label label-success">hoạt động</span>
                                                </td>
                                            </c:if>
                                            <c:if test="${listViewProduct.status == 'False'}">
                                                <td>
                                                    <span class="label label-warning">Đã khóa</span>
                                                </td>
                                            </c:if>
                                        </tr>
                                        <tr>
                                            <th>Ngày tạo</th>
                                            <td>${listViewProduct.created}</td>
                                        </tr>
                                        <tr>
                                            <th>Lượt xem</th>
                                            <td>${listViewProduct.views}</td>
                                        </tr>                                        
                                    </table>
                                        <a href="quan-ly-san-pham.htm" class="btn btn-primary btn-block margin-bottom" style="width: 200px">Quay lại</a>
                                </div><!-- /.box-body -->
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
