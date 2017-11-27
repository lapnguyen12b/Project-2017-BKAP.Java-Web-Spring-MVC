<%-- 
    Document   : updateSlider
    Created on : Oct 14, 2017, 9:29:48 PM
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
                        Chỉnh Sửa Slider
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                        <li><a href="#">Danh sách slider</a></li>
                        <li class="active">Chỉnh sửa Slider</li>
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
                                <f:form action="updateSlider.htm" commandName="updateSlider" onsubmit="return" enctype="multipart/form-data" method="post">
                                    <div class="box-body">
                                          <div class="form-group">
                                            <label for="sliderId">Mã Slider</label>
                                            <f:input type="text" path="sliderId" id="sliderId" class="form-control" readonly="true"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="sliderName">Tên Slider</label>
                                            <f:input type="text" path="sliderName" class="form-control" id="sliderName" placeholder="Nhập Tên Slider..."/>
                                        </div>
                                        <div class="form-group">
                                            <label for="images">Ảnh</label>
                                            <f:input type="file" id="images" path="images"/>
                                        </div>
<!--                                        <div class="form-group">
                                            <label for="status">Trạng thái</label>
                                            <input type="text" path="status" class="form-control" id="status" placeholder="Nhập Trạng thái..."/>
                                        </div>-->
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