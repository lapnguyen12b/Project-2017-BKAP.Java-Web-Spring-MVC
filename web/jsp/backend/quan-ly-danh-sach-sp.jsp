<%-- 
    Document   : quan-ly-danh-sach-sp
    Created on : Sep 21, 2017, 8:40:41 PM
    Author     : LAPNV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>--%>
<%--<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>--%>

<!DOCTYPE html>

<html>
    <jsp:include page="head-admin.jsp"/>
    <body class="skin-blue sidebar-mini">
        <div class="wrapper">
            <jsp:include page="header-admin.jsp"/>
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Quản lý Danh Mục Sản Phẩm
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                        <li class="active">Danh Mục Sản Phẩm</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-success">
                                <div class="box-header">
                                    <h3 class="box-title">Danh Mục Sản phẩm</h3>
                                </div><!-- /.box-header -->
                                <div class="row">
                                    <div class="col-md-3">
                                        <div style="margin-left: 10px;">
                                            <!-- <button type="" class="btn btn-block btn-primary" style="width: 150px;">Thêm mới Sản Phẩm</button> -->
                                            <a href="<%=request.getContextPath()%>/them-moi-danh-muc.htm" class="btn btn-success btn-block margin-bottom" title="Thêm mới Danh mục">
                                                Thêm mới Danh mục
                                                <!--<span class="glyphicon glyphicon-plus"></span>-->
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!-- Single button -->
                                <div>
                                    <ul>
                                        <li><a href=""></a></li>
                                    </ul>
                                </div>
                                <!-- Single button -->
                                <div class="box-body">
                                    <div class="row">
                                        <table id="example1" class="table table-bordered table-striped">
                                            <thead>
                                                <tr>
                                                    <th>#Mã Danh mục</th>
                                                    <th>Tên Danh Mục</th>
                                                    <th>Chú thích</th>
                                                    <th>Danh mục cha</th>
                                                    <th>Trạng thái</th>
                                                    <th>Chức năng</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%--<c:forEach items="${Listcatalog}" begin="1" end="5" var="ListCatalog"></c:forEach>--%>
                                                <c:forEach items="${listCatalog}" var="catalog">
                                                        <!-- tự  phân trang khi thêm DL -->
                                                    <tr>
                                                        <td>${catalog.catalogId}</td>
                                                        <td>${catalog.catalogName}</td>
                                                        <td>${catalog.description}</td>
                                                        <td>${catalog.parentId}</td>
                                                        <c:if test="${catalog.status == 'True'}">
                                                            <td>
                                                                <span class="label label-success">Kích hoạt</span>
                                                            </td>
                                                        </c:if>
                                                        <c:if test="${catalog.status == 'False'}">
                                                            <td>
                                                                <span class="label label-danger">Đã khóa</span>
                                                            </td>
                                                        </c:if>
                                                        <!-- <td><span class="label label-success">hoạt động</span></td> -->
                                                        <td>
                                                            <!-- <button type="submit" class="btn btn-block btn-primary" value=""><i class=" fa-eye"></i></button> -->
                                                            <a href=""><span class="fa fa-eye" style="color: #008d4c;padding:0px 10px"></span></a>
                                                            <a href=""><span class="fa fa-pencil-square-o" title="" style="color:#00a7d0;padding:0px 10px"></span></a>
                                                            <a href=""><span class="glyphicon glyphicon-trash" title="" style="color:#dd4b39;padding:0px 7px"></span></a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </tbody>
                                        </table>
                                            
                                    </div>
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
