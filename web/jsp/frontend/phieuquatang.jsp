<%-- 
    Document   : phieuquatang
    Created on : Sep 14, 2017, 7:16:07 PM
    Author     : LAPNV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="container">
    <div id="breadcrumb">
        <ol class="breadcrumb container">
            <li><a href="index.html"><span><i class="fa fa-home"></i></span></a></li>
            <li><a href="login.html?route=account/account"><span>Tài khoản</span></a></li>
            <li><a href="phieu-qua-tang.html"><span>Phiếu quà tặng</span></a></li>
        </ol>
    </div>
    <div class="row">
        <section id="sidebar-main" class="col-sm-9">
            <div id="content">
                <h1>Mua phiếu quà tặng</h1>
                <p>Phiếu quà tặng này sẽ được gửi qua email đến người nhận sau khi đơn đặt hàng của bạn đã được trả tiền</p>
                <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-to-name">Tên người nhận</label>
                        <div class="col-sm-10">
                            <input type="text" name="to_name" value="" id="input-to-name" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-to-email">Email người nhận</label>
                        <div class="col-sm-10">
                            <input type="text" name="to_email" value="" id="input-to-email" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-from-name">Tên của bạn</label>
                        <div class="col-sm-10">
                            <input type="text" name="from_name" value="" id="input-from-name" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label" for="input-from-email">Email của bạn</label>
                        <div class="col-sm-10">
                            <input type="text" name="from_email" value="" id="input-from-email" class="form-control" />
                        </div>
                    </div>
                    <div class="form-group required">
                        <label class="col-sm-2 control-label">Mẫu phiếu quà tặng</label>
                        <div class="col-sm-10">
                            <div class="radio">
                                <label>
                                    <input type="radio" name="voucher_theme_id" value="7" />Birthday
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="voucher_theme_id" value="6" />Christmas
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" name="voucher_theme_id" value="8" />General
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-message"><span data-toggle="tooltip" title="Không bắt buộc">Tin nhắn</span></label>
                        <div class="col-sm-10">
                            <textarea name="message" cols="40" rows="5" id="input-message" class="form-control"></textarea>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-2 control-label" for="input-amount"><span data-toggle="tooltip" title="Số tiền phải từ 1đ đến 1,000đ">Số tiền</span></label>
                        <div class="col-sm-10">
                            <input type="text" name="amount" value="1" id="input-amount" class="form-control" size="5" />
                        </div>
                    </div>
                    <div class="buttons clearfix">
                        <div class="pull-right"> Tôi hiểu việc Quà tặng không thể hoàn lại.
                            <input type="checkbox" name="agree" value="1" />&nbsp;
                            <input type="submit" value="Tiếp tục" class="button btn btn-theme-default" />
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
