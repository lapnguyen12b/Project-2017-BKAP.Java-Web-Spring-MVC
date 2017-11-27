<%-- 
    Document   : qlhd-da-thanh-toan
    Created on : Sep 21, 2017, 9:01:02 PM
    Author     : LAPNV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Quản lý hóa đơn
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
            <li class="active">Đơn hàng đã thanh toán</li>
        </ol>
    </section>

    <div class="pad margin no-print">
        <div class="callout callout-info" style="margin-bottom: 0!important;">
            <h4><i class="fa fa-info"></i> Chú ý:</h4>
            Trang này đã được nâng cao để in ấn. Nhấp vào nút in tại phía dưới cùng của hoá đơn để kiểm tra.
        </div>
    </div>

    <!-- Main content -->
    <section class="invoice">
        <!-- title row -->
        <div class="row">
            <div class="col-xs-12">
                <h2 class="page-header">
                    <i class="fa fa-globe"></i> Đơn hàng đã thanh toán
                    <!-- <small class="pull-right">Date: 2/10/2014</small> -->
                </h2>
            </div><!-- /.col -->
        </div>
        <!-- info row -->


        <!-- Table row -->
        <div class="row">
            <div class="col-xs-12 table-responsive">
                <div class="box-body">
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>#STT</th>
                                <th>Tên Người dùng</th>
                                <th>SĐT</th>
                                <th>E-mail</th>
                                <th>Mặt hàng đã mua</th>
                                <th>Ngày mua</th>
                                <th>Tổng tiền</th>
                                <th>Hình thức thanh toán</th>
                                <th>Trạng thái</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>2</td>
                                <td>Lap Nguyen</td>
                                <td>455-981-221</td>
                                <td>lapnv@gmail.com</td>
                                <td>Sản Phẩm 1 , Sản Phẩm 2</td>
                                <td>19/09/2017</td>
                                <td>$64.50</td>
                                <td><img src="img/credit/mastercard.png" alt="Mastercard"></td>
                                <td><span class="label label-success">Đã giao hàng</span></td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Danh Trung</td>
                                <td>455-981-221</td>
                                <td>ndtrung@gmail.com</td>
                                <td>Sản Phẩm 5 , Sản Phẩm 3</td>
                                <td>20/09/2017</td>
                                <td>$99.50</td>
                                <td><img src="img/credit/mastercard.png" alt="Mastercard"></td>
                                <td><span class="label label-success">Đã giao hàng</span></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->

        <div class="row">
            <!-- accepted payments column -->
            <div class="col-xs-6">
                <p class="lead">Payment Methods:</p>
                <img src="img/credit/visa.png" alt="Visa"/>
                <img src="img/credit/mastercard.png" alt="Mastercard"/>
                <img src="img/credit/american-express.png" alt="American Express"/>
                <img src="img/credit/paypal2.png" alt="Paypal"/>

            </div><!-- /.col -->
            <div class="col-xs-6">
                <p class="lead">Tổng tiền</p>
                <div class="table-responsive">
                    <table class="table">
                        <tr>
                            <th style="width:50%">Tổng:</th>
                            <td>$250.30</td>
                        </tr>
                        <tr>
                            <th>VAT (9.3%)</th>
                            <td>$10.34</td>
                        </tr>
                        <tr>
                            <th>Vận chuyển:</th>
                            <td>$5.80</td>
                        </tr>
                        <tr>
                            <th>Thành tiền:</th>
                            <td>$265.24</td>
                        </tr>
                    </table>
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->

        <!-- this row will not appear when printing -->
        <div class="row no-print">
            <div class="col-xs-12">
                <a href="invoice-print.html" target="_blank" class="btn btn-default"><i class="fa fa-print"></i> In</a>
                <button class="btn btn-success pull-right"><i class="fa fa-credit-card"></i> Thanh toán</button>
                <button class="btn btn-primary pull-right" style="margin-right: 5px;"><i class="fa fa-download"></i> Tạo PDF</button>
            </div>
        </div>
    </section><!-- /.content -->
    <div class="clearfix"></div>
</div><!-- /.content-wrapper -->
