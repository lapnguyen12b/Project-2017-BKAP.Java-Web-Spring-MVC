<%-- 
    Document   : ql-contact
    Created on : Oct 14, 2017, 10:54:14 PM
    Author     : LAPNV
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<html>
    <jsp:include page="head-admin.jsp"/>
    <body class="skin-blue sidebar-mini">
        <div class="wrapper">
            <jsp:include page="header-admin.jsp"/>
            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Quản lý Liên hệ
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                        <li class="active">Quản lý liên hệ</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-success">
                                <div class="box-header">
                                    <h3 class="box-title">Danh sách</h3>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div>
                                                <!-- <button type="" class="btn btn-block btn-primary" style="width: 150px;">Thêm mới Sản Phẩm</button> -->
                                                <a href="<%=request.getContextPath()%>/insertContact.htm" class="btn btn-primary btn-block margin-bottom">Thêm mới</a>
                                            </div>
                                        </div>
                                    </div>  
                                    <div class="box-tools">
                                        <div class="input-group" style="width: 150px;">
                                            <input type="text" name="table_search" class="form-control input-sm pull-right" placeholder="Tìm kiếm" />
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- /.box-header -->
                                <div class="box-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>#STT</th>
                                                <th>Địa chỉ</th>
                                                <th>Điện thoại</th>
                                                <th>Email</th>
                                                <th>Trạng thái</th>
                                                <th>Chức năng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listContact}" var="contact">
                                            <!-- tự  phân trang khi thêm DL -->
                                            <tr>
                                                <td>${contact.contactId}</td>
                                                <td>${contact.address}</td>
                                                <td>${contact.phone}</td>
                                                <td>${contact.email}</td>
                                                <!--<td><span class="label label-warning">Đã khóa</span></td>-->
                                                <c:if test="${contact.status == 'True'}">
                                                        <td>
                                                            <span class="label label-success">hoạt động</span>
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${contact.status == 'False'}">
                                                        <td>
                                                            <span class="label label-warning">Đã khóa</span>
                                                        </td>
                                                    </c:if>
                                                <td>
                                                    <!-- <button type="submit" class="btn btn-block btn-primary" value=""><i class=" fa-eye"></i></button> -->
                                                    <a href=""><span class="fa fa-eye" style="color: #008d4c;padding:0px 10px"></span></a>
                                                    <a href="<%=request.getContextPath()%>/initUpdatePost.htm?postId=${post.postId}"><span class="fa fa-pencil-square-o" title="" style="color:#00a7d0;padding:0px 10px"></span></a>
                                                    <a href="<%=request.getContextPath()%>/deletePost.htm?postId=${post.postId}"><span class="glyphicon glyphicon-trash" title="" style="color:#dd4b39;padding:0px 7px"></span></a>
                                                </td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                        </div>
                    </div>
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
            <jsp:include page="footer-admin.jsp"/>
            <div class="control-sidebar-bg"></div>
        </div>    
    </body>
</html>
