    <!--Document   :updatePost    -->
    <!--Created on : 13-10-2017, 8:41:35 PM-->
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
                        Chỉnh Sửa Tin Tức
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                        <li><a href="#">Danh sách Tin tức</a></li>
                        <li class="active">Chỉnh sửa Tin tức</li>
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
                                <f:form action="updatePost.htm" commandName="updatePost" onsubmit="return" enctype="multipart/form-data" method="post">
                                    <div class="box-body">
                                          <div class="form-group">
                                            <label for="postId">Mã Bài viết</label>
                                            <f:input type="text" path="postId" id="postId" class="form-control" readonly="true"/>
                                        </div>
                                        <div class="form-group">
                                            <label for="postTitle">Tiêu đề</label>
                                            <f:input type="text" path="postTitle" class="form-control" id="PostTitle" placeholder="Nhập Tiêu đề Tin tức..."/>
                                        </div>
                                        <!--2-->
                                        <div class="form-group">
                                            <label for="content">Nội dung</label>
                                            <div class="box box-info">
                                                <f:textarea path="content" id="content"/>
                                            </div>
                                        </div>
                                            <div class="form-group">
                                            <label for="content">Nội dung chi tiết</label>
                                            <div class="box box-info">
                                                <f:textarea path="contentDetail" id="contentDetail"/>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="image">Ảnh</label>
                                            <f:input type="file" id="image" path="image"/>
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
<script type="text/javascript">
var editor = CKEDITOR.replace( 'content' );//productContentDetail
var editor = CKEDITOR.replace( 'contentDetail' );
//var editor1 = CKEDITOR.replace('productContent');
CKFinder.setupCKEditor(editor,'jsp/ckfinder/');
CKFinder.setupCKEditor(editor1,'jsp/ckfinder/');
</script>  
    </body>
</html>