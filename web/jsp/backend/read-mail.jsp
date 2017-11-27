<%-- 
    Document   : read-mail
    Created on : Sep 21, 2017, 9:09:44 PM
    Author     : LAPNV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Hộp thư
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Email</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-3">
                <a href="compose.html" class="btn btn-primary btn-block margin-bottom">Soạn</a>
                <div class="box box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Thư mục</h3>
                        <div class="box-tools">
                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                    </div>
                    <div class="box-body no-padding">
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="mailbox.html"><i class="fa fa-inbox"></i> Hộp thư <span class="label label-primary pull-right">12</span></a></li>
                            <li><a href="#"><i class="fa fa-envelope-o"></i> Gửi</a></li>
                            <li><a href="#"><i class="fa fa-file-text-o"></i> Bản thảo</a></li>
                            <li><a href="#"><i class="fa fa-trash-o"></i> Thùng rác</a></li>
                        </ul>
                    </div><!-- /.box-body -->
                </div><!-- /. box -->
            </div><!-- /.col -->
            <div class="col-md-9">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Đọc Mail</h3>
                        <div class="box-tools pull-right">
                            <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Previous"><i class="fa fa-chevron-left"></i></a>
                            <a href="#" class="btn btn-box-tool" data-toggle="tooltip" title="Next"><i class="fa fa-chevron-right"></i></a>
                        </div>
                    </div><!-- /.box-header -->
                    <div class="box-body no-padding">
                        <div class="mailbox-read-info">
                            <h3><b>Subject: </b>Project 2017 JW1704M</h3>
                            <h5><b>From: </b>support@almsaeedstudio.com
                                <span class="mailbox-read-time pull-right">15 Feb. 2015 11:03 PM</span></h5>
                        </div><!-- /.mailbox-read-info -->
                        <div class="mailbox-controls with-border text-center">
                            <div class="btn-group">
                                <button class="btn btn-default btn-sm" data-toggle="tooltip" title="Delete"><i class="fa fa-trash-o"></i></button>
                                <button class="btn btn-default btn-sm" data-toggle="tooltip" title="Reply"><i class="fa fa-reply"></i></button>
                                <button class="btn btn-default btn-sm" data-toggle="tooltip" title="Forward"><i class="fa fa-share"></i></button>
                            </div><!-- /.btn-group -->
                            <button class="btn btn-default btn-sm" data-toggle="tooltip" title="Print"><i class="fa fa-print"></i></button>
                        </div><!-- /.mailbox-controls -->
                        <div class="mailbox-read-message">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                                tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                                quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                                consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
                                cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
                                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                        </div><!-- /.mailbox-read-message -->
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <div class="pull-right">
                            <button class="btn btn-default"><i class="fa fa-reply"></i> Trả lời</button>
                            <button class="btn btn-default"><i class="fa fa-share"></i> Chuyển tiếp</button>
                        </div>
                        <button class="btn btn-default"><i class="fa fa-trash-o"></i> Xóa</button>
                        <button class="btn btn-default"><i class="fa fa-print"></i> In</button>
                    </div><!-- /.box-footer -->
                </div><!-- /. box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->
