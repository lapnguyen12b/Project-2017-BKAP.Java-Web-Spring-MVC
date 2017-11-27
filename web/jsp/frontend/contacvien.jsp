<%-- 
    Document   : contacvien
    Created on : Sep 14, 2017, 7:08:40 PM
    Author     : LAPNV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="container">
    <div id="breadcrumb">
        <ol class="breadcrumb container">
            <li><a href="index.html"><span><i class="fa fa-home"></i></span></a></li>
            <li><a href=""><span>Tài khoản</span></a></li>
            <li><a href="cong-tac-vien.html"><span>Đăng nhập</span></a></li>
        </ol>
    </div>
    <div class="row">
        <section id="sidebar-main" class="col-sm-9">
            <div id="content">
                <h1>Chương trình Cộng tác viên</h1>
                <p>FoodStore chương trình đại lý hoàn toàn miễn phí và cho phép thành viên nhận hoa hồng khi đặt liên kết hoặc liên kết trang web quảng cáo sản phẩm nào đó. Bất kì giao dịch mua sản phẩm phát sinh từ liên kết sẽ nhận được phần trăm hoa hồng. Tỉ lệ hoa hồng hiện tại là FoodStore.</p><p>Vui lòng xem trang FAQ để xem chính sách đại lý &amp; điều khoản.</p>
                <div class="row">
                    <div class="col-sm-6">
                        <div class="well">
                            <h2>Cộng tác viên mới</h2>
                            <p><p>Tôi không phải là đại lý.</p><p>Bấm tiếp tục bên dưới để tạo mới tài khoản đại lý. Lưu ý nó không kết nối với tài khoản khách hàng của bạn trên gian hàng.</p></p>
                            <a class="button btn btn-theme-default" href="index5e06.html?route=affiliate/register">Tiếp tục</a></div>
                    </div>
                    <div class="col-sm-6">
                        <div class="well">
                            <h2>Đăng nhập Công tác viên</h2>
                            <p><strong>Tôi là Cộng tác viên.</strong></p>
                            <form action="" method="post" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label class="control-label" for="input-email">Email Cộng tác viên</label>
                                    <input type="text" name="email" value="" placeholder="Email Cộng tác viên" id="input-email" class="form-control" />
                                </div>
                                <div class="form-group">
                                    <label class="control-label" for="input-password">Mật khẩu</label>
                                    <input type="password" name="password" value="" placeholder="Mật khẩu" id="input-password" class="form-control" />
                                    <a href="">Quên mật khẩu</a>
                                </div>
                                <input type="submit" value="Đăng nhập" class="button btn btn-theme-default" />
                                <input type="hidden" name="redirect" value="" />
                            </form>
                        </div>
                    </div>
                </div>
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
