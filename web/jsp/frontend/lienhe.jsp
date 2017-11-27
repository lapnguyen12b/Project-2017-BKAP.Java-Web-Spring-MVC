<%-- 
    Document   : lienhe
    Created on : Sep 14, 2017, 7:12:47 PM
    Author     : LAPNV
--%>

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
                            <li><a href="index.html"><span><i class="fa fa-home"></i></span></a></li>
                            <li><a href="lien-he.html"><span>Liên hệ với chúng tôi</span></a></li>
                        </ol>
                    </div>
                    <div class="row">
                        <section id="sidebar-main" class="col-sm-12">
                            <div id="content">                
                                <h1>Liên hệ với chúng tôi</h1>
                                <h3>Địa chỉ của chúng tôi</h3>

                                <!--gg map-->
                                <div class="contact-location hidden-xs">
                                    <div id="contact-map">
                                        <style>
                                            .container_iframe_google_map iframe {
                                                width: 100% !important;
                                                height: 400px !important;
                                            }
                                        </style>
                                        <div class="container_iframe_google_map">

                                            <!--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3723.9644128596274!2d105.79433031455137!3d21.034109885995466!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab47a1066d77%3A0xb0ddf745b77cb03d!2zWm96by52biAtIFThuqFvIHdlYnNpdGUgYsOhbiBow6BuZw!5e0!3m2!1svi!2s!4v1501813903771" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>--> 
                                            <!--<iframe src="https://www.google.com/maps/place/B%C3%A1ch+Khoa+Aptech/@21.046003,105.7845166,17.5z/data=!4m8!1m2!2m1!1zMjM4IGhvYW5nIHF1b2MgdmlldCwgY2F1IGdpYXksSMOgIE7hu5lpLCBIb8OgbiBLaeG6v20sIEjDoCBO4buZaQ!3m4!1s0x3135ab3b4220c2bd:0x1c9e359e2a4f618c!8m2!3d21.04634!4d105.783458" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>-->                                        
                                        </div>
                                    </div>
                                </div>

                                <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                                    <div class="row">
                                        <fieldset class="col-md-4">
                                            <h3></h3>
                                            <div class="contact-customhtml">
                                                <div class="content">
                                                    <div class="panel-contact-custom">Nơi bạn được thưởng thức những món ăn ngon</div>
                                                    <div class="panel-contact-info">
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="media">
                                                                    <div class="media-icon pull-left"><span class="fa fa-home fa-3x"></span></div>
                                                                    <div class="media-body">
                                                                        <h4 class="media-heading">FoodStore</h4>
                                                                        <address>123 - Cau Giay - Ha Noi</address>
                                                                        <a href="" target="_blank" class="btn btn-info"><i class="fa fa-map-marker"></i>
                                                                            Xem Bản đồ Google
                                                                        </a>
                                                                    </div>
                                                                </div>

                                                                <div class="media">
                                                                    <div class="media-icon pull-left"><span class="fa fa-phone fa-3x"></span></div>
                                                                    <div class="media-body">
                                                                        <h4 class="media-heading">Điện thoại</h4>
                                                                        0123 456 789<br />
                                                                        <br />
                                                                        <strong>Số Fax</strong><br />+84 123 456 789 
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </fieldset>

                                        <fieldset class="col-md-8">
                                            <h3>Thông tin liên hệ</h3>

                                            <div class="form-group required">
                                                <label class="col-sm-2 control-label" for="input-name">Tên của bạn</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="name" value="" id="input-name" class="form-control" />
                                                </div>
                                            </div>
                                            <div class="form-group required">
                                                <label class="col-sm-2 control-label" for="input-email">Địa chỉ Email</label>
                                                <div class="col-sm-10">
                                                    <input type="text" name="email" value="" id="input-email" class="form-control" />
                                                </div>
                                            </div>
                                            <div class="form-group required">
                                                <label class="col-sm-2 control-label" for="input-enquiry">Nội dung</label>
                                                <div class="col-sm-10">
                                                    <textarea name="enquiry" rows="10" id="input-enquiry" class="form-control"></textarea>
                                                </div>
                                            </div>
                                            <div class="buttons">
                                                <div class="pull-right">
                                                    <input class="button btn btn-theme-default" type="submit" value="Gửi đi" />
                                                </div>
                                            </div>
                                        </fieldset>
                                    </div>
                                </form>
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
