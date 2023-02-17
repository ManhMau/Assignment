<%-- 
    Document   : home
    Created on : Feb 13, 2023, 3:56:32 PM
    Author     : PC
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <%@include file="head.jspf" %>
    
    </head>
    <body>
        <%@include file="header.jspf" %>
        <div class="hero">
            <div class="container-wrap d-flex justify-content-end align-items-end">

            </div>
            <section class="home-slider owl-carousel">
                <div class="slider-item" style="background-image:url(images/bg_1.jpg);">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row no-gutters slider-text align-items-center">
                            <div class="col-md-8 ftco-animate">
                                <div class="text mb-5 pb-5">
                                    <h1 class="mb-3">Albert</h1>
                                    <h2>Hơn cả một khách sạn ... một trải nghiệm</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="slider-item" style="background-image:url(images/bg_2.jpg);">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row no-gutters slider-text align-items-center">
                            <div class="col-md-8 ftco-animate">
                                <div class="text mb-5 pb-5">
                                    <h1 class="mb-3">Trải nghiệm vẻ đẹp sử thi</h1>
                                    <h2>Khách sạn Albert &&nbsp; Khu nghỉ dưỡng cao cấp</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <section class="ftco-booking ftco-section ftco-no-pt ftco-no-pb">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 pr-1 aside-stretch">
                        <form action="Search" method="POST" class="booking-form">
                            <div class="row">
                                <div class="col-md d-flex py-md-4">
                                    <div class="form-group align-self-stretch d-flex align-items-end">
                                        <div class="wrap bg-white align-self-stretch py-3 px-4">
                                            <label for="#">Ngày nhận phòng</label>
                                            <input value=""  id="inputdateIn" name="indate" type="date" class="form-control" placeholder="Chọn ngày...">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md d-flex py-md-4">
                                    <div class="form-group align-self-stretch d-flex align-items-end">
                                        <div class="wrap bg-white align-self-stretch py-3 px-4">
                                            <label for="#">Ngày trả phòng</label>
                                            <input value=""  id="inputdateOut" name="outdate" type="date" class="form-control" placeholder="Chọn ngày...">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md d-flex py-md-4">
                                    <div class="form-group align-self-stretch d-flex align-items-end">
                                        <div class="wrap bg-white align-self-stretch py-3 px-4">
                                            <label for="#">Người</label>
                                            <div class="form-field">
                                                <div class="select-wrap">
                                                    <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                                    <select name="peopleperroom" id="" class="form-control">
                                                        
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md d-flex">
                                    <div class="form-group d-flex align-self-stretch">
                                        <button type="submit" class="btn btn-black py-5 py-md-3 px-4 align-self-stretch d-block"><span> Kiểm tra phòng trống <small>Giá ưu đãi!</small></span></button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>


        <section class="ftco-section ftco-no-pt ftco-no-pb ftco-services-wrap">
            <div class="container">
                <div class="row no-gutters">
                    <div class="col-md-3">
                        <a href="room" class="services-wrap img align-items-end d-flex" style="background-image: url(images/room-3.jpg);">
                            <div class="text text-center pb-2">
                                <h3>Phòng đặc biệt</h3>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a href="#" class="services-wrap img align-items-end d-flex" style="background-image: url(images/swimming-pool.jpg);">
                            <div class="text text-center pb-2">
                                <h3>Hồ Bơi</h3>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-3">
                        <a href="Foods" class="services-wrap img align-items-end d-flex" style="background-image: url(images/resto.jpg);">
                            <div class="text text-center pb-2">
                                <h3>Nhà Hàng</h3>
                            </div>
                        </a>
                    </div>
                    <div class="col-md-3">
                        <div class="services-wrap services-overlay img align-items-center d-flex" style="background-image: url(images/sleep.jpg);">
                            <div class="text text-center pb-2">
                                <h3 class="mb-0">Suites</h3>
                                <span>Phòng Đặc Biệt</span>
                                <div class="d-flex mt-2 justify-content-center">
                                    <div class="icon">
                                        <a href="#"><span class="ion-ios-arrow-forward"></span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center mb-5 pb-3">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading" style="font-size: 16px">Chào Mừng Bạn Đến Với Khách Sạn Albert</span>
                        <h2 class="mb-4">Tầm Nhìn Mới Về Sự Sang Trọng</h2>
                    </div>
                </div>  
                <div class="row d-flex">
                    <div class="col-md pr-md-1 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services py-4 d-block text-center">
                            <div class="d-flex justify-content-center">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="flaticon-reception-bell"></span>
                                </div>
                            </div>
                            <div class="media-body">
                                <h3 class="heading mb-3">Dịch Vụ Thân Thiện</h3>
                            </div>
                        </div>      
                    </div>
                    <div class="col-md px-md-1 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services py-4 d-block text-center">
                            <div class="d-flex justify-content-center">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="flaticon-serving-dish"></span>
                                </div>
                            </div>
                            <div class="media-body">
                                <h3 class="heading mb-3">Bữa Sáng</h3>
                            </div>
                        </div>    
                    </div>
                    <div class="col-md px-md-1 d-flex align-sel Searchf-stretch ftco-animate">
                        <div class="media block-6 services py-4 d-block text-center">
                            <div class="d-flex justify-content-center">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="flaticon-car"></span>
                                </div>
                            </div>
                            <div class="media-body">
                                <h3 class="heading mb-3">Thuê Xe</h3>
                            </div>
                        </div>      
                    </div>
                    <div class="col-md px-md-1 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services py-4 d-block text-center">
                            <div class="d-flex justify-content-center">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="flaticon-spa"></span>
                                </div>
                            </div>
                            <div class="media-body">
                                <h3 class="heading mb-3">SPA</h3>
                            </div>
                        </div>      
                    </div>
                    <div class="col-md pl-md-1 d-flex align-self-stretch ftco-animate">
                        <div class="media block-6 services py-4 d-block text-center">
                            <div class="d-flex justify-content-center">
                                <div class="icon d-flex align-items-center justify-content-center">
                                    <span class="ion-ios-bed"></span>
                                </div>
                            </div>
                            <div class="media-body">
                                <h3 class="heading mb-3">Phòng Lộ̣ng Lẫy</h3>
                            </div>
                        </div>      
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section bg-light ftco-room">
            <div class="container-fluid px-0">
                <div class="row no-gutters justify-content-center mb-5 pb-3">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading"style="font-size: 18px">Albert Hotel</span>
                        <h2 class="mb-4">Niềm Tin - Hy Vọng - Phát Triển</h2>
                    </div>
                    
                </div>  
                <div class="row no-gutters">
                    <div class="col-lg-12">
                        <div class="room-wrap">
                            <div class="img d-flex align-items-center" style="background-image: url(images/bg_3.jpg);height: 500px;margin-bottom: 10px">
                                <div class="text text-center px-4 py-4">
                                    <h2>Chào Mừng Đến <a href="index.html">Albert</a> Hotel</h2>
                                    <p style="font-size: 18px">Đừng bao giờ ngừng tin rằng những điều tốt đẹp đang đến.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                     <c:forEach items="${roomTypes}" var="r">
                         <div class="col-lg-6" style="padding: 5px">
                            <div class="room-wrap d-md-flex">
                                <a href="roomview?id=${r.getId()}" class="img" style="background-image: url(${r.getImg1()});"></a>
                                <div class="half left-arrow d-flex align-items-center">
                                    <div class="text p-4 p-xl-5 text-center">
                                        <p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
                                        <p class="mb-0"><span class="price mr-1"><fmt:formatNumber value="${r.getMoney()}"></fmt:formatNumber>&dstrok;</span> <span class="per">/ Một ngày</span></p>
                                        <h3 class="mb-3"><a href="roomview?id=${r.getId()}">${r.getType()}</a></h3>
                                        <p class="pt-1"><a href="roomview?id=${r.getId()}" class="btn-custom px-3 py-2">Xem Phòng <span class="icon-long-arrow-right"></span></a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
               </div>
            </div>
        </section>


        <section class="ftco-section testimony-section bg-light">
            <div class="container">
                <div class="row justify-content-center mb-5 pb-3">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading">Phản Hồi</span>
                        <h2 class="mb-4">Khách Hàng Vui Vẻ</h2>
                    </div>
                </div>  
                <div class="row justify-content-center">
                    <div class="col-md-8 ftco-animate">
                        <div class="row ftco-animate">
                            <div class="col-md-12">
                                <div class="carousel-testimony owl-carousel ftco-owl">
                                    <c:forEach items="${reviewList}" var="r">
                                        <div class="item">
                                            <div class="testimony-wrap py-4 pb-5">
                                                <div class="user-img mb-4" style="background-image: url(https://www.kindpng.com/picc/m/24-248253_user-profile-default-image-png-clipart-png-download.png)">
                                                    <span class="quote d-flex align-items-center justify-content-center">
                                                        <i class="icon-quote-left"></i>
                                                    </span>
                                                </div>
                                                <div class="text text-center">
                                                    <p class="star"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
                                                    <p class="mb-4">${r.getStatus()}</p>
                                                    <p class="name">${r.getAccount().getName()}</p>
                                                    <span class="position">Khách Hàng</span>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section ftco-no-pt ftco-no-pb px-0">
            <div class="container-fluid px-0">
                <div class="row no-gutters justify-content-end">
                    <div class="col-md-12">
                        <div id="home" class="video-hero" style="height: 800px; background-image: url(images/bg_1.jpg); background-size:cover; background-position: center center;">
                            <a class="player" data-property="{videoURL:'https://www.youtube.com/watch?v=ism1XqnZJEg',containment:'#home', showControls:false, autoPlay:true, loop:true, mute:true, startAt:0, opacity:1, quality:'default'}"></a>
                            <div class="container">
                                <div class="row justify-content-start d-flex align-items-end height-text ">
                                    <div class="col-md-8">
                                        <div class="text">
                                            <h1>Uy Tín Tạo Nên Thương Hiệu</h1>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="instagram mt-5">
            <div class="container-fluid">
                <div class="row no-gutters justify-content-center pb-5">
                    <div class="col-md-7 text-center heading-section ftco-animate">
                        <span class="subheading">Ảnh</span>
                        <h2><span>Instagram</span></h2>
                    </div>
                </div>
                <div class="row no-gutters">
                    <div class="col-sm-12 col-md ftco-animate">
                        <a href="images/insta-1.jpg" class="insta-img image-popup" style="background-image: url(images/insta-1.jpg);">
                            <div class="icon d-flex justify-content-center">
                                <span class="bi bi-instagram align-self-center"></span>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-12 col-md ftco-animate">
                        <a href="images/insta-2.jpg" class="insta-img image-popup" style="background-image: url(images/insta-2.jpg);">
                            <div class="icon d-flex justify-content-center">
                                <span class="bi bi-instagram align-self-center"></span>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-12 col-md ftco-animate">
                        <a href="images/insta-3.jpg" class="insta-img image-popup" style="background-image: url(images/insta-3.jpg);">
                            <div class="icon d-flex justify-content-center">
                                <span class="bi bi-instagram align-self-center"></span>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-12 col-md ftco-animate">
                        <a href="images/insta-4.jpg" class="insta-img image-popup" style="background-image: url(images/insta-4.jpg);">
                            <div class="icon d-flex justify-content-center">
                                <span class="bi bi-instagram align-self-center"></span>
                            </div>
                        </a>
                    </div>
                    <div class="col-sm-12 col-md ftco-animate">
                        <a href="images/insta-5.jpg" class="insta-img image-popup" style="background-image: url(images/insta-5.jpg);">
                            <div class="icon d-flex justify-content-center">
                                <span class="bi bi-instagram align-self-center"></span>
                            </div>
                        </a>
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
