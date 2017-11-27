<%-- 
    Document   : ql-danh-gia
    Created on : Sep 21, 2017, 9:12:08 PM
    Author     : LAPNV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Quản lý Đánh Giá
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li class="active">Đánh giá</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-success">
                    <div class="box-header">
                        <h3 class="box-title">Bình Luận</h3>
                    </div><!-- /.box-header -->               
                    <div class="box-body">
                        <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>#STT</th>
                                    <th>Tên Người dùng</th>
                                    <th>E-mail</th>
                                    <th>Sản Phẩm</th>
                                    <th>Bình luận</th>
                                    <th>Trạng thái</th>
                                    <th>Chức năng</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- tự  phân trang khi thêm DL -->
                            <td>1</td>
                            <td>Nguyen A</td>
                            <td>Abcv@gmail.com</td>
                            <td>Sinh tố hoa quả</td>
                            <td>Sản Phẩm rất ngon</td>
                            <td><span class="label label-success">Hiện</span></td>
                            <td>
                                <!-- <button type="submit" class="btn btn-block btn-primary" value=""><i class=" fa-eye"></i></button> -->
                                <a href=""><span class="fa fa-eye" style="color: #008d4c;padding:0px 10px"></span></a>
                                <a href=""><span class="fa fa-eye-slash" title="" style="color:#dd4b39;padding:0px 7px"></span></a>
                            </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Nguyen B</td>
                                <td>Bca@gmail.com</td>
                                <td>Sinh tố hoa quả</td>
                                <td>Đắt quá ...</td>
                                <td><span class="label label-warning">Ẩn</span></td>
                                <td>
                                    <!-- <button type="submit" class="btn btn-block btn-primary" value=""><i class=" fa-eye"></i></button> -->
                                    <a href=""><span class="fa fa-eye" style="color: #008d4c;padding:0px 10px"></span></a>
                                    <!-- <a href=""><span class="fa fa-pencil-square-o" title="" style="color:#00a7d0;padding:0px 10px"></span></a> -->
                                    <a href=""><span class="fa fa-eye-slash" title="" style="color:#dd4b39;padding:0px 7px"></span></a>
                                </td>
                            </tr>

                            </tbody>
                        </table>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
