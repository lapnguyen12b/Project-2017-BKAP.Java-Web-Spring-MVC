<%-- 
    Document   : sidebar-left
    Created on : Sep 14, 2017, 11:04:44 AM
    Author     : LAPNV
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
                            <div id="column-left" class="hidden-xs sidebar">
                                <div class="box dark nopadding">
                                    <div class="box-heading"><span>Danh mục</span></div>
                                    <div class="box-content">
                                        <ul>
                                            <c:forEach items="${catalog}" var="catalog">
                                            <li><a href="listProduct.htm?catalogId=${catalog.catalogId}">${catalog.catalogName}</a></li>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>

                                <div class="box carousel slide pavtestimonial hidden-sm hidden-xs nopadding">
                                    <div class="box-content">
                                        <ul class="media-list">
                                            <li class="media">
                                                <a class="pull-left" href="#">

                                                    <img src="jsp/frontend/image/cache/catalog/banner/icon-menu-50x60.png" alt="THỰC ĐƠN HÔM NAY" style="width: 50px; height: 60px" />

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

                                                    <img src="jsp/frontend/image/cache/catalog/banner/icon-team-50x60.png" alt="NGÀY CỦA GIA ĐÌNH" style="width: 50px; height: 60px" />

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

                                                    <img src="jsp/frontend/image/cache/catalog/banner/icon-find-50x60.png" alt="CHÚNG TÔI Ở ĐÂU?" style="width: 50px; height: 60px" />

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
                                <!-- /box carousel slide pavtestimonial hidden-sm hidden-xs nopadding -->
<!--                                <div class="banner-wrapper clearfix">
                                    <a href="#" target="_self">
                                        <img src="jsp/frontend/image/cache/catalog/banner/banner3-372x140.jpg" class="img-responsive" alt="" />
                                    </a>
                                </div>-->
                                <div id="banner1107758501" class="owl-carousel">
                                    <div class="item">
                                        <a href="#" target="_self">
                                            <img src="jsp/frontend/image/cache/catalog/banner/foodstore_20banner_206-272x249.jpg" alt="" class="img-responsive" />
                                        </a>
                                    </div>
                                </div>
                                                    <script type="text/javascript"><!--
                                                        $('#banner1107758501').owlCarousel({
                                                            items: 6,
                                                            autoPlay: 3000,
                                                            singleItem: true,
                                                            navigation: false,
                                                            pagination: false,
                                                            transitionStyle: 'fade'
                                                        });
                                                    --></script>
                            </div>
                       <!-- /#sidebar-left -->
