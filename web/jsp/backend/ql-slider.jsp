<%-- 
    Document   : ql-slider
    Created on : Sep 21, 2017, 9:08:12 PM
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
                        Quản lý Slider
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                        <li class="active">Quản lý silder</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-success">
                                <div class="box-header">
                                    <h3 class="box-title">Danh sách Slider</h3>
                                    <div class="box-tools">
                                        <div class="input-group" style="width: 150px;">
                                            <input type="text" name="table_search" class="form-control input-sm pull-right" placeholder="Tìm kiếm" />
                                            <div class="input-group-btn">
                                                <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                            </div>
                                        </div>
                                    </div>
                                </div><!-- /.box-header -->                
                            </div><!-- /.box -->

                        </div>
                    </div>

                    <div class="row">
                        <c:forEach items="${listSlider}" var="slider">
                        <div class="col-xs-6 col-md-3">
                            <h3><span>${slider.sliderId}: </span> ${slider.sliderName}</h3>
                            <a href="#" class="thumbnail">
                                <!--<img src="img/nuituyet.jpg" alt="...">-->
                                <img title="${slider.sliderName}" src="<%=request.getContextPath()%>/jsp/frontend/image/slider/${slider.images}"/>
                            </a>
                            <div class="col-md-4">
                                <a href=""><span class="fa fa-eye" style="color: #008d4c;padding:0px 10px"></span></a>
                            </div>
                            <div class="col-md-4">
                                <a href="<%=request.getContextPath()%>/initUpdateSlider.htm?sliderId=${slider.sliderId}"><span class="fa fa-pencil-square-o" title="" style="color:#00a7d0;padding:0px 10px"></span></a>
                            </div>
                            <div class="col-md-4">
                                <a href="<%=request.getContextPath()%>/deleteSlider.htm?sliderId=${slider.sliderId}"><span class="glyphicon glyphicon-trash" title="" style="color:#dd4b39;padding:0px 7px"></span></a>
                            </div>
                        </div>
                        </c:forEach>
                        <!--Them ảnh-->
                        <div class="col-xs-6 col-md-3">
                            <h3></h3>
                            <a href="<%=request.getContextPath()%>/initInsertSlider.htm" class="thumbnail">
                                <span class="fa fa-plus"></span>
                                Thêm ảnh
                            </a>
                        </div>
                    </div>
                </section><!-- /.content -->
            </div><!-- /.content-wrapper -->
            <jsp:include page="footer-admin.jsp"/>
            <div class="control-sidebar-bg"></div>
        </div>    
    </body>
</html>
