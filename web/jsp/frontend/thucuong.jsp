<%-- 
    Document   : thucuong
    Created on : Sep 14, 2017, 10:16:49 AM
    Author     : LAPNV
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                            <li><a href="<%=request.getContextPath()%>"><span><i class="fa fa-home"></i></span></a></li>
                            <li><a href="#"><span>${cata.catalogName}</span></a></li>
                        </ol>
                    </div>
                    <div class="row">
                        <aside id="sidebar-left" class="col-sm-3">
                            <div id="column-left" class="hidden-xs sidebar">
                                <div class="box filter">
                                    <div class="box-heading">
                                        <span>Lọc</span>
                                        <em class="line"></em>
                                    </div>
                                    <div class="box-content">
                                        <ul class="box-filter clearfix">
                                            <li>
                                                <span id="filter-group3">Giá Bán</span>
                                                <ul class="clearfix">
                                                    <div id="filter-group3">
                                                        <li>
                                                            <input type="checkbox" name="filter[]" value="14" id="filter14" />
                                                            <label for="filter14">&gt;100.000đ</label>
                                                        </li>
                                                    </div>
                                                    <div id="filter-group3">
                                                        <li>
                                                            <input type="checkbox" name="filter[]" value="12" id="filter12" />
                                                            <label for="filter12">0 - 50.000đ </label>
                                                        </li>
                                                    </div>
                                                    <div id="filter-group3">
                                                        <li>
                                                            <input type="checkbox" name="filter[]" value="13" id="filter13" />
                                                            <label for="filter13">50.000đ - 100.000đ</label>
                                                        </li>
                                                    </div>
                                                </ul>
                                            </li>
                                            <li>
                                                <span id="filter-group4">Màu Sắc</span>
                                                <ul class="clearfix">
                                                    <div id="filter-group4">
                                                        <li>
                                                            <input type="checkbox" name="filter[]" value="17" id="filter17" />
                                                            <label for="filter17">Vàng</label>
                                                        </li>
                                                    </div>
                                                    <div id="filter-group4">
                                                        <li>
                                                            <input type="checkbox" name="filter[]" value="15" id="filter15" />
                                                            <label for="filter15">Xanh </label>
                                                        </li>
                                                    </div>
                                                    <div id="filter-group4">
                                                        <li>
                                                            <input type="checkbox" name="filter[]" value="16" id="filter16" />
                                                            <label for="filter16">Đỏ</label>
                                                        </li>
                                                    </div>
                                                </ul>
                                            </li>
                                        </ul>
                                        <a id="button-filter" class="button btn btn-theme-default">Lọc Tìm kiếm</a>
                                    </div>
                                </div>
                            </div>
                        </aside>
                        <section id="sidebar-main" class="col-sm-9">
                            <div id="content">
                                <h1>${cata.catalogName}</h1>
                                <!-- <div class="category-info clearfix hidden-xs hidden-sm">
                                    <div class="description"><p>Cate1</p></div>
                                </div> -->
                                <hr />

                                <!--refine-->

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
                                            <div class="product-compare">
                                                <a href="index6431.html?route=product/compare" class="btn btn-theme-primary" id="compare-total">So sánh sản phẩm (0)</a>
                                            </div>
                                            <div class="sort">
                                                <span>Sắp xếp theo</span>
                                                <select class="form-control" onchange="">
                                                    <option value="http://atlantic.myzozo.net/mon-chinh?sort=p.sort_order&amp;order=ASC" selected="selected">Mặc định</option>
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
                                                <select class="form-control" onchange="location = this.value;">
                                                    <option value="http://atlantic.myzozo.net/mon-chinh?limit=15" selected="selected">15</option>
                                                    <option value="mon-chinh6195.html?limit=25">25</option>
                                                    <option value="mon-chinh3204.html?limit=50">50</option>
                                                    <option value="mon-chinh8538.html?limit=75">75</option>
                                                    <option value="mon-chinha03f.html?limit=100">100</option>
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
                                            <c:forEach items="${lvProduct}" var="list">
                                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 product-cols">
                                                    <div class="product-block item-default" itemtype="http://schema.org/Product" itemscope>
                                                        <div class="image">
                                                            <!-- text sale-->
                                                            <a class="img" href="combo.html">
                                                                <img src="<%=request.getContextPath()%>/jsp/frontend/image/products/${list.images}" alt="${list.productName}" class="img-responsive" style="width:250px;height:200px"/>
                                                            </a>
                                                            <!-- zoom image-->
                                                            <a href="<%=request.getContextPath()%>/jsp/frontend/image/products/${list.images}" class="info-view product-zoom" title="Zoom">
                                                                <i class="fa fa-search-plus"></i>
                                                            </a>
                                                            <!-- view-->
                                                            <a class="pav-colorbox cboxElement" href="<%=request.getContextPath()%>/viewPro.htm?productId=${list.productId}" title="${list.productName}">
                                                                <span>Xem</span>
                                                            </a>
                                                        </div>                                    
                                                        <div class="product-meta">
                                                            <h3 class="name"><a href="combo.html">${list.productName}</a></h3>
                                                            <div class="description" itemprop="description">...</div>
                                                            <div class="price" itemtype="http://schema.org/Offer" itemscope itemprop="offers">
                                                                <span class="special-price"><fmt:formatNumber  maxFractionDigits="3"> ${list.price}</fmt:formatNumber>đ</span>
                                                                <meta content="100,000" itemprop="price" />
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
                                                                <a href="addCart.htm?id=${list.productId}" class="button" onclick="cart.addcart('58');" >Thêm vào giỏ</a>
                                                                <!--<input type="button" value="Thêm vào giỏ" onclick="cart.addcart('55');" class="button" />-->
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
                                        </div>
                                    </div>
                                </div>
                                <!--
                                <div class="paginations row">
                                    <div class="links"></div>
                                    <div class="results">Hiển thị 1 đến 3 của 3 (1 trang)</div>
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
