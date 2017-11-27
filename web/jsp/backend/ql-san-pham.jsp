<%-- 
    Document   : ql-san-pham
    Created on : Sep 29, 2017, 11:17:09 PM
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
                        Quản lý Sản Phẩm
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                        <li class="active">Quản lý Sản Phẩm</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-success">
                                <div class="box-header">
                                    <h3 class="box-title">Danh sách Sản phẩm</h3>
                                </div><!-- /.box-header -->
                                <div class="row">
                                    <div class="col-md-3">
                                        <div style="margin-left: 10px;">
                                            <!-- <button type="" class="btn btn-block btn-primary" style="width: 150px;">Thêm mới Sản Phẩm</button> -->
                                            <a href="<%=request.getContextPath()%>/them-moi-san-pham.htm" class="btn btn-primary btn-block margin-bottom">Thêm mới Sản Phẩm</a>
                                        </div>
                                    </div>
                                </div>                
                                <div class="box-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>#ID</th>
                                                <th>Tên Sản Phẩm</th>
                                                <th style="width:100px;height:100px;text-align:center;">Ảnh</th>
                                                <th>Giá</th>
                                                <th>Giam gia</th>
                                            <!--<th>Tieu de</th>
                                                <th>Danh muc</th>-->
                                                <th>Trang thai</th>
                                                <!--<th>Ngay tao</th>-->
                                                <th>Views</th>
                                                <th>Chức năng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- tự  phân trang khi thêm DL -->
                                            <c:forEach items="${listProduct}" var="product">
                                                <tr>
                                                    <td>${product.productId}</td>
                                                    <td>${product.productName}</td>
                                                    <td><img title="${product.productName}" src="<%=request.getContextPath()%>/jsp/frontend/image/products/${product.images}" style="width:100px;height:100px;" /></td>
                                                    <td>${product.price}</td>
                                                    <td>${product.discount}</td>
                                                    <c:if test="${product.status == 'True'}">
                                                        <td>
                                                            <span class="label label-success">hoạt động</span>
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${product.status == 'False'}">
                                                        <td>
                                                            <span class="label label-warning">Đã khóa</span>
                                                        </td>
                                                    </c:if>
                                                    <td>${product.views}</td>
                                                    <td>
                                                        <!-- <button type="submit" class="btn btn-block btn-primary" value=""><i class=" fa-eye"></i></button> -->
                                                        <a href="viewProduct.htm?productId=${product.productId}"><span class="fa fa-eye" style="color: #008d4c;padding:0px 10px"></span></a>
                                                        <a href="initUpdateProduct.htm?productId=${product.productId}"><span class="fa fa-pencil-square-o" title="" style="color:#00a7d0;padding:0px 10px"></span></a>
                                                        <a href="deleteProduct.htm?productId=${product.productId}"><span class="glyphicon glyphicon-trash" title="" style="color:#dd4b39;padding:0px 7px"></span></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
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
