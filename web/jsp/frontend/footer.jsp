<%-- 
    Document   : footer
    Created on : Sep 14, 2017, 10:19:02 AM
    Author     : LAPNV
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
            <footer id="footer">
                <div class="footer-top" id="pavo-footer-top">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-3 col-md-3">
                                <div class="box pav-custom">
                                    <div class="box-heading"><span>Giới thiệu</span></div>
                                    <div class="box-content">
                                        <div class="about-us">
                                            <p><img alt="logo" src="jsp/frontend/image/catalog/logo/logo.png"></p>
                                            <p>Nơi bạn được thưởng thức những món ăn ngon nhất.</p>
                                        </div>
                                        <div class="social">
                                            <ul>
                                                <li>
                                                    <a class="iconbox instagram" data-original-title="instagram" data-placement="top" data-toggle="tooltip" href="#" title=""> 
                                                        <i class="fa fa-instagram">&nbsp;</i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="iconbox youtube" data-original-title="youtube" data-placement="top" data-toggle="tooltip" href="" title="">
                                                        <i class="fa fa-youtube">&nbsp;</i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="iconbox facebook" data-original-title="facebook" data-placement="top" data-toggle="tooltip" href="" title="">
                                                        <i class="fa fa-facebook">&nbsp;</i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="iconbox google-plus" data-original-title="google-plus" data-placement="top" data-toggle="tooltip" href="" title="">
                                                        <i class="fa fa-google-plus">&nbsp;</i>
                                                    </a>
                                                </li>
                                                <li>
                                                    <a class="iconbox twitter" data-original-title="twitter" data-placement="top" data-toggle="tooltip" href="" title="">
                                                        <i class="fa fa-twitter">&nbsp;</i>
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3">
                                <div class="box gallery">
                                    <!--products-->
                                    <div class="box-heading"><span>Sản phẩm Mới nhất</span></div>
                                        <div class="box-content">
                                            <div class="banner-img">
                                                <c:forEach items="${newProduct}" var="pr">
                                                <!--<a href="" class="group" title="">-->
                                                    <a href="<%=request.getContextPath()%>/jsp/frontend/image/products/${pr.images}" class="group1097535769" title="${pr.productName}">
                                                        <img alt="${pr.productName}" src="<%=request.getContextPath()%>/jsp/frontend/image/products/${pr.images}" title="${pr.productName}" style="width:79px;height: 79px" />
                                                    </a>
                                                <!--<a href="" class="group" title="">-->
                                                </c:forEach>
                                            </div>
                                        </div>
                                                                                                <script type="text/javascript">
                                                                                                    $(document).ready(function () {
                                                                                                        $('.banner-img').magnificPopup({
                                                                                                            type: 'image',
                                                                                                            delegate: 'a',
                                                                                                            gallery: {
                                                                                                                enabled: true
                                                                                                            }
                                                                                                        });
                                                                                                    });
                                                                                                </script>
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-3">
                                <div class="box pav-block bloglatest">
                                    <!--news-->
                                    <div class="box-heading"><span>Xem Nhiều</span></div>
                                    <div class="pavblog-latest clearfix">
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 pavblock">
                                                <div class="blog-item">
                                                    <div class="blog-body clearfix">
                                                        <div class="image clearfix">
                                                            <img src="jsp/frontend/image/cache/catalog/tin-tuc/tin-tuc/img-blog2-70x27.jpg" title="Làm thạch trái cây cho ngày hè" alt="Làm thạch trái cây cho ngày hè" class="img-responsive" />
                                                        </div>
                                                        <div class="group-blog">
                                                            <div class="blog-title">
                                                                <a href="lam-thach-trai-cay-cho-ngay-he.html" title="Làm thạch trái cây cho ngày hè">Làm thạch trái cây cho ngày hè</a>
                                                            </div>
                                                            <div class="description">
                                                                <p>
                                                                    ...
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 pavblock">
                                                <div class="blog-item">
                                                    <div class="blog-body clearfix">
                                                        <div class="image clearfix">
                                                            <img src="jsp/frontend/image/cache/catalog/tin-tuc/tin-tuc/img-blog3-70x27.jpg" title="Những loại trái cây làm dịu cơn nóng của mùa hè!" alt="Những loại trái cây làm dịu cơn nóng của mùa hè!" class="img-responsive" />
                                                        </div>
                                                        <div class="group-blog">
                                                            <div class="blog-title">
                                                                <a href="nhung-loai-trai-cay-lam-diu-con-nong-cua-mua-he.html" title="Những loại trái cây làm dịu cơn nóng của mùa hè!">Những loại trái cây làm dịu cơn nóng của mùa hè!</a>
                                                            </div>
                                                            <div class="description">
                                                                <p>
                                                                    ...
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-lg-12 col-md-12 pavblock">
                                                <div class="blog-item">
                                                    <div class="blog-body clearfix">
                                                        <div class="image clearfix">
                                                            <img src="jsp/frontend/image/cache/catalog/tin-tuc/tin-tuc/img-blog1-70x27.jpg" title="Chọn thực phẩm sạch, an toàn cho người tiêu dùng." alt="Chọn thực phẩm sạch, an toàn cho người tiêu dùng." class="img-responsive" />
                                                        </div>
                                                        <div class="group-blog">
                                                            <div class="blog-title">
                                                                <a href="chon-thuc-pham-sach-an-toan-cho-nguoi-tieu-dung.html" title="Chọn thực phẩm sạch, an toàn cho người tiêu dùng.">Chọn thực phẩm sạch, an toàn cho người tiêu dùng.</a>
                                                            </div>
                                                            <div class="description">
                                                                <p>
                                                                    ...
                                                                </p>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-center" id="pavo-footer-center">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 box">
                                <div class="box pav-custom column">
                                    <div class="box-heading"><span>Liên hệ</span></div>
                                    <ul>
                                        <li>
                                            <span class="iconbox button"><i class="fa fa-map-marker">&nbsp;</i></span>
                                            <span>Địa chỉ: 123 - Cau Giay - Ha Noi</span>
                                        </li>
                                        <li>
                                            <span class="iconbox button"><i class="fa fa-mobile-phone">&nbsp;</i></span>
                                            <span>Điện thoại: 0123 456 789</span>
                                        </li>
                                        <li>
                                            <span class="iconbox button"><i class="fa fa-envelope-o">&nbsp;</i></span>
                                            <span>Email: abc@123.com</span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12 box column">
                                <div class="box-heading"><span>Thông tin</span></div>
                                <ul class="list-unstyled">
                                    <li><a href="about.htm">Về Chúng Tôi</a></li>
                                    <li><a href="thong-tin-giao-hang.html">Thông Tin Giao Hàng</a></li>
                                    <li><a href="<%=request.getContextPath()%>/bao-mat.htm">Chính sách bảo mật</a></li>
                                    <li><a href="dieu-khoan-dich-vu.html">Điều khoản dịch vụ</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12 box column">
                                <div class="box-heading"><span>Dịch vụ</span></div>
                                <ul class="list-unstyled">
                                    <li><a href="lienhe.htm">Liên hệ</a></li>
                                    <li><a href="doi-tra-hang.html">Đổi / Trả hàng</a></li>
                                    <li><a href="lienhe.htm">Bản đồ</a></li>
                                    <li><a href="phieu-qua-tang.html">Phiếu Quà tặng</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-2 col-md-2 col-sm-6 col-xs-12 box column">
                                <div class="box-heading"><span>Thông tin thêm</span></div>
                                <ul class="list-unstyled">
                                    <li><a href="thuong-hieu.html">Thương hiệu</a></li>
                                    <li><a href="phieu-qua-tang.html">Phiếu Quà tặng</a></li>
                                    <li><a href="cong-tac-vien.html?route=affiliate/account">Cộng tác viên</a></li>
                                    <li><a href="khuyen-mai-dac-biet.html">Sản phẩm Đặc biệt</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 box column">
                                <div class="pav-newsletter newsletter_block" id="newsletter_2023538668">
                                    <div class="title_block">Đăng ký nhận tin</div>
                                    <div class="description">Đăng ký email để nhanh chóng nhận được các thông báo về khuyến mại, chương trình giảm giá của chúng tôi</div>
                                    <div class="block_content">
                                        <form id="formNewLestter2023538668" method="post" class="formNewLestter">
                                            <input type="text" placeholder="Email..." class="form-control inputNew" size="18" name="email" id="email" />
                                            <button type="submit" name="submitNewsletter" class="button_mini btn btn-theme-primary" value="Đăng ký!">Đăng ký!</button>

                                            <input type="hidden" value="1" name="action" />
                                            <div class="valid space-top-10"></div>
                                        </form>
                                    </div>
                                </div>

    <script type="text/javascript"><!--
                    $(document).ready(function () {
                        var id = 'newsletter_2023538668';
                        $('#' + id + ' .box-heading').bind('click', function () {
                            $('#' + id).toggleClass('active');
                        });
                        $('#formNewLestter2023538668').on('submit', function () {
                            var email = $('#formNewLestter2023538668 .inputNew').val();
                            $(".success_inline, .warning_inline, .error").remove();
                            if (!isValidEmailAddress(email)) {
                                $('.valid').html("<div class=\"error alert alert-danger\">Email không hợp lệ<button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button></div></div>");
                                $('.email').focus();
                                return false;
                            }
                            var url = "indexd801.json?route=tool/newsletter";
                            $.ajax({
                                type: "post",
                                url: url,
                                data: $("#formNewLestter2023538668").serialize(),
                                dataType: 'json',
                                success: function (json) {
                                    $(".success_inline, .warning_inline, .error").remove();
                                    if (json['error']) {
                                        $('.valid').html("<div class=\"warning_inline alert alert-danger\">" + json['error'] + "<button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button></div>");
                                    }
                                    if (json['success']) {
                                        $('.valid').html("<div class=\"success_inline alert alert-success\">" + json['success'] + "<button type=\"button\" class=\"close\" data-dismiss=\"alert\">×</button></div>");
                                    }
                                }
                            });
                            return false;
                        }); //end submmit
                    }); //end document

                    function isValidEmailAddress(emailAddress) {
                        var pattern = new RegExp(/^(("[\w-\s]+")|([\w-]+(?:\.[\w-]+)*)|("[\w-\s]+")([\w-]+(?:\.[\w-]+)*))(@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$)|(@\[?((25[0-5]\.|2[0-4][0-9]\.|1[0-9]{2}\.|[0-9]{1,2}\.))((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\.){2}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[0-9]{1,2})\]?$)/i);
                        return pattern.test(emailAddress);
                    }
-->
                </script>
                            </div>
                        </div>
                    </div>
                </div> <!-- /#pavo-footer-center -->
        <!--bottom have nothing-->
                <div class="footer-bottom " id="pavo-footer-bottom">
                    <div class="container">
                        <div class="row">

                        </div>
                    </div>
                </div>
            </footer>
