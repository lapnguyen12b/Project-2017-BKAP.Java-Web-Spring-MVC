<%-- 
    Document   : qlhd-don-dat-hang
    Created on : Sep 21, 2017, 8:44:10 PM
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
            <li class="active">Đơn đặt hàng</li>
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
                    <i class="fa fa-globe"></i> Đơn đặt hàng
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
                                <th>Trạng thái</th>
                                <th>Hoạt động</th>
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
                                <td><span class="label label-warning">Chưa giao hàng</span></td>
                                <td>
                                    <button type="" class="btn btn-block btn-success btn-sm">Giao hàng</button>
                                </td>
                            </tr>
                            <tr>
                                <td>1</td>
                                <td>Danh Trung</td>
                                <td>455-981-221</td>
                                <td>ndtrung@gmail.com</td>
                                <td>Sản Phẩm 5 , Sản Phẩm 3</td>
                                <td>20/09/2017</td>
                                <td>$99.50</td>
                                <td><span class="label label-warning">Chưa giao hàng</span></td>
                                <td>
                                    <button type="" class="btn btn-block btn-success btn-sm">Giao hàng</button>
                                </td>
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
        </div><!-- /.row -->
    </section><!-- /.content -->
    <div class="clearfix"></div>
</div><!-- /.content-wrapper -->
