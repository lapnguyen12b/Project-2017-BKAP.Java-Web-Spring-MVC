<%-- 
    Document   : thanhtoan
    Created on : Oct 22, 2017, 9:57:19 PM
    Author     : LAPNV
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="vi">
    <jsp:include page="head.jsp"/>
    <body id="offcanvas-container" class="offcanvas-container common-home page-common-home layout-fullwidth">
        <section class="row-offcanvas row-offcanvas-left offcanvas-pusher">
            <div id="page">
                <jsp:include page="header.jsp"/>
                
<script type="text/javascript" src="https://use.fontawesome.com/688ea2e4eb.js"></script>
<link href="jsp/frontend/css/checkout.css" rel="stylesheet" />

<div class="container">
    <ul class="breadcrumb">
        <li><a href=""><i class="fa fa-home"></i></a></li>
        <li><a href="#">Thanh toán</a></li>
    </ul>
    <div class="row">
        <div id="content" class="col-sm-12">
            <div class="row">
                <div class="col-sm-8">
                    <div class="login-page">
                        <span id="show_form_error">
                        </span>
                        <form action="" method="post">
                            
                                <input type="radio" onclick="" name="customer_type" value="1" id="customer_new" /> <label for="customer_new" style="cursor: pointer;">Tôi là khách hàng mới</label>
                            <br />
                                <input type="radio" onclick="" name="customer_type" value="0" id="customer_old" checked/> <label for="customer_old" style="cursor: pointer;">Tôi đã có tài khoản</label>
                            <br />
                            <br />
                            <h4>Vui lòng điền Email của bạn</strong></h4>
                                <input type="email" name="email" id="email" class="form-control" value="" placeholder="Email của bạn"/>
                            <br />
                                <input type="password" name="password" id="password" value="" placeholder="Mật khẩu của tôi" class="form-control"/>
<!--                            <br />
                                <a href="https://foodstore.myzozo.net/index.php?route=account/forgotten">Quên mật khẩu?</a>-->
                            <br />
                            <br />
                                <a href="<%=request.getContextPath()%>/preOrder.htm" onclick="return validateForm()" id="button" class="btn btn-primary" style="width: 100%;">TIẾP TỤC THANH TOÁN</a>
                            <br />
                        </form>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><i class="fa fa-shopping-cart" aria-hidden="true"></i> Giỏ hàng</h3>
                        </div>                        
                        <div class="panel-body">
                            <c:forEach items="<%=request.getSession().getAttribute("listCart")%>" var="cart">
                                <table class="table">
                                    <tr>
                                        <td class="text-left">
                                            <img src="<%=request.getContextPath()%>/jsp/frontend/image/products/${cart.product.images}" alt="${cart.product.productName}" title="${cart.product.productName}" style="float: left; margin-right: 10px;width: 80;height: 94px"/>${cart.product.productName}
                                        </td>
                                        <td class="text-right"><fmt:formatNumber maxFractionDigits="3">${cart.product.price}</fmt:formatNumber>đ
                                            <br />
                                            x${cart.quantity}<br />
                                            <fmt:formatNumber maxFractionDigits="3">${cart.product.price*cart.quantity}</fmt:formatNumber>đ
                                        </td>
                                    </tr>
                                </table>                                        
                            </c:forEach>
                                <table class="table">
                                    <tr>
                                        <td class="text-left">Thành tiền</td>
                                        <td class="text-right">
                                            <strong style="font-size: 13px; ">${total}đ</strong>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="text-left">Tổng số</td>
                                        <td class="text-right">
                                            <strong style="font-size: 13px; color: #d60c0c; font-size: 16px;">${total}đ</strong>
                                        </td>
                                    </tr>
                                </table>
                        </div>
                    </div>
                </div>
            </div><!-- /.row -->
        </div> <!-- /#content -->
    </div>
</div><!-- /.container -->

<script type="text/javascript"><!--
    function validateForm() {
        if (this.value == 0) {
            if ($('#email').val() == '') {
                $('#show_form_error').html('<div id="load_error">Địa chỉ Email không được để trống!</div>');
                $('#email').focus();
                return false;
            }
        return true;
        }
    }
    //-->
</script>
    <script type="text/javascript"><!--
                        $(document).on('change', 'input[name=\'customer_type\']', function () {
        var button_checkout_continue = "TIẾP TỤC THANH TOÁN";
        var button_login_checkout = "ĐĂNG NHẬP & ĐẶT HÀNG";

        if (this.value == 1) {
            $('#password').prop('disabled', true);
            $('#email').prop('disabled', true);
            $("#button").html(button_checkout_continue);
        } else {
            $('#password').prop('disabled', false);
            $("#button").html(button_login_checkout);
        }
    });

    $(document).ready(function () {
        var button_checkout_continue = "TIẾP TỤC THANH TOÁN";
        var button_login_checkout = "ĐĂNG NHẬP & ĐẶT HÀNG";

        var customer_type_value = $('input[name="customer_type"]:checked').val();

        if (customer_type_value == 1) {
            $('#password').prop('disabled', true);
            $('#email').prop('disabled', true);
            $("#button").html(button_checkout_continue);
        } else {
            $('#password').prop('disabled', false);
            $("#button").html(button_login_checkout);
        }
    });
    //    -->
</script>
                <jsp:include page="footer.jsp"/>
                <jsp:include page="copyright.jsp"/>
            </div> <!--/#page-->
        </section>
        <div id="fb-root"></div>
    </body>
</html>
