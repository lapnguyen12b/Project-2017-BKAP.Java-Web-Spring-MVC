<%-- 
    Document   : new-sms
    Created on : Sep 21, 2017, 8:39:41 PM
    Author     : LAPNV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Mailbox
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li class="active">Mailbox</li>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-md-3">
                <a href="mailbox.html" class="btn btn-primary btn-block margin-bottom">Quay lại hộp thư đến</a>
                <div class="box box-solid">
                    <div class="box-header with-border">
                        <h3 class="box-title">Thư mục</h3>
                        <div class="box-tools">
                            <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                        </div>
                    </div>
                    <div class="box-body no-padding">
                        <ul class="nav nav-pills nav-stacked">
                            <li><a href="mailbox.html"><i class="fa fa-inbox"></i> Hộp thư đến <span class="label label-primary pull-right">12</span></a></li>
                            <li><a href="#"><i class="fa fa-envelope-o"></i> Đã gửi</a></li>
                            <li><a href="#"><i class="fa fa-file-text-o"></i> Bản thảo</a></li>
                            <li><a href="#"><i class="fa fa-trash-o"></i> Thùng rác</a></li>
                        </ul>
                    </div><!-- /.box-body -->
                </div><!-- /. box -->
            </div><!-- /.col -->
            <div class="col-md-9">
                <div class="box box-primary">
                    <div class="box-header with-border">
                        <h3 class="box-title">Soạn tin nhắn mới</h3>
                    </div><!-- /.box-header -->
                    <div class="box-body">
                        <div class="form-group">
                            <input class="form-control" placeholder="To:" />
                        </div>
                        <div class="form-group">
                            <input class="form-control" placeholder="Subject:" />
                        </div>
                        <div class="form-group">
                            <textarea id="compose-textarea" class="form-control" style="height: 300px"></textarea>
                        </div>
                        <div class="form-group">
                            <div class="btn btn-default btn-file">
                                <i class="fa fa-paperclip"></i> Tập tin đính kèm
                                <input type="file" name="attachment" />
                            </div>
                            <p class="help-block">Giới hạn : 32MB</p>
                        </div>
                    </div><!-- /.box-body -->
                    <div class="box-footer">
                        <div class="pull-right">
                            <button class="btn btn-default"><i class="fa fa-pencil"></i> Loại bỏ</button>
                            <button type="submit" class="btn btn-primary"><i class="fa fa-envelope-o"></i> Gửi</button>
                        </div>
                        <button class="btn btn-default"><i class="fa fa-times"></i> Hủy</button>
                    </div><!-- /.box-footer -->
                </div><!-- /. box -->
            </div><!-- /.col -->
        </div><!-- /.row -->
    </section><!-- /.content -->
</div><!-- /.content-wrapper -->