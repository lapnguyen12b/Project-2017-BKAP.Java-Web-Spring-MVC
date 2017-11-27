<%-- 
    Document   : seach
    Created on : Sep 14, 2017, 7:17:50 PM
    Author     : LAPNV
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="vi">
    <jsp:include page="head.jsp"/>
    <body id="offcanvas-container" class="offcanvas-container common-home page-common-home layout-fullwidth">
        <section class="row-offcanvas row-offcanvas-left offcanvas-pusher">
            <div id="page">
                <jsp:include page="header.jsp"/>
                <div class="container">
                    <div class="row">
                        <!--left-->
                        <aside id="sidebar-left" class="col-sm-3">
                        <jsp:include page="sidebar-left.jsp"/>
                        </aside>
                        <!--end-left-->
                        <!--right-->

        <section id="sibar-main" class="col-sm-9">
            <div id="content">

                <!--=========product detail=========-->
                    <div class="product-info">
                        <div class="row">
                <%--<c:forEach items="viewProduct" var="product">--%>
                            <!--slider-->
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 image-container">
                                <div class="image">                                                                                
                                    <a href="" title="" class="imagezoom">
                                        <img itemprop="image" src="" title="" alt="" id="image" data-zoom-image="" class="product-image-zoom img-responsive" style="width:395px;height: 420px;" />
                                    </a>
                                </div>
                                <div class="thumbs-preview">
                                    <div class="image-additional slide carousel horical" id="image-additional">
                                        <div id="image-additional-carousel" class="carousel-inner">
                                            <div class="item clearfix">

                                                <a href="" title="Combo" class="imagezoom" data-zoom-image="" data-image="">
                                                    <img src="" style="max-width:82px" title="Combo" alt="Combo" data-zoom-image="" class="product-image-zoom img-responsive" />
                                                </a>                                                              
                                                <a href="" title="Combo" class="imagezoom" data-zoom-image="" data-image="">
                                                    <img src="" style="max-width:82px" title="Combo" alt="Combo" data-zoom-image="" class="product-image-zoom img-responsive" />
                                                </a>     
                                                <a href="" title="Combo" class="imagezoom" data-zoom-image="" data-image="">
                                                    <img src="" style="max-width:82px" title="Combo" alt="Combo" data-zoom-image="" class="product-image-zoom img-responsive" />
                                                </a>

                                            </div>
                                        </div>
                                        <!-- Controls -->
                                        <a class="carousel-control left fa fa-angle-left" href="#image-additional" data-slide="prev"></a>
                                        <a class="carousel-control right fa fa-angle-right" href="#image-additional" data-slide="next"></a>
                                    </div>
                                    <script type="text/javascript">
                                        $('#image-additional .item:first').addClass('active');
                                        $('#image-additional').carousel({interval: false})
                                    </script>
                                </div>
                            </div>
                            <!--slider-->
                            <!--product status-->
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 product-view">
                                <h1 class="title-product">productName</h1>
                                <div class="review">
                                    <div>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                        <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-1x"></i></span>
                                        <a href="#review-form" class="popup-with-form" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;">0 đánh giá</a> /
                                        <a href="#review-form" class="popup-with-form" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;">Viết đánh giá</a>
                                    </div>
                                </div>
                                <div class="description">
                                    <p>
                                        <i class="fa fa-chevron-down"></i>
                                        <b>Mã sản phẩm : </b>
                                        ${viewProductName.productId}
                                    </p>
                                    <p>
                                        <i class="fa fa-chevron-down"></i>
                                        <b>Sản Phẩm có sẵn</b>
                                    </p>
                                </div>
                                <div class="price">100,000đ<br />
                                    <span class="price-tax">Giá sau Thuế 100,000đ</span><br />
                                </div>
                                <div id="product" class="product-extra">
                                    <div class="quantity-adder">
                                        <input type="text" name="quantity" value="1" size="2" id="input-quantity" class="form-control" />
                                        <span class="add-up add-action">+</span>
                                        <span class="add-down add-action">-</span>
                                        <input type="hidden" name="product_id" value="55" />
                                    </div>
                                    <div class="product-action">
                                        <input type="hidden" name="product_id" value="55" />
                                        <span class="cart"><a href="addCart.htm?id=${viewProduct.productId}" data-loading-text="Đang tải..." id="button-cart" class="button">Thêm vào giỏ</a></span>
                                        <span class="wishlist"><a class="product-icon fa fa-heart product-icon" onclick="wishlist.addwishlist('55');"></a></span>
                                        <span class="compare"><a class="product-icon fa fa-refresh" onclick="compare.addcompare('55');"></a></span>
                                    </div>
                                </div>
                                <!-- AddThis Button BEGIN -->
                                <div class="addthis_toolbox addthis_default_style">
                                    <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                                    <a class="addthis_button_tweet"></a>
                                    <a class="addthis_button_pinterest_pinit"></a>
                                    <a class="addthis_counter addthis_pill_style"></a>
                                </div>
                                <script type="text/javascript" src="../s7.addthis.com/js/300/addthis_widget.js#pubid=ra-515eeaf54693130e"></script>
                                <!-- AddThis Button END -->
                            </div>
                            <!--product status-->
                <%--</c:forEach>--%>
                        </div>
                    </div>
                <!--=========product detail=========-->

                <!--=========product description=========-->
                <div class="tabs-group box">
                    <div id="tabs" class="htabs heighlight">
                        <ul class="nav clearfix">
                            <li class="active">
                                <a href="#tab-description" data-toggle="tab">Mô tả</a>
                            </li>
                            <li>
                                <a href="#tab-specification" data-toggle="tab">Thuộc tính</a>
                            </li>
                            <li>
                                <a href="#tab-review" data-toggle="tab">Đánh giá (0)</a>
                            </li>
                        </ul>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane active" id="tab-description"></div>
                        <div class="tab-pane" id="tab-specification">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <td colspan="2"><strong>Processor</strong></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Description</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <td>Clockspeed</td>
                                        <td>1</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="tab-review">
                            <!--list comment-->
                            <div id="review"></div>
                            <!--leave a comment-->
                            <p>
                                <a href="#review-form" class="popup-with-form btn btn-sm btn-danger" onclick="$('a[href=\'#tab-review\']').trigger('click'); return false;">Viết đánh giá
                                </a>
                            </p>
                            <div class="hide">
                                <div id="review-form" class="panel review-form-width">
                                    <div class="panel-body">
                                        <form class="form-horizontal" id="form-review">
                                            <h2>Viết đánh giá</h2>
                                            <div class="form-group required">
                                                <div class="col-sm-12">
                                                    <label class="control-label" for="input-name">Họ tên</label>
                                                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                                                </div>
                                            </div>
                                            <div class="form-group required">
                                                <div class="col-sm-12">
                                                    <label class="control-label" for="input-review">Nội dung đánh giá</label>
                                                    <textarea name="text" rows="5" id="input-review" class="form-control"></textarea>
                                                    <div class="help-block"><span class="text-danger">Chú ý:</span> Không sử dụng các định dạng HTML!</div>
                                                </div>
                                            </div>
                                            <div class="form-group required">
                                                <div class="col-sm-12">
                                                    <label class="control-label">Xếp hạng</label>
                                                    &nbsp;&nbsp;&nbsp; Chưa tốt&nbsp;
                                                    <input type="radio" name="rating" value="1" />
                                                    &nbsp;
                                                    <input type="radio" name="rating" value="2" />
                                                    &nbsp;
                                                    <input type="radio" name="rating" value="3" />
                                                    &nbsp;
                                                    <input type="radio" name="rating" value="4" />
                                                    &nbsp;
                                                    <input type="radio" name="rating" value="5" />
                                                    &nbsp;Tốt</div>
                                            </div>
                                            <div class="buttons clearfix">
                                                <div class="pull-right">
                                                    <button type="button" id="button-review" data-loading-text="Đang tải..." class="btn btn-primary">Tiếp tục</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr />
                    <div class="fb-comments" data-width="100%" data-numposts="5"></div>
                </div>
                <!--=========product description=========-->

                <!--=========products related=========-->
                <!--=========products related=========-->
            </div>
        </section>
<script type="text/javascript" src="javascript/theme/elevatezoom-min.js"></script>
<script type="text/javascript">
                        if ($(window).width() >= 992) {
                            var zoomCollection = '#image';
                            $(zoomCollection).elevateZoom({
                                lensShape: "basic",
                                lensSize: 150,
                                easing: true,
                                gallery: 'image-additional-carousel',
                                cursor: 'pointer',
                                galleryActiveClass: "active"
                            });
                        }
</script>
<!--end right-->
                    </div> <!--/.row-->
                </div><!--/.container-->
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
