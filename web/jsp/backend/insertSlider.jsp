<%-- 
    Document   : insertSlider
    Created on : Oct 14, 2017, 9:18:26 PM
    Author     : LAPNV
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%--<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>--%>
<!DOCTYPE html>

<html>
    <jsp:include page="head-admin.jsp"/>
    <body class="skin-blue sidebar-mini">
        <div class="wrapper">
            <jsp:include page="header-admin.jsp"/>
            <div class="content-wrapper">
                <section class="content-header">
                    <h1>
                        Thêm mới Slider
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                        <li><a href="#">Danh sách Slider</a></li>
                        <li class="active">Thêm mới Slider</li>
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
                                    <h3 class="box-title">Thêm mới</h3>
                                </div><!-- /.box-header -->
                                <!-- form start -->
                                <f:form action="insertSlider.htm" commandName="newSlider" onsubmit="return" enctype="multipart/form-data">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label for="sliderName">Tên Slider</label>
                                            <f:input type="text" path="sliderName" class="form-control" placeholder="Nhập Tên slider..."/>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label for="images">Ảnh</label>
                                            <f:input type="file" id="images" path="images"/>
                                        </div>
                                    </div><!-- /.box-body -->

                                    <div class="box-footer">
                                        <button type="submit" class="btn btn-primary">Xác Nhận</button>
                                    </div>
                                </f:form>
                            </div><!-- /.box -->


                        </div>
                    </div>   <!-- /.row -->
                </section><!-- /.content -->
            </div>
            <jsp:include page="footer-admin.jsp"/>
            <div class="control-sidebar-bg"></div>
        </div>
    </body>
</html>
