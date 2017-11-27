    <!--Document   :-->
    <!--Created on : 12-10-2017, 8:41:35 PM-->
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
                        Thêm mới Tin Tuc
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                        <li><a href="#">Danh sách Tin tuc</a></li>
                        <li class="active">Thêm mới Tin tuc</li>
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
                                <f:form action="insertPost.htm" commandName="newPost" onsubmit="return" enctype="multipart/form-data">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label for="postTitle">Tiêu Đề Bài viết</label>
                                            <f:input type="text" path="postTitle" class="form-control" placeholder="Nhập Tiêu đề..."/>
                                        </div>
                                        <div class="form-group">
                                            <label for="content">Nội dung</label>
                                            <div class="box box-info">
                                                <f:textarea path="content" id="content"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="contentDetail">Nội dung chi tiết</label>
                                            <div class="box box-info">
                                                <f:textarea path="contentDetail" id="contentDetail"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="images">Ảnh</label>
                                            <f:input type="file" id="image" path="image"/>
                                        </div>
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
var editor = CKEDITOR.replace( 'content' );//postContent
var editor = CKEDITOR.replace( 'contentDetail' );
//var editor1 = CKEDITOR.replace('productContent');
CKFinder.setupCKEditor(editor,'jsp/ckfinder/');
CKFinder.setupCKEditor(editor1,'jsp/ckfinder/');
</script>  
    </body>
</html>