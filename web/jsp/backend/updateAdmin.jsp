    <!--Document   :updateAdmin    -->
    <!--Created on : Sep 21, 2017, 8:41:35 PM-->
    <!--Author     : LAPNV-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>

<html>
    <jsp:include page="head-admin.jsp"/>
    <body class="skin-blue sidebar-mini">
        <div class="wrapper">
            <jsp:include page="header-admin.jsp"/>
            <div class="content-wrapper">
                <section class="content-header">
                    <h1>
                        Chỉnh Sửa Admin
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                        <li><a href="#">Danh sách Admin</a></li>
                        <li class="active">Chỉnh sửa</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <!-- left column -->
                        <div class="col-md-offset-1 col-md-10">
                            <!-- general form elements -->
                            <div class="box box-primary">
                                <div class="box-header with-border">
                                    <h3 class="box-title">Chỉnh sửa</h3>
                                </div><!-- /.box-header -->
                                <!-- form start  enctype="multipart/form-data"-->
                                <f:form action="updateAdmin.htm" commandName="updateAdmin" onsubmit="return" enctype="multipart/form-data" method="post">
                                    <div class="box-body">
                                          <div class="form-group">
                                            <label for="adminId">Mã Admin</label>
                                            <f:input type="text" path="adminId" id="adminId" class="form-control" readonly="true"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="adminName">Tai Tai Khoan</label>
                                            <f:input type="text" path="adminName" class="form-control" id="adminName" readonly="true"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="passWord">Mat khau</label>
                                            <f:input type="text" path="passWord" class="form-control" id="passWord" placeholder="Nhập password..."/>
                                        </div>
                                        <div class="form-group">
                                            <label for="email">E-mail</label>
                                            <f:input type="text" path="email" class="form-control" id="email" placeholder="Nhập email..."/>
                                        </div>
                                        <div class="form-group">
                                            <label for="phone">SDT</label>
                                            <f:input type="number" path="phone" class="form-control" id="phone" placeholder="Nhập SDT..."/>
                                        </div>
                                        <div class="form-group">
                                            <label for="image">Ảnh</label>
                                            <f:input type="file" id="image" path="image"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="status">Trạng thái</label>
                                            <f:select id="status" class="form-control col-md-7 col-xs-12"  path="status" >
                                                <f:option value="1" >Hoạt động</f:option>
                                                <f:option value="0" >Khóa</f:option>
                                            </f:select>
                                        </div>
                                    </div><!-- /.box-body -->

                                    <div class="box-footer">
                                        <button type="submit" class="btn btn-primary">Cập Nhật</button>
                                    </div>
                                </f:form>
                            </div><!-- /.box -->


                        </div><!--/.col (left) -->
                        <!-- <div class="col-md-6">
                          
                        </div> -->
                        <!--/.col (right) -->
                    </div>   <!-- /.row -->
                </section><!-- /.content -->
            </div>
            <jsp:include page="footer-admin.jsp"/>
            <div class="control-sidebar-bg"></div>
        </div>
    </body>
</html>