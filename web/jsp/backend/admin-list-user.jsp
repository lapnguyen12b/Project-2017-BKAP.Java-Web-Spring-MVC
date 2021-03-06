<%-- 
    Document   : admin-list-user
    Created on : Sep 21, 2017, 8:54:50 PM
    Author     : LAPNV
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                        Quản lý các Admin
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                        <li class="active">Danh sách Admin</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-danger">
                                <div class="box-header">
                                    <h3 class="box-title">Danh sách Admin</h3>
<!--                                    <div class="row">
                                        <div class="col-md-3">
                                            <div>
                                                <a href="general.html" class="btn btn-primary btn-block margin-bottom">Thêm mới Admin</a>
                                            </div>
                                        </div>
                                    </div>-->
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
                                                <th>Tên Admin</th>
                                                <th>Anh</th>
                                                <th>PassWord</th>
                                                <th>Email</th>
                                                <th>SĐT</th>
                                                <th>Ngay Tao</th>
                                                <th>Trạng thái</th>
                                                <th>Chức năng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- tự  phân trang khi thêm DL -->
                                            <c:forEach items="${listAdmin}" var="admin">
                                                <tr>
                                                    <td>${admin.adminId}</td>
                                                    <td>${admin.adminName}</td>
                                                    <td><img title="${admin.image}" src="<%=request.getContextPath()%>/jsp/backend/img/${admin.image}" style="width:100px;height:100px;" /></td>
                                                    <td>${admin.passWord}</td>
                                                    <td>${admin.email}</td>
                                                    <td>${admin.phone}</td>
                                                    <td>${admin.create}</td>
                                                    <c:if test="${admin.status == 'True'}">
                                                        <td>
                                                            <span class="label label-success">hoạt động</span>
                                                        </td>
                                                    </c:if>
                                                    <c:if test="${admin.status == 'False'}">
                                                        <td>
                                                            <span class="label label-warning">Đã khóa</span>
                                                        </td>
                                                    </c:if>
                                                    <td>
                                                        <!-- <button type="submit" class="btn btn-block btn-primary" value=""><i class=" fa-eye"></i></button> -->
                                                        <a href=""><span class="fa fa-eye" style="color: #008d4c;padding:0px 10px"></span></a>
                                                        <a href="initUpdateAdmin.htm?adminId=${admin.adminId}"><span class="fa fa-pencil-square-o" title="" style="color:#00a7d0;padding:0px 10px"></span></a>
                                                        <a href="deleteAdmin.htm?adminId=${admin.adminId}"><span class="glyphicon glyphicon-trash" title="" style="color:#dd4b39;padding:0px 7px"></span></a>
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
