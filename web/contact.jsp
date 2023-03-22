<%-- 
    Document   : contact
    Created on : Mar 8, 2023, 2:27:30 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jspf" %>
    </head>
    <body>
        <%@include file="header.jspf" %>

        <!-- END nav -->
        <div class="hero-wrap" style="background-image: url('images/bg_1.jpg');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
                    <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                        <div class="text">
                            <p class="breadcrumbs mb-2"><span class="mr-2"><a href="Home">Trang Chủ</a></span>
                            <h1 class="mb-4 bread">Liên Hệ Chúng Tôi</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-section contact-section bg-light">
            <div class="container">
                <div class="row d-flex mb-5 contact-info">
                    <div class="col-md-12 mb-4">
                        <h2 class="h3">Thông Tin Liên Hệ̣</h2>
                    </div>
                    <div class="w-100"></div>
                    <div class="col-md-3 d-flex">
                        <div class="info bg-white p-4">
                            <p><span>Địa Chỉ:</span> 198 West 21th Street, Suite 721 New York NY 10016</p>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex">
                        <div class="info bg-white p-4">
                            <h6><span>SốĐiện Thoại:</span> <a href="tel://1234567920">+ 1235 2355 98</a></h6>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex">
                        <div class="info bg-white p-4">
                            <h6><span>Email:</span> <a href="mailto:info@yoursite.com">info@yoursite.com</a></h6>
                        </div>
                    </div>
                    <div class="col-md-3 d-flex">
                        <div class="info bg-white p-4">
                            <h6><span>Website:</span> <a href="Home">albert.com</a></h6>
                        </div>
                    </div>
                </div>
                <div class="row block-9">
                    <div class="col-md-6 order-md-last d-flex">
                        <form action="contact" method="POST" class="bg-white p-5 contact-form">
                            <div class="form-group">
                                <input type="text" name="name" class="form-control" placeholder="Họ Và Tên" required>
                            </div>
                            <div class="form-group">
                                <input type="text" name="email" class="form-control" placeholder="Email Của Bạn" required>
                            </div>
                            <div class="form-group">
                                <textarea name="content" cols="30" rows="7" class="form-control" placeholder="Nội dung" required></textarea>
                            </div>
                            <div class="form-group">
                                <input type="submit" value="Gửi Thư" class="btn btn-primary py-3 px-5">
                            </div>
                        </form>

                    </div>

                    <div class="col-md-6 d-flex">
                        <img width="100%" src="https://tdt-tanduc.com/images/pic-lienhe.jpg">
                    </div>
                </div>
            </div>
        </section>
        <%@include file="footer.jspf" %>

      

        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

        <%@include file="javascripts.jspf" %>
        
    </body>
</html>
