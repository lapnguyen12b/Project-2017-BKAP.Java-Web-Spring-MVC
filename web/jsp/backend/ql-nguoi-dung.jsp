<%-- 
    Document   : ql-nguoi-dung
    Created on : Sep 21, 2017, 9:13:24 PM
    Author     : LAPNV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Quản lý người dùng
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li class="active">Danh sách người dùng</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-success">
                    <div class="box-header">
                        <h3 class="box-title">Danh sách người dùng</h3>
                        <div class="box-tools">
                            <div class="input-group" style="width: 150px;">
                                <input type="text" name="table_search" class="form-control input-sm pull-right" placeholder="Tìm kiếm" />
                                <div class="input-group-btn">
                                    <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </div>
                    </div><!-- /.box-header -->
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
                            </tr><tr>
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
                            </tr><tr>
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
                            </tr><tr>
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
                            </tr><tr>
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
            </div>
        </div>
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
