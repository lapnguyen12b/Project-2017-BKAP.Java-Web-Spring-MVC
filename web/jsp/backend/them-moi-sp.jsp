<!--Document   :-->
    <!--Created on : Sep 21, 2017, 8:41:35 PM-->
    <!--Author     : LAPNV-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!DOCTYPE html>

<html>
    <jsp:include page="head-admin.jsp"/>
    <script src="/Project-2017/jsp/backend/js/sweetalert.min.js" type="text/javascript"></script>
    <script src="/Project-2017/jsp/ckeditor/ckeditor.js" type="text/javascript"></script>
    <script src="/Project-2017/jsp/ckfinder/ckfinder.js" type="text/javascript"></script>
    <body class="skin-blue sidebar-mini">
        <div class="wrapper">
            <jsp:include page="header-admin.jsp"/>
            <div class="content-wrapper">
                <section class="content-header">
                    <h1>
                        Thêm mới Sản Phẩm
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                        <li><a href="#">Danh sách Sản Phẩm</a></li>
                        <li class="active">Thêm mới Sản Phẩm</li>
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
                                <f:form action="initInsertProduct.htm" commandName="newProduct" onsubmit="return" enctype="multipart/form-data">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label for="productName">Tên Sản Phẩm</label>
                                            <f:input type="text" path="productName" class="form-control" placeholder="Nhập tên Sản Phẩm..."/>
                                        </div>
                                        <div class="form-group">
                                            <label for="price">Giá Sản Phẩm</label>
                                            <f:input type="text" path="price" class="form-control" id="exampleInputPrice" placeholder="Nhập Giá Sản Phẩm..."/>
                                        </div>
                                        <div class="form-group">
                                            <label for="discount">Giảm giá</label>
                                            <f:input type="text" path="discount" class="form-control" id="" placeholder="Nhập Giá giam..."/>
                                        </div>
                                        <div class="form-group">
                                            <label for="title">Tiêu đề</label>
                                            <f:input type="text" path="title" class="form-control" id="exampleInputPrice" placeholder="Nhập Tiêu đề Sản Phẩm..."/>
                                        </div>
                                        <!--1-->
                                        <div class="form-group">
                                            <label for="catalogId">Danh muc</label>
                                            <f:select id="catalogId" class="form-control col-md-7 col-xs-12"  path="catalogId" >
                                                <c:forEach items="${catalog}" var="catalog">
                                                <f:option value="${catalog.catalogId}" >${catalog.catalogName}</f:option>
                                              </c:forEach>
                                            </f:select>
                                        </div>
                                        <!--2-->
                                        <div class="form-group">
                                            <label for="content">Nội dung</label>
                                            <div class="box box-info">
                                                <f:textarea path="content" id="content"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="images">Ảnh</label>
                                            <f:input type="file" id="images" path="images"/>
                                        </div>
<!--                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Ngay tao</label>
                                            <input type="date" data-date="" data-date-format="DD-MMMM-YYYY" path="created" class="form-control" id="exampleInputPrice" placeholder="Nhập Ngay tao..."/>
                                        </div>
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Views</label>
                                            <input type="text" path="views" class="form-control" id="exampleInputPrice" placeholder="Nhập view..."/>
                                        </div>-->
                                    </div><!-- /.box-body -->

                                    <div class="box-footer">
                                        <button type="submit" class="btn btn-primary">Xác Nhận</button>
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
<script type="text/javascript">
var editor = CKEDITOR.replace( 'content' );//productContentDetail
//var editor1 = CKEDITOR.replace('productContent');
CKFinder.setupCKEditor(editor,'jsp/ckfinder/');
CKFinder.setupCKEditor(editor1,'jsp/ckfinder/');
</script>  
    </body>
</html>