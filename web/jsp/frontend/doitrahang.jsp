<%-- 
    Document   : doitrahang
    Created on : Sep 14, 2017, 7:09:55 PM
    Author     : LAPNV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="container">
    <ul class="breadcrumb">
        <li><a href="index.html"> <i class="fa fa-home"></i></a></li>
        <li><a href="login.html?route=account/account"> Tài khoản</a></li>
        <li><a href="doi-tra-hang.html"> Đổi / Trả hàng</a></li>
    </ul>
    <div class="row">
        <section id="sidebar-main" class="col-sm-9">
            <div id="content">
                <h1>Đổi / Trả hàng</h1>
                <p>Vui lòng nhập thông tin bên dưới để yêu cầu mã số RMA.</p>
                <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                    <fieldset>
                        <legend>Thông tin Đơn hàng</legend>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-firstname">Họ & Tên đệm</label>
                            <div class="col-sm-10">
                                <input type="text" name="firstname" value="" placeholder="Họ & Tên đệm" id="input-firstname" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-lastname">Tên</label>
                            <div class="col-sm-10">
                                <input type="text" name="lastname" value="" placeholder="Tên" id="input-lastname" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-email">Email</label>
                            <div class="col-sm-10">
                                <input type="text" name="email" value="" placeholder="Email" id="input-email" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-telephone">Điện thoại</label>
                            <div class="col-sm-10">
                                <input type="text" name="telephone" value="" placeholder="Điện thoại" id="input-telephone" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-order-id">ID Đơn hàng</label>
                            <div class="col-sm-10">
                                <input type="text" name="order_id" value="" placeholder="ID Đơn hàng" id="input-order-id" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-date-ordered">Ngày tạo Đơn hàng</label>
                            <div class="col-sm-3">
                                <div class="input-group date">
                                    <input type="text" name="date_ordered" value="" placeholder="Ngày tạo Đơn hàng" data-date-format="YYYY-MM-DD" id="input-date-ordered" class="form-control" />
                                    <span class="input-group-btn">
                                        <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend>Thông tin Sản phẩm</legend>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-product">Sản phẩm</label>
                            <div class="col-sm-10">
                                <input type="text" name="product" value="" placeholder="Sản phẩm" id="input-product" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label" for="input-model">Mã Sản phẩm</label>
                            <div class="col-sm-10">
                                <input type="text" name="model" value="" placeholder="Mã Sản phẩm" id="input-model" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-quantity">Số lượng</label>
                            <div class="col-sm-10">
                                <input type="text" name="quantity" value="1" placeholder="Số lượng" id="input-quantity" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label">Lý do Đổi / Trả</label>
                            <div class="col-sm-10">
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="return_reason_id" value="4" />
                                        Có lỗi, yêu cầu cung cấp thông tin chi tiết
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="return_reason_id" value="1" />
                                        Hàng lỗi khi nhận hàng</label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="return_reason_id" value="5" />
                                        Khác, vui lòng cung cấp thông tin chi tiết</label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="return_reason_id" value="2" />
                                        Xác nhận có lỗi</label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="return_reason_id" value="3" />
                                        Đơn hàng lỗi</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group required">
                            <label class="col-sm-2 control-label">Sản phẩm đã được mở</label>
                            <div class="col-sm-10">
                                <label class="radio-inline">
                                    <input type="radio" name="opened" value="1" />Có
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="opened" value="0" checked="checked" />Không
                                </label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label" for="input-comment">Lỗi hoặc lý do khác</label>
                            <div class="col-sm-10">
                                <textarea name="comment" rows="10" placeholder="Lỗi hoặc lý do khác" id="input-comment" class="form-control"></textarea>
                            </div>
                        </div>
                    </fieldset>

                    <div class="buttons clearfix">
                        <div class="pull-left">
                            <a href="" class="btn btn-default">Quay lại</a>
                        </div>
                        <div class="pull-right">
                            <input type="submit" value="Gửi đi" class="button btn btn-theme-default" />
                        </div>
                    </div>
                </form>
            </div>
        </section>
        <aside id="sidebar-right" class="col-sm-3">
            <div id="column-right" class="hidden-xs sidebar">
                <div class="box box-normal theme account">
                    <div class="box-heading"><span>Tài khoản</span></div>
                    <div class="box-content">
                        <ul class="box-account box-panel">
                            <li><a href="login.html">Đăng nhập</a></li>
                            <li><a href="register.html">Đăng ký</a></li>
                            <li><a href="">Quên mật khẩu</a></li>
                            <li><a href="">Tài khoản</a></li>
                            <li><a href="">Sổ địa chỉ</a></li>
                            <li><a href="">Danh sách Yêu thích</a></li>
                            <li><a href="">Lịch sử Đơn hàng</a></li>
                            <li><a href="">Tải xuống</a></li>
                            <li><a href="">Điểm thưởng</a></li>
                            <li><a href="">Đổi / Trả</a></li>
                            <li><a href="">Giao dịch</a></li>
                            <li><a href="">Nhận thư</a></li>
                            <li><a href="">Thanh toán định kỳ</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </aside>
    </div>
</div>
<script type="text/javascript"><!--
                                                                                $('.date').datetimepicker({
        pickTime: false
    });
    //--></script>
