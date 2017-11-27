<%-- 
    Document   : thanhtoan
    Created on : Sep 14, 2017, 7:18:27 PM
    Author     : LAPNV
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
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
                <div class="container">
                    <ul class="breadcrumb">
                        <li><a href="#"><i class="fa fa-home"></i></a></li>
                        <li><a href="#">Thanh toán</a></li>
                    </ul>
                    <div class="row">
                        <div id="content" class="col-sm-12">
                            <div class="row">
                                <f:form action="prePayment.htm" commandName="inOrder">
                                <!--<form method="post" action="" name="state2_form" id="state2_form" enctype="multipart/form-data" class="form-horizontal">-->
                                    <div class="col-sm-8">
                                        <div class="panel panel-default">
                                            
                                            <div class="panel-heading">
                                                <h3 class="panel-title">
                                                    <i class="fa fa-info-circle" aria-hidden="true"></i>
                                                    <span id="titlePayment">Địa chỉ Nhận hàng - Thanh Toán</span>
                                                </h3>
                                            </div>
                                            <div class="panel-body">
                                                <div class="form-group required">
                                                    <label class="control-label col-md-2" for="fullName">Tên đầy đủ</label>
                                                    <div class="col-sm-10">
                                                        <f:input type="text" name="fullName"  path="fullName" id="fullName" placeholder="Ví dụ: Nguyễn Văn A" class="form-control"/>
                                                    </div>
                                                </div>
                                                <div class="form-group required">
                                                    <label class="control-label col-md-2" for="phone">Điện thoại</label>
                                                    <div class="col-md-4">
                                                        <f:input type="number" name="phone" path="phone" id="phone" placeholder="Ví dụ: 01234567890" class="form-control"/>
                                                    </div>
                                                    <label class="control-label col-md-2" for="email">Email</label>
                                                    <div class="col-md-4">
                                                        <f:input type="text" name="email" path="email" id="email" placeholder="Ví dụ: Abc@gmail.com" class="form-control"/>
                                                    </div>
                                                    <hr />
                                                </div>
                                                <div class="form-group required">
                                                    <label class="control-label col-md-2" for="address">Địa chỉ chi tiết</label>
                                                    <div class="col-sm-10">
                                                        <f:input type="text" name="address" path="address" id="address" placeholder="Ví dụ: Số 238, Hoàng Quốc Việt, Q. Cầu Giấy" class="form-control"/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-2" for="sms">Lời nhắn</label>
                                                    <div class="col-sm-10">
                                                        <f:input name="sms" path="sms" id="sms" class="form-control" placeholder="Ví dụ: Chuyển hàng ngoài giờ hành chính"/>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <label class="control-label col-md-2" for="input-comment"></label>
                                                    <div class="col-sm-10">
                                                        <hr/>
                                                    </div>
                                                </div>
<!--                                                <div class="form-group">
                                                    <div class="col-sm-12">
                                                        <div class="adr-oms checkbox">
                                                            <input type="checkbox" name="same_info_as_buyer_toggle" id="is-delivery-address" onclick="showHideDeliveryAddress()" checked/>
                                                            <label for="is-delivery-address"><strong>Địa chỉ nhận hàng và thanh toán giống nhau</strong></label>
                                                        </div>
                                                    </div>
                                                </div>-->
<!--                                                <div id="container-form-address-ship">
                                                    <h4>Thông tin thanh toán</h4>
                                                    <hr/>
                                                    <div class="form-group required">
                                                        
                                                        <label class="control-label col-md-2" for="userName2">Tên đầy đủ</label>
                                                        <div class="col-sm-10">
                                                            <%--<f:input type="text" name="userName2" path="userName2" id="userName2" placeholder="Ví dụ: Nguyễn Văn A" class="form-control"/>--%>
                                                        </div>
                                                    </div>
                                                    <div class="form-group required">
                                                        <label class="control-label col-md-2" for="phone2">Điện thoại</label>
                                                        <div class="col-md-4">
                                                            <%--<f:input type="text" name="phone2" path="phone2" id="phone2" value="" placeholder="Ví dụ: 01234567890" class="form-control"/>--%>
                                                        </div>
                                                        <label class="control-label col-md-2" for="email">Email</label>
                                                        <div class="col-md-4">
                                                            <%--<f:input type="text" name="email" path="email" id="email" value="" placeholder="Ví dụ: 01234567890" class="form-control"/>--%>
                                                        </div>
                                                    </div>
                                                    <div class="form-group required">
                                                        <label class="control-label col-md-2" for="address2">Địa chỉ chi tiết</label>
                                                        <div class="col-sm-10">
                                                            <%--<f:input type="text" name="address2" path="address2" id="address2" placeholder="" class="form-control"/>--%>
                                                        </div>
                                                    </div>

                                                </div>-->
                                            </div>
                                        </div>

                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">
                                                    <i class="fa fa-credit-card" aria-hidden="true"></i> Phương thức thanh toán
                                                </h3>
                                            </div>
                                            
                                            <div class="panel-body" id="form_payment_method">
                                                <div class="group">
                                                    <div class="adr-oms radio select-method">
                                                        <f:radiobutton path="paymentType" id="paymentType1" name="paymentType" value="1"></f:radiobutton>
                                                        <!--<input type="radio" id="paymentMethod" name="paymentMethod" value="1"/>-->
                                                        <label for="payment-method-bank_transfer">
                                                            <div class="adr-oms payment-method">
                                                                <div class="thumbnail" style="width: 70px">
                                                                    <img alt="Chuyển khoản" src="jsp/frontend/image/bank_transfer.png" />
                                                                </div>
                                                                <div class="description" style="position: absolute;margin-top: -50px;margin-left: 78px;">
                                                                    <div class="title">Chuyển khoản</div>
                                                                    <div class="subtitle">Sử dụng thẻ ATM hoặc dịch vụ Internet Banking để tiến hành chuyển khoản cho chúng tôi</div>
                                                                    <div class="tkz-selection-info"></div>
                                                                </div>
                                                            </div>
                                                        </label>

<!--                                                        <div class="payment-method-toggle box-installment installment-disabled" 
                                                             id="payment-method-info-bank_transfer">
                                                            <div class="disabled-cod-body">Mô tả thanh toán </div>
                                                        </div>-->
                                                    </div>
                                                </div>
                                                <div class="group">
                                                    <div class="adr-oms radio select-method">
                                                        <f:radiobutton path="paymentType" id="paymentType2" name="paymentType" value="0"></f:radiobutton>
                                                        <!--<input type="radio" id="payment-method-cod" name="payment_method" value="0"/>-->
                                                        <label for="payment-method-cod">
                                                            <div class="adr-oms payment-method">
                                                                <div class="thumbnail" style="width: 70px">
                                                                    <img alt="Thu tiền tại nhà (COD)" src="jsp/frontend/image/cod.png" />
                                                                </div>
                                                                <div class="description" style="position: absolute;margin-top: -50px;margin-left: 78px;">
                                                                    <div class="title">Thu tiền tại nhà (COD)</div>
                                                                    <div class="subtitle">Khách hàng thanh toán bằng tiền mặt cho nhân viên giao hàng khi sản phẩm được chuyển tới địa chỉ nhận hàng</div>
                                                                    <div class="tkz-selection-info"></div>
                                                                </div>
                                                            </div>
                                                        </label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">
                                                    <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                                    Đơn hàng
                                                </h3>
                                            </div>
                                            <div class="panel-body">
                                                <table class="adr-oms table table_order_items">
                                                    <tbody id="orderItem">
                                                        <%--<c:forEach items="<%= //request.getSession().getAttribute("account")%>" var="u">--%>
<!--                                                            <label class="control-label col-md-2" for="userId">Mã*</label>
                                                            <div class="col-sm-10">
                                                                <p>${u.order.userId}</p>
                                                                <f:input type="text" name="userId" path="userId" id="userId" class="form-control"/>
                                                            </div>-->
                                                        <%--</c:forEach>--%>
                                                        <c:forEach items="<%=request.getSession().getAttribute("listCart")%>" var="cart">
                                                        <tr class="group-type-1 item-child-0">
                                                            
                                                                <td>
                                                                    <div class="table_order_items-cell-thumbnail">
                                                                        <div class="thumbnail">
                                                                            <a target="_blank" href="#" title="${cart.product.productName}">
                                                                                <img src="<%=request.getContextPath()%>/jsp/frontend/image/products/${cart.product.images}" alt="${cart.product.productName}" width="65px" height="77px" />
                                                                            </a>
                                                                        </div>
                                                                    </div>
                                                                    <div class="table_order_items-cell-detail">
                                                                        <div class="table_order_items-cell-title">
                                                                            <div class="table_order_items_product_name">
                                                                                <a target="_blank" href="#" title="${cart.product.productName}"><span class="title">${cart.product.productName}</span>
                                                                                </a>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <div class="table_order_items-cell-price">
                                                                        <div class="tt-price"><fmt:formatNumber maxFractionDigits="3">${cart.product.price}</fmt:formatNumber>đ</div>
                                                                        <div class="quantity">x${cart.quantity}</div>
                                                                        <div class="tt-price"><fmt:formatNumber maxFractionDigits="3">${cart.product.price*cart.quantity}</fmt:formatNumber></div>
                                                                    </div>
                                                                </td>                                                            
                                                        </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
<!--                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h3 class="panel-title">
                                                    <i class="fa fa-truck" aria-hidden="true"></i> Vận chuyển
                                                </h3>
                                            </div>
                                            <div class="panel-body">
                                                <div class="form-group">
                                                    <div class="col-sm-12">
                                                        <span id="ajax-load-shipping-method">
                                                            <p><strong>Giao hàng tận nơi</strong></p>
                                                            <div class="radio">
                                                                <label>
                                                                    <input type="radio" name="shipping_method" onclick="updateFree()" value="geo.geo" checked/>
                                                                    Phí giao hàng tận nơi - 30,000đ
                                                                </label>
                                                            </div>
                                                        </span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>-->
                                        <div class="panel panel-default" id="ajax-load-total">
                                            <div class="panel-body">
                                                <table class="adr-oms table">
                                                    <tbody class="orderSummary">
<!--                                                    <tr class="row-total-amount">
                                                            <td class="text-left">Thành tiền</td>
                                                            <td class="text-right">
                                                                <strong class="">${total}đ</strong>
                                                            </td>
                                                        </tr>-->
<!--                                                    <tr class="row-total-amount">
                                                            <td class="text-left">Phí giao hàng tận nơi</td>
                                                            <td class="text-right">
                                                                <strong class="">30,000đ</strong>
                                                            </td>
                                                        </tr>-->
                                                        <tr class="row-total-amount">
                                                            <td class="text-left" style="padding-top: 17px;" >Tổng số</td>
                                                            <td class="text-right">
                                                                <f:input type="number" path="totalAmount" id="totalAmount" value="${total}" class="form-control" readonly="true"/>
                                                                
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="text-center">
                                            <a class="pull-left" href="<%=request.getContextPath()%>/youCart.htm" title="Quay lại giỏ hàng"><i class="fa fa-mail-reply-all" aria-hidden="true"></i> Quay lại giỏ hàng                            </a>
                                            <button class="btn btn-primary pull-right" type="submit" id="submit_form_button" onclick="$('form#state2_form').submit();">Đặt hàng <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></button>
                                        </div>
                                            <!--1-->
                                            
                                            <!--2-->
                                    </div>
                                <!--</form>-->
                                </f:form>
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="footer.jsp"/>
                <jsp:include page="copyright.jsp"/>
            </div> <!--/#page-->
        </section>
        <div id="fb-root"></div>
    </body>
</html>
