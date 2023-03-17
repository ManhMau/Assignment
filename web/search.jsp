<%-- 
    Document   : search
    Created on : Mar 10, 2023, 1:48:22 PM
    Author     : PC
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="model.RoomType"%>
<%@page import="model.Room"%>
<%@page import="java.util.ArrayList"%>
<%
    ArrayList<RoomType> roomList = (ArrayList<RoomType>) request.getAttribute("roomList");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <style>
          .col-lg-9 {
           margin: 0 auto;
           padding-top: 20px;
           margin-bottom: 20px
             }
       </style>
        <%@include file="head.jspf" %> 
    </head>
    <body>
        <%@include file="header.jspf" %>
        <!-- END nav -->
        <div class="hero">
           
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
                                    <h2>Khách sạn Albert &amp; Khu nghỉ dưỡng</h2>
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
                                            <input value="${datein}" id="inputdateIn" onblur="checkIn()" name="indate" type="date" class="form-control" placeholder="Chọn ngày..." required>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md d-flex py-md-4">
                                    <div class="form-group align-self-stretch d-flex align-items-end">
                                        <div class="wrap bg-white align-self-stretch py-3 px-4">
                                            <label for="#">Ngày trả phòng</label>
                                            <input value="${dateOut}" id="inputdateOut" onblur="checkOut()" name="outdate" type="date" class="form-control" placeholder="Chọn ngày..." required>
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
                                                        <c:forEach items="${ppn}" var="p">
                                                            <option ${((peoplePerRoom == p) ? "selected" : "" )} value="${p}">${p}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md d-flex">
                                    <div class="form-group d-flex align-self-stretch">
                                        <button type="submit" class="btn btn-black py-5 py-md-3 px-4 align-self-stretch d-block"><span>Kiểm tra phòng trống <small>Giá ưu đãi!</small></span></button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
             
                    <%if(roomList.size() > 0) {%>
                    <%for(RoomType r : roomList) {%>

                    <div class="col-lg-9">
                                <div class="room-wrap d-md-flex">
                                    <a href="roomview?id=${r.getId()}" class="img" style="background-image: url(<%=r.getImg1()%>);"></a>
                                    <div class=" half d-flex align-items-center ">
                                        <div class="text p-4 p-xl-5 text-center">
                                            <p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
                                            <p class="mb-0"><span class="price mr-1"><fmt:formatNumber value="<%=r.getMoney()%>"></fmt:formatNumber>&dstrok;</span> <span class="per">/ Một ngày</span></p>
                                            <h3 class="mb-3"><a href="roomview?id=${r.getId()}"><%=r.getType()%></a></h3>
                                            <p class="pt-1"><a href="roomview?id=${r.getId()}" class="btn-custom px-3 py-2">Xem Phòng <span class="icon-long-arrow-right"></span></a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    <%}%>
                    <%} else {%>
                    <div class="pt-5" style="margin: 0 auto">
                        <h2 >Xin lỗi phòng bạn đang muốn tìm kiếm không tồn tại hoặc ko còn phòng trống.</h2>
                    </div>
                    <%}%>
             
        <%@include file="footer.jspf" %>
        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
            <%@include file="javascripts.jspf" %>
        <script>
            const checkIn = () => {
                var date = document.getElementById("inputdateIn").value;
                var varDate = new Date(date);
                var today = new Date();

                if ((varDate.getDate() < today.getDate() && varDate.getMonth() <= today.getMonth())) {

                    alert("Ngày đặt phòng cần lớn hơn hoặc bằng ngày hiện tại.");
                }
            }
            const checkOut = () => {
                var dateout = new Date(document.getElementById("inputdateOut").value);
                var datein = new Date(document.getElementById("inputdateIn").value);
                if (dateout <= datein) {
                    alert("Ngày trả phòng cần lớn hơn ngày đặt phòng.");
                }
            }
        </script>
    </body>
</html>
