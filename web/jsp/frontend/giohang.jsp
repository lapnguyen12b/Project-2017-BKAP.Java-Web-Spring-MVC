<%-- 
    Document   : giohang
    Created on : Oct 18, 2017, 9:29:29 PM
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
                <div class="container">
                    <div id="breadcrumb">
                        <ol class="breadcrumb container">
                            <li><a href="<%=request.getContextPath()%>"><span><i class="fa fa-home"></i></span></a></li>
                            <li><a href="<%=request.getContextPath()%>/youCart.htm"><span>Giỏ hàng của bạn</span></a></li>
                        </ol>
                    </div>
                    <div class="row">
                        <section id="sidebar-main" class="col-sm-12">
                            <div id="content">
                                <h1>Giỏ hàng của bạn</h1>                                    
                                    
                                            <form action="<%=request.getContextPath()%>/update.htm" enctype="multipart/form-data">
                                                <div class="table-responsive">
                                                    <table class="table table-bordered">
                                                        <thead>
                                                            <tr>
                                                                <td class="text-center">Ảnh</td>
                                                                <td class="text-left">SẢN PHẨM</td>
                                                                <td class="text-left">MÃ</td>
                                                                <td class="text-left">SỐ LƯỢNG</td>
                                                                <td class="text-right">ĐƠN GIÁ</td>
                                                                <td class="text-right">TỔNG</td>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <%--<c:forEach items="${listCart}" var="cart">--%>
                                                            <c:forEach items="<%=request.getSession().getAttribute("listCart")%>" var="cart">
                                                                <tr>
                                                                    <td class="text-center" style="width:176px;height:104px;" >
                                                                        <a href="#">
                                                                            <img src="<%=request.getContextPath()%>/jsp/frontend/image/products/${cart.product.images}" alt="${cart.product.productName}" title="${cart.product.productName}" class="img-thumbnail" style="width:100px;height: 100px; " />
                                                                        </a>
                                                                    </td>
                                                                    <td class="text-left">
                                                                        <a href="#">${cart.product.productName}</a>
                                                                    </td>
                                                                    <td class="text-left">${cart.product.productId}</td>
                                                                    <td class="text-left">
                                                                        <div class="input-group btn-block">
                                                                            <input type="text" name="quantity" id="quantity" maxlength="12" value="${cart.quantity}" size="1" class="form-control" />
                                                                            <span class="input-group-btn">
                                                                                <button type="submit" name="update[108]" title="Cập nhật" class="btn btn-primary">
                                                                                    <i class="fa fa-refresh"></i>
                                                                                </button>
                                                                                <a href="<%=request.getContextPath()%>/remove.htm?Id=${cart.product.productId}" data-toggle="tooltip" data-placement="top" title="Gỡ bở" class="btn btn-danger" style="margin-top:1px">
                                                                                    <i class="fa fa-times-circle"></i>
                                                                                </a>
                                                                            </span>
                                                                        </div>
                                                                    </td>
                                                                        
                                                                    
                                                                    <td class="text-right"><fmt:formatNumber maxFractionDigits="3">${cart.product.price}</fmt:formatNumber></td>
                                                                    <td class="text-right"><fmt:formatNumber maxFractionDigits="3">${cart.product.price*cart.quantity}</fmt:formatNumber></td>
                                                                </tr>
                                                            </c:forEach>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </form>
                                            <div class="row">
                                                <div class="col-sm-4 col-sm-offset-8">
                                                    <table class="table table-bordered">
                                                        <tr>
                                                            <td class="text-right"><strong>Thành tiền:</strong></td>
                                                            <td class="text-right"><fmt:formatNumber maxFractionDigits="3">${total}</fmt:formatNumber>đ</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-right"><strong>Tổng số:</strong></td>
                                                            <td class="text-right"><fmt:formatNumber maxFractionDigits="3">${total}</fmt:formatNumber>đ</td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>
                                            <div class="buttons clearfix">
                                                <div class="pull-left"><a href="<%=request.getContextPath()%>" class="button btn btn-theme-default">Tiếp tục mua hàng</a></div>
                                                <%
                                                    String order = (String)session.getAttribute("account");
                                                    if(order != null){
                                                        out.println("<div class=\"pull-right\"><a href=\"order.htm\" class=\"button btn btn-theme-default\">Tiến hành thanh toán</a></div>");
                                                    }else{
                                                        out.println("<div class=\"pull-right\"><a href=\"\" class=\"button btn btn-theme-default\" data-toggle=\"modal\" data-target=\"#exampleModal\" data-whatever=\"@mdo\">Tiến hành thanh toán</a></div>");
                                                    }
                                                %>
                                                
                                        <!--Dialog thông báo đăng nhập-->
                                                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
                                                      <div class="modal-dialog" role="document">
                                                        <div class="modal-content">
                                                            <div class="modal-header" style="background: #7db641;">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                                            <h4 class="modal-title" id="exampleModalLabel" style="color:#fff;">Thông báo</h4>
                                                          </div>
                                                          <div class="modal-body">
                                                              <p>Bạn chưa đăng nhập. Vui lòng đăng nhập để Tiến hành thanh toán</p>
<!--                                                            <form>
                                                              <div class="form-group">
                                                                <label for="recipient-name" class="control-label">Recipient:</label>
                                                                <input type="text" class="form-control" id="recipient-name">
                                                              </div>
                                                              <div class="form-group">
                                                                <label for="message-text" class="control-label">Message:</label>
                                                                <textarea class="form-control" id="message-text"></textarea>
                                                              </div>
                                                            </form>-->
                                                          </div>
                                                          <div class="modal-footer">
                                                              <a href="" class="btn btn-default" data-dismiss="modal">Đóng</a>
                                                            <a href="<%=request.getContextPath()%>/initLoginFontend.htm" class="btn btn-primary">Đăng nhập</a>
                                                          </div>
                                                        </div>
                                                      </div>
                                                    </div>
                                        <!--/Dialog thông báo đăng nhập-->
                                            </div>
                                
                                
                            </div>
                        </section>
                    </div>
                </div>
                <div class="mass-bottom" id="pavo-mass-bottom">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12">
                                <div class="box clearfix">
                                    <div class="pts-container">
                                        <div class="pts-inner">
                                            <div class="row row-level-1">
                                                <div class="row-inner clearfix">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
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
