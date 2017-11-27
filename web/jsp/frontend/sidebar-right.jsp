<%-- 
    Document   : sidebar-right
    Created on : Sep 14, 2017, 11:13:15 AM
    Author     : LAPNV
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="layerslider-wrapper" style="max-width:870px;">
    <div class="bannercontainer banner-boxed" style="">
        <!-- slider -->
        <div id="sliderlayer365096591" class="rev_slider boxedbanner" style="width:100%;height:447px; ">
            <ul>
                <c:forEach items="${slider}" var="slider">
                    <li data-masterspeed="300"
                        data-transition="random"
                        data-slotamount="7"
                        data-thumb="<%=request.getContextPath()%>/jsp/frontend/image/slider/${slider.images}">                        
                        <img src="<%=request.getContextPath()%>/jsp/frontend/image/slider/${slider.images}" alt="Image 0" style="width: 857px;height: 441px;"/>
                        <!-- THE MAIN IMAGE IN THE SLIDE -->
    <!--                    <div class="caption randomrotate easeInOutQuad   easeInOutQuad"
                             data-x="463"
                             data-y="50"
                             data-speed="300"
                             data-start="365"
                             data-easing="easeOutExpo"  >
                            <img src="jsp/frontend/image/catalog/Slide/image5.png" alt="catalog/Slide/image5.png"/>
                        </div>
                         THE MAIN IMAGE IN THE SLIDE 
                        <div class="caption  randomrotate easeInOutQuad   easeInOutQuad"
                             data-x="553"
                             data-y="36"
                             data-speed="300"
                             data-start="819"
                             data-easing="easeOutExpo"  >
                            <img src="jsp/frontend/image/catalog/Slide/saleoff.png" alt="catalog/Slide/saleoff.png"/>
                        </div>
                         THE MAIN IMAGE IN THE SLIDE 
                        <div class="caption large_black_text lft easeOutQuad   easeOutQuad "
                             data-x="70"
                             data-y="58"
                             data-speed="300"
                             data-start="1528"
                             data-easing="easeOutExpo">Combo1 
                        </div>
                         THE MAIN IMAGE IN THE SLIDE 
                        <div class="caption large_text lfr easeOutExpo   easeOutExpo"
                             data-x="70"
                             data-y="162"
                             data-speed="300"
                             data-start="2174"
                             data-easing="easeOutExpo"  >Giảm giá 20% nay chỉ còn                                
                        </div>
                         THE MAIN IMAGE IN THE SLIDE 
                        <div class="caption bold_red_text lfb easeOutExpo   easeOutExpo "
                             data-x="70"
                             data-y="227"
                             data-speed="300"
                             data-start="2400"
                             data-easing="easeOutExpo"  >40.000đ                                
                        </div>
                         THE MAIN IMAGE IN THE SLIDE 
                        <div class="caption tp-button btn-theme-primary lfb easeInOutExpo   easeInOutExpo "
                             data-x="70"
                             data-y="278"
                             data-speed="300"
                             data-start="2887"
                             data-easing="easeOutExpo"  >MUA NGAY                                
                        </div>-->
                    </li>
                </c:forEach>

            </ul>
            <div class="tp-loader" style="display: none;"></div>
            <div class="tp-bannertimer" style="visibility: hidden; width: 100%;"></div>
        </div>
        <!-- <div class="tp-bullets simplebullets round" style="bottom: 20px; left: 50%; margin-left: -39px;">
            <div class="bullet first"></div>
            <div class="bullet"></div>
            <div class="bullet"></div>
            <div class="bullet selected"></div>
            <div class="bullet last"></div>
            <div class="tpclear"></div>
        </div> -->
        <!-- <div style="position: absolute; top: 220px; margin-top: -18px; left: 20px;" class="tp-leftarrow tparrows default"></div> -->
        <!-- <div style="position: absolute; top: 220px; margin-top: -18px; right: 20px;" class="tp-rightarrow tparrows default"></div> -->
    </div>
</div>
            <!-- /end slider -->
<!--
##############################
 - ACTIVATE THE BANNER HERE -
##############################
-->
<script type="text/javascript">

    var tpj = jQuery;

    if (tpj.fn.cssOriginal != undefined)
        tpj.fn.css = tpj.fn.cssOriginal;

    tpj('#sliderlayer365096591').revolution(
    {
        // sliderlayer484555131
        delay:9000,
        startheight:447,
        startwidth:870,
        hideThumbs:0,
        thumbWidth:100,
        thumbHeight:50,
        thumbAmount:5,
        navigationType: "bullet",
        navigationArrows: "verticalcentered",
        navigationStyle: "round",
        navOffsetHorizontal:0,
        navOffsetVertical:20,
        touchenabled: "on",
        onHoverStop: "off",
        shuffle: "off",
        stopAtSlide: -1,
        stopAfterLoops: -1,
        hideCaptionAtLimit: 0,
        hideAllCaptionAtLilmit: 0,
        hideSliderAtLimit: 0,
        fullWidth: "off",
        shadow:0        });
</script>
<script type="text/javascript">

    var tpj = jQuery;

    if (tpj.fn.cssOriginal != undefined)
        tpj.fn.css = tpj.fn.cssOriginal;

    tpj('#sliderlayer484555131').revolution(
        {
            delay:9000,
            startheight:447,
            startwidth:870,
            hideThumbs:0,
            thumbWidth:100,
            thumbHeight:50,
            thumbAmount:5,
            navigationType: "bullet",
            navigationArrows: "verticalcentered",
                        navigationStyle: "round",
                        navOffsetHorizontal:0,
            navOffsetVertical:20,
            touchenabled: "on",
            onHoverStop: "off",
            shuffle: "off",
            stopAtSlide: -1,
            stopAfterLoops: -1,
            hideCaptionAtLimit: 0,
            hideAllCaptionAtLilmit: 0,
            hideSliderAtLimit: 0,
            fullWidth: "off",
            shadow:0        });
</script>
