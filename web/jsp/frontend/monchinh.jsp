<%-- 
    Document   : monchinh
    Created on : Sep 14, 2017, 10:16:33 AM
    Author     : LAPNV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="container">
    <div id="breadcrumb">
        <ol class="breadcrumb container">
            <li><a href="index.html"><span><i class="fa fa-home"></i></span></a></li>
            <li><a href="mon-chinh.html"><span>Món chính</span></a></li>
        </ol>
    </div>
    <div class="row">
        <aside id="sidebar-left" class="col-sm-3">
            <div id="column-left" class="hidden-xs sidebar">
                <div class="box category">
                    <div class="box-heading"><span>Danh mục</span></div>
                    <div class="box-content">
                        <ul class="box-category list">
                            <li class="">
                                <a href="mon-chinh.html" class="active">Món chính</a>                                                
                            </li>
                            <li class="">
                                <a href="thuc-uong.html" class="">Thức uống</a>
                            </li>
                            <li class="">
                                <a href="trang-mieng.html" class="">Tráng miệng</a>
                            </li>
                        </ul>
                    </div>
                </div>                            
                <div class="box carousel slide pavtestimonial hidden-sm hidden-xs nopadding">
                    <div class="box-content">
                        <ul class="media-list">
                            <li class="media">
                                <a class="pull-left" href="#">                            
                                    <img src="image/cache/catalog/banner/icon-menu-50x60.png" alt="THỰC ĐƠN HÔM NAY" style="width: 50px; height: 60px" />                            
                                </a>                    
                                <div class="media-body">
                                    <div class="testimonial">
                                        <h4 class="media-heading">THỰC ĐƠN HÔM NAY</h4>
                                        <p>Hãy đến và thưởng thức các món ăn hôm nay của chúng tôi.</p>
                                    </div>
                                </div>
                            </li>
                            <li class="media">
                                <a class="pull-left" href="#">
                                    <img src="image/cache/catalog/banner/icon-wines-50x60.png" alt="ĐỒ UỐNG" style="width: 50px; height: 60px" />
                                </a>
                                <div class="media-body">
                                    <div class="testimonial">
                                        <h4 class="media-heading">ĐỒ UỐNG</h4>
                                        <p>Mang đến những loại thức uống từ thiên nhiên.</p>
                                    </div>
                                </div>
                            </li>
                            <li class="media">
                                <a class="pull-left" href="#">
                                    <img src="image/cache/catalog/banner/icon-team-50x60.png" alt="NGÀY CỦA GIA ĐÌNH" style="width: 50px; height: 60px" />
                                </a>
                                <div class="media-body">
                                    <div class="testimonial">
                                        <h4 class="media-heading">NGÀY CỦA GIA ĐÌNH</h4>
                                        <p>Đã bao lâu bạn chưa ăn tối với gia đình, hãy cùng gia đình bạn đến với chúng tôi.</p>
                                    </div>
                                </div>
                            </li>
                            <li class="media">
                                <a class="pull-left" href="#">
                                    <img src="image/cache/catalog/banner/icon-find-50x60.png" alt="CHÚNG TÔI Ở ĐÂU?" style="width: 50px; height: 60px" />
                                </a>
                                <div class="media-body">
                                    <div class="testimonial">
                                        <h4 class="media-heading">CHÚNG TÔI Ở ĐÂU?</h4>
                                        <p>25 Ngô Quyền, Phường 6, Quận 10</p>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
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
                <script type="text/javascript"><!--
                                                                        $('#button-filter').on('click', function () {
                        filter = [];

                        $('input[name^=\'filter\']:checked').each(function (element) {
                            filter.push(this.value);
                        });

                        location = 'http://atlantic.myzozo.net/mon-chinh&filter=' + filter.join(',');
                    });
                    //--></script>
                </div>
            </aside>
            <section id="sidebar-main" class="col-sm-9">
                <div id="content">                
                    <h1>Món chính</h1>
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
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 product-cols">
                                    <div class="product-block item-default" itemtype="http://schema.org/Product" itemscope>
                                        <div class="image">
                                            <!-- text sale-->
                                            <a class="img" href="combo.html">
                                                <img src="image/cache/catalog/san-pham/img-produce05-550x650.jpg" alt="Combo" class="img-responsive" />
                                            </a>
                                            <!-- zoom image-->
                                            <a href="image/catalog/san-pham/img-produce05.jpg" class="info-view product-zoom" title="Combo">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                            <!-- view-->
                                            <a class="pav-colorbox cboxElement" href="combo.html" title="Xem">
                                                <span>Xem</span>
                                            </a>
                                        </div>                                    
                                        <div class="product-meta">
                                            <h3 class="name"><a href="combo.html">Combo</a></h3>
                                            <div class="description" itemprop="description">...</div>
                                            <div class="price" itemtype="http://schema.org/Offer" itemscope itemprop="offers">
                                                <span class="special-price">100,000đ</span>
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
                                                <input type="button" value="Thêm vào giỏ" onclick="cart.addcart('55');" class="button" />
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
                                </div><div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 product-cols">
                                    <div class="product-block item-default" itemtype="http://schema.org/Product" itemscope>
                                        <div class="image">
                                            <!-- text sale-->
                                            <a class="img" href="combo.html">
                                                <img src="image/cache/catalog/san-pham/img-produce05-550x650.jpg" alt="Combo" class="img-responsive" />
                                            </a>
                                            <!-- zoom image-->
                                            <a href="image/catalog/san-pham/img-produce05.jpg" class="info-view product-zoom" title="Combo">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                            <!-- view-->
                                            <a class="pav-colorbox cboxElement" href="combo.html" title="Xem">
                                                <span>Xem</span>
                                            </a>
                                        </div>                                    
                                        <div class="product-meta">
                                            <h3 class="name"><a href="combo.html">Combo</a></h3>
                                            <div class="description" itemprop="description">...</div>
                                            <div class="price" itemtype="http://schema.org/Offer" itemscope itemprop="offers">
                                                <span class="special-price">100,000đ</span>
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
                                                <input type="button" value="Thêm vào giỏ" onclick="cart.addcart('55');" class="button" />
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
                                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 product-cols">
                                    <div class="product-block item-default" itemtype="http://schema.org/Product" itemscope>
                                        <div class="image">
                                            <!-- text sale-->
                                            <a class="img" href="combo.html">
                                                <img src="image/cache/catalog/san-pham/img-produce05-550x650.jpg" alt="Combo" class="img-responsive" />
                                            </a>
                                            <!-- zoom image-->
                                            <a href="image/catalog/san-pham/img-produce05.jpg" class="info-view product-zoom" title="Combo">
                                                <i class="fa fa-search-plus"></i>
                                            </a>
                                            <!-- view-->
                                            <a class="pav-colorbox cboxElement" href="combo.html" title="Xem">
                                                <span>Xem</span>
                                            </a>
                                        </div>                                    
                                        <div class="product-meta">
                                            <h3 class="name"><a href="combo.html">Combo</a></h3>
                                            <div class="description" itemprop="description">...</div>
                                            <div class="price" itemtype="http://schema.org/Offer" itemscope itemprop="offers">
                                                <span class="special-price">100,000đ</span>
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
                                                <input type="button" value="Thêm vào giỏ" onclick="cart.addcart('55');" class="button" />
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
                            </div>
                        </div>
                    </div>
                    <div class="paginations row">
                        <div class="links"></div>
                        <div class="results">Hiển thị 1 đến 3 của 3 (1 trang)</div>
                    </div>
                    <!--==========products list=========-->              
                </div>
            </section>
        </div>
    </div>
