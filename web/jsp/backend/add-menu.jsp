<%-- 
    Document   : add-menu
    Created on : Sep 21, 2017, 8:53:49 PM
    Author     : LAPNV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>
<html>
    <jsp:include page="head-admin.jsp"/>
    <script type="text/javascript">
        
    </script>
    <body class="skin-blue sidebar-mini">
        <div class="wrapper">
            <jsp:include page="header-admin.jsp"/>
                <!-- Content Wrapper. Contains page content -->
                <div class="content-wrapper">
                    <!-- Content Header (Page header) -->
                    <section class="content-header">
                        <h1>
                            Quản lý Danh mục
                        </h1>
                        <ol class="breadcrumb">
                            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                            <li class="active">Quản lý danh mục</li>
                        </ol>
                    </section>

                    <!-- Main content -->
                    <section class="content">
                        <div class="row">
                            <!-- left column -->
                            <div class="col-md-6">
                                <!-- general form elements -->
                                <div class="box box-danger">
                                    <div class="box-header with-border">
                                        <h3 class="box-title">Thêm mới</h3>
                                    </div><!-- /.box-header -->
                                    <!-- form start -->
                                    <f:form action="initInsertCatalog.htm" commandName="newCatalog">
                                        <div class="box-body">
                                            <div class="form-group">
                                                <label for="catalogName">Tên danh mục</label>
                                                <f:input type="text" path="catalogName" class="form-control" id="catalogName" placeholder="Nhập..."/>
                                                    <%--<f:input path="câtlogName" class="" id="" placehoder="Nhap..."/>--%>
                                            </div>
                                            <div class="form-group">
                                                <label for="description">Noi Dung</label>
                                                <f:input type="text" path="description" class="form-control" id="description" placeholder="Nhập..."/>
                                                    <%--<f:input path="câtlogName" class="" id="" placehoder="Nhap..."/>--%>
                                            </div>
                                            <div class="form-group">
                                                <label for="parentId">Danh mục Cha</label>
                                                <f:select class="form-control" id="sel1" path="parentId">
                                                        <%--<f:option value="0">---------Danh mục Cha----------</f:option>--%>
                                                        <c:forEach items="${catalog}" var="catalog">
                                                            <f:option value="${catalog.catalogId}"  path="parentId">${catalog.catalogName}</f:option>
                                                        </c:forEach>
                                                        
                                                </f:select>
                                            </div>

                                        </div><!-- /.box-body -->

                                        <div class="box-footer">
                                            <div class="pull-left">
                                                <a href="" title="" class="btn btn-block btn-warning btn-sm">Hủy</a>
                                            </div>
                                            <div class="pull-right">
                                                <!--<a href="" title="" class="btn btn-block btn-danger btn-sm">Xác Nhận</a>-->
                                                <!--<input type="submit" value="Xác Nhận" class="btn btn-block btn-danger btn-sm" />-->
                                                <!--<button type="submit" class="btn btn-block btn-danger btn-sm">Thêm mới</button>-->
                                                <f:button type="submit" class="btn btn-block btn-danger btn-sm">Thêm mới</f:button>
                                            </div>
                                        </div>
                                    </f:form>
                                </div><!-- /.box -->
                            </div><!--/.col (left) -->

                            

                        </div>   <!-- /.row -->
                    </section><!-- /.content -->
                </div><!-- /.content-wrapper -->
            <jsp:include page="footer-admin.jsp"/>
            <div class="control-sidebar-bg"></div>
        </div>    
    </body>
</html>