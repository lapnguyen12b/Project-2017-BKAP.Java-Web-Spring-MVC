<%-- 
    Document   : sanphambanchay
    Created on : Sep 14, 2017, 11:22:17 AM
    Author     : LAPNV
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- SẢN PHẨM BÁN CHẠY -->
<div class="box productcarousel">
    <div class="box-heading">
        <span class="title">Sản phẩm bán chạy</span>
    </div>

    <div class="box-content">
        <!--carousel controller-->
        <div class="carousel-controls">
            <a class="carousel-control fa fa-angle-left left" href="#productcarousel96421216" data-slide="prev"></a>
            <a class="carousel-control fa fa-angle-right right" href="#productcarousel96421216" data-slide="next"></a>
        </div>
        <div class="box-products slide carousel" id="productcarousel96421216">
            <div class="carousel-inner">
                <div class="item active">
                    <div class="row products-row last">
                        <c:forEach items="${sellProduct}" var="p">
                            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                                <div class="product-block item-default" itemtype="" itemscope>
                                    <div class="image">
                                        <!-- text sale-->
                                        <a class="img" href="<%=request.getContextPath()%>/viewPro.htm?productId=${p.productId}">
                                            <img src="<%=request.getContextPath()%>/jsp/frontend/image/products/${p.images}" alt="Kem Ốc Quế " class="img-responsive" style="width:177px;height:177px" />
                                        </a>
                                        <!-- zoom image-->
                                        <a href="<%=request.getContextPath()%>/jsp/frontend/image/products/${p.images}" class="info-view product-zoom" title="${p.productName}">
                                            <i class="fa fa-search-plus"></i>
                                        </a>
                                        <!-- view-->
                                        <a class="pav-colorbox cboxElement" href="<%=request.getContextPath()%>/viewPro.htm?productId=${p.productId}" title="Xem">
                                            <span>Xem</span>
                                        </a>
                                    </div>

                                    <div class="product-meta">
                                        <h3 class="name"><a href="<%=request.getContextPath()%>/viewPro.htm?productId=${p.productId}">${p.productName}</a></h3>
                                        <div class="description" itemprop="description">
                                            Thật tuyệt vời khi vừa tan trường, tan làm&nbsp; cùng đám bạn giải khát bằng một ly kem tươi đầy mát&#8230;...
                                        </div>
                                        <div class="price" itemtype="" itemscope itemprop="offers">
                                            <span class="special-price"> <fmt:formatNumber  maxFractionDigits="3"> ${p.price}</fmt:formatNumber>  đ</span>
                                            <meta content="100,000" itemprop="price" />
                                            <meta content="" itemprop="priceCurrency" />
                                        </div>
                                        <div class="rating">
                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                        </div>
                                        <div class="cart">
                                            <a href="addCart.htm?id=${p.productId}" class="button" onclick="cart.addcart('58');" >Thêm vào giỏ</a>
                                            <!--<input type="button" value="Thêm vào giỏ" onclick="cart.addcart('58');" class="button" />-->
                                        </div>
                                        <div class="wishlist">
                                            <a onclick="wishlist.addwishlist('58');" data-toggle="tooltip" title="Thêm vào yêu thích" class="fa fa-heart product-icon">
                                                <span>Thêm vào yêu thích</span>
                                            </a>
                                        </div>
                                        <div class="compare">
                                            <a onclick="compare.addcompare('58');" data-toggle="tooltip" title="So sánh sản phẩm" class="fa fa-refresh product-icon">
                                                <span>So sánh sản phẩm</span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                        <!-- /1 -->
                        <!-- 2 -->

                        <!-- /2 -->
                    </div>
                </div>
            </div>
        </div>

    </div>
</div>
<!-- /.box productcarousel -->
