<%-- 
    Document   : room
    Created on : Feb 17, 2023, 1:23:38 PM
    Author     : PC
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jspf" %>
    </head>
    <body>
        <%@include file="header.jspf" %>
        
        <div class="hero-wrap" style="background-image: url('images/bg_1.jpg');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
                    <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                        <div class="text">
                            <p class="breadcrumbs mb-2"><span class="mr-2"><a href="Home">Trang Chủ</a></span> 
                            <h1 class="mb-4 bread">Phòng</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <section class="ftco-section bg-light ftco-no-pb">
            <div class="container-fluid px-0">
                <div class="row no-gutters justify-content-center mb-5 pb-3">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading">Albert Hotel</span>
                        <h2 class="mb-4">Niềm Tin - Hy Vọng - Phát Triển</h2>
                    </div>  
                    <div class="row no-gutters">
                        <c:forEach items="${roomTypes}" var="r">
                            <div class="col-lg-6" style="padding: 5px">
                                <div class="room-wrap d-md-flex">
                                    <a href="roomview?id=${r.getId()}" class="img" style="background-image: url(${r.getImg1()});"></a>
                                    <div class="half left-arrow d-flex align-items-center">
                                        <div class="text p-4 p-xl-5 text-center">
                                            <p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
                                            <p class="mb-0"><span class="price mr-1"> <fmt:formatNumber value="${r.getMoney()}"></fmt:formatNumber>&dstrok;</span> <span class="per">/ Một ngày</span></p>
                                            <h3 class="mb-3"><a href="roomview?id=${r.getId()}">${r.getType()}</a></h3>
                                            <p class="pt-1"><a href="roomview?id=${r.getId()}" class="btn-custom px-3 py-2">Xem Phòng <span class="icon-long-arrow-right"></span></a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
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
