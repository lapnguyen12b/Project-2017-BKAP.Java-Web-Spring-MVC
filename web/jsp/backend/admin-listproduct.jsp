<%-- 
    Document   : admin-listproduct
    Created on : Sep 28, 2017, 8:36:32 PM
    Author     : LAPNV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        Quản lý Danh sách Sản Phẩm
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
                        <li class="active">Danh sách Sản Phẩm</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="box box-success">
                                <div class="box-header">
                                    <h3 class="box-title">Danh sách Sản phẩm</h3>
                                </div><!-- /.box-header -->
                                <div class="row">
                                    <div class="col-md-3">
                                        <div style="margin-left: 10px;">
                                            <!-- <button type="" class="btn btn-block btn-primary" style="width: 150px;">Thêm mới Sản Phẩm</button> -->
                                            <a href="general.html" class="btn btn-primary btn-block margin-bottom">Thêm mới Sản Phẩm</a>
                                        </div>
                                    </div>
                                </div>                
                                <div class="box-body">
                                    <table id="example1" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>#ID</th>
                                                <th>Tên Sản Phẩm</th>
                                                <th>Ảnh</th>
                                                <th>Giá</th>
                                                <th>Tiêu đề</th>
                                                <th>Tổng</th>
                                                <th>Trạng thái</th>
                                                <th>Chức năng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <!-- tự  phân trang khi thêm DL -->
                                        <td>101</td>
                                        <td>Gecko</td>
                                        <td>Mozilla 1.3</td>
                                        <td>Win 95+ / OSX.1+</td>
                                        <td>1.3</td>
                                        <td>A</td>
                                        <td><span class="label label-warning">Đã khóa</span></td>
                                        <td>
                                            <!-- <button type="submit" class="btn btn-block btn-primary" value=""><i class=" fa-eye"></i></button> -->
                                            <a href=""><span class="fa fa-eye" style="color: #008d4c;padding:0px 10px"></span></a>
                                            <a href=""><span class="fa fa-pencil-square-o" title="" style="color:#00a7d0;padding:0px 10px"></span></a>
                                            <a href=""><span class="glyphicon glyphicon-trash" title="" style="color:#dd4b39;padding:0px 7px"></span></a>
                                        </td>
                                        </tr>
                                        <tr>
                                            <td>101</td>
                                            <td>Gecko</td>
                                            <td>Mozilla 1.4</td>
                                            <td>Win 95+ / OSX.1+</td>
                                            <td>1.4</td>
                                            <td>A</td>
                                            <td><span class="label label-success">hoạt động</span></td>
                                            <td>
                                                <!-- <button type="submit" class="btn btn-block btn-primary" value=""><i class=" fa-eye"></i></button> -->
                                                <a href=""><span class="fa fa-eye" style="color: #008d4c;padding:0px 10px"></span></a>
                                                <a href=""><span class="fa fa-pencil-square-o" title="" style="color:#00a7d0;padding:0px 10px"></span></a>
                                                <a href=""><span class="glyphicon glyphicon-trash" title="" style="color:#dd4b39;padding:0px 7px"></span></a>
                                            </td>
                                        </tr>

                                        </tbody>
                                    </table>
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
