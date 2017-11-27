<%-- 
    Document   : thucdon
    Created on : Sep 14, 2017, 7:20:08 PM
    Author     : LAPNV
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
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
                            <li>
                                <a href="<%=request.getContextPath()%>"><span><i class="fa fa-home"></i></span></a>
                            </li>
                            <li>
                                <a href="<%=request.getContextPath()%>/getProductHot.htm"><span>Sản phẩm</span></a>
                            </li>
                        </ol>
                    </div>
                    <div class="row">
                        <section id="sidebar-main" class="col-sm-12">
                            <div id="content">                
                                <h1>Sản phẩm</h1>
                                <!--==========products filter=========-->
                                <div class="product-filter ">
                                    <div class="inner clearfix">
                                        <div class="display">
                                            <div class="btn-group group-switch">
                                                <button type="button" id="list-view" class="btn btn-switch list" data-toggle="tooltip" title="Danh sách">
                                                    <i class="fa fa-th-list"></i></button>
                                                <button type="button" id="grid-view" class="btn btn-switch grid active" data-toggle="tooltip" title="Lưới">
                                                    <i class="fa fa-th"></i>
                                                </button>
                                            </div>
                                        </div>
                                        <div class="filter-right">
<!--                                            <div class="product-compare">
                                                <a href="" class="btn btn-theme-primary" id="compare-total">So sánh sản phẩm (0)</a>
                                            </div>-->
                                            <div class="sort">
                                                <span>Sắp xếp theo</span>
                                                <select class="form-control" onchange="">
                                                    <option value="" selected="selected">Mặc định</option>
                                                    <option value="">Tên (A - Z)</option>
                                                    <option value="">Tên (Z - A)</option>
                                                    <option value="">Giá (Thấp &gt; Cao)</option>
                                                    <option value="">Giá (Cao &gt; Thấp)</option>
                                                    <option value="">Đánh giá (Cao nhất)</option>
                                                    <option value="">Đánh giá (Thấp nhất)</option>
                                                    <option value="">Dòng sản phẩm (A - Z)</option>
                                                    <option value="">Dòng sản phẩm (Z - A)</option>
                                                </select>
                                            </div>

                                            <div class="limit">
                                                <span>Giới hạn</span>
                                                <select class="form-control" onchange="">
                                                    <option value="" selected="selected">15</option>
                                                    <option value="">25</option>
                                                    <option value="">50</option>
                                                    <option value="">75</option>
                                                    <option value="">100</option>
                                                </select>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!--==========products filter=========-->

                                <!--==========products list=========-->
                                <div id="products" class="product-grid">
                                    <div class="products-block">
                                        <div class="row product-items">
                                            
                                            <c:forEach items="${listProductHot}" var="pro">
                                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 product-cols">
                                                    <div class="product-block item-default" itemtype="" itemscope>
                                                        <div class="image">
                                                            <!-- text sale-->            
                                                            <a class="img" href="<%=request.getContextPath()%>/viewPro.htm?productId=${pro.productId}">
                                                                <!--<img src="image/cache/catalog/san-pham/img-produce05-550x650.jpg" alt="Combo" class="img-responsive" />-->
                                                                <img src="<%=request.getContextPath()%>/jsp/frontend/image/products/${pro.images}" alt="${pro.productName}" class="img-responsive" style="width:250px;height:243px">
                                                            </a>
                                                            <!-- zoom image-->
                                                            <!--<a href="image/catalog/san-pham/img-produce05.jpg" class="info-view product-zoom" title="Combo">-->
                                                            <a href="<%=request.getContextPath()%>/jsp/frontend/image/products/${pro.images}" class="info-view product-zoom" title="${pro.productName}">
                                                                <i class="fa fa-search-plus"></i>
                                                            </a>
                                                            <!-- view-->
                                                            <a class="pav-colorbox cboxElement" href="<%=request.getContextPath()%>/viewPro.htm?productId=${pro.productId}" title="Xem">
                                                                <span>Xem</span>
                                                            </a>
                                                        </div>    
                                                        <div class="product-meta">
                                                            <h3 class="name"><a href="<%=request.getContextPath()%>/viewPro.htm?productId=${pro.productId}">${pro.productName}</a></h3>
                                                            <div class="description" itemprop="description">...</div>        
                                                            <div class="price" itemtype="" itemscope itemprop="offers">
                                                                <span class="special-price"><fmt:formatNumber  maxFractionDigits="3"> ${pro.price}</fmt:formatNumber>đ</span>
                                                                <meta content="${pro.price}" itemprop="price" />
                                                                <meta content="" itemprop="priceCurrency" />
                                                            </div>        
                                                            <div class="rating">
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                                <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                                                            </div>        
                                                            <div class="cart">
                                                                <!--<input type="button" value="Thêm vào giỏ" onclick="cart.addcart('55');" class="button" />-->
                                                                <a href="<%=request.getContextPath()%>/addCart.htm?id=${pro.productId}" class="button" onclick="cart.addcart('58');" >Thêm vào giỏ</a>
                                                            </div>        
                                                            <div class="wishlist">
                                                                <a onclick="wishlist.addwishlist('55');" data-toggle="tooltip" title="Thêm vào yêu thích" class="fa fa-heart product-icon">
                                                                    <span>Thêm vào yêu thích</span>
                                                                </a>
                                                            </div>
                                                            <div class="compare">
                                                                <a onclick="compare.addcompare('55');" data-toggle="tooltip" title="So sánh sản phẩm" class="fa fa-refresh product-icon">
                                                                    <span>So sánh sản phẩm</span>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                            
                                <!-- /#products -->
                                <div class="paginations row">
                                    <div class="links"></div>
                                    <div class="results">Hiển thị 1 đến 8 của 8 (1 trang)</div>
                                </div>
                                <!--==========products list=========-->                
                            </div>
                        </section>
                    </div>
                </div>
                <jsp:include page="footer.jsp"/>
                <jsp:include page="copyright.jsp"/>
            </div> <!--/#page-->
        </section>
        <div id="fb-root"></div>
    </body>
</html>