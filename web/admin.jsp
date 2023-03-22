<%-- 
    Document   : admin
    Created on : Mar 19, 2023, 2:11:32 PM
    Author     : PC
--%>

<%@page import="java.util.HashMap"%>
<%@page import="model.Booking"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Room"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<ArrayList<Room>> list = (ArrayList<ArrayList<Room>>) request.getAttribute("list");
    HashMap<Integer, Booking> booking = (HashMap<Integer, Booking>) request.getAttribute("booking");
%>
<html lang="en">

    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <!--     Fonts and icons     -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.0/css/all.min.css"
              integrity="sha512-10/jx2EXwxxWqCLX/hHth/vu2KY3jCF70dCQB8TSgNjbCVAC/8vai53GfMDrO2Emgwccf2pJqxct9ehpzG+MTw=="
              crossorigin="anonymous" referrerpolicy="no-referrer" />
        <!-- CSS Files -->
        <link href="css/bootstrap/bootstrap.min.css" rel="stylesheet" />
        <link href="css/light-bootstrap-dashboard.css" rel="stylesheet" />
        <!-- CSS Just for demo purpose, don't include it in your project -->
        <link href="css/demo.css" rel="stylesheet" />
        
        <%@include file="head.jspf" %>
    </head>

    <body>

<div class="wrapper">
            <div class="sidebar" >
                <div class="sidebar-wrapper" style="background: rgba(100, 11, 0, 0.8); text-align: center; width: 12%">
                 
                    <ul class="nav">
                        <li class="nav-item" style="margin-top: 100px;">
                            <a class="nav-link" href="admin">
                                <i class="fa-solid fa-house"></i>
                                <p>Trang chủ</p>
                            </a>
                        </li>
                        
                        <li class="nav-item" style="margin-top: 100px">
                            <a class="nav-link" href="FoodManagament">
                                <i class="fa-solid fa-utensils"></i>
                                <p>Quản lý thực đơn</p>
                            </a>
                        </li>                       
                    </ul>
                </div>
            </div>
       
            <div class="main-panel">
                <!-- Navbar -->

                <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" 
                     id="ftco-navbar" style="z-index: 999; position: fixed; top: 0; background: white !important;">
                    <div class="container">
                        <a class="navbar-brand" href="Home" style="color: black !important; font-weight: bold">Albert</a>
                        <button class="navbar-toggler" type="button" style="color: black !important;" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="oi oi-menu"></span> Menu
                        </button>
                        <div class="collapse navbar-collapse" id="ftco-nav">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item active"><a href="Home" class="nav-link" style="color: black !important;">Trang Chủ</a></li>
                                <li class="nav-item"><a href="room" class="nav-link" style="color: black !important;">Phòng</a></li>
                                <li class="nav-item"><a href="Foods" class="nav-link" style="color: black !important;">Nhà Hàng</a></li>
                                <li class="nav-item"><a href="aminities" class="nav-link" style="color: black !important;">Tiện Nghi</a></li>
                                <li class="nav-item"><a href="about" class="nav-link" style="color: black !important;">Tổng Quan</a></li>
                                    
                                    
                                    <li class="nav-item"><a href="Account" class="nav-link" style="color: black !important;">Xin chào admin@gmail.com </a></li>
                                    <li class="nav-item"><a href="Logout" class="nav-link"  style="color: black !important;">Đăng xuất</a></li>
                                    
                                    
                                    <li class="nav-item"><a href="admin" class="nav-link" style="color: black !important;">Quản lý</a></li>
                                    
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- End Navbar -->
                <div class="content" style="margin-top: 60px;">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card ">
                                    <div class="card-body m-4">
                                        <%! int i = 0;%>
                                        <div class="text-center">
                                            <p style="font-size: 27px;">Tình trạng phòng hôm nay</p>
                                        </div>
                                        <c:forEach begin="0" end="${roomTypeList.size() - 1}" step="1" var="i">
                                            <p style="font-size: 23px;">${roomTypeList.get(i).getType()}</p>
                                            <div class="row">
                                                <c:forEach items="${list.get(i)}" var="r">
                                                    <div class="col-md-3">
                                                        <div class="card" style="box-shadow: 1px 1px 2px 2px; height: 180px;">
                                                            <div class="card-body text-center">
                                                                <a href="roomcheck?id=${r.getRoomNo()}" class="link-dark" style="font-size: 19px;">Phòng số: ${r.getRoomNo()}</a>
                                                                <c:if test="${booking.containsKey(r.getRoomNo())}">
                                                                    <p>Tình trạng: Đang sử dụng</p>   
                                                                    <p>Khách hàng: ${booking.get(r.getRoomNo()).getAccount().getName()}</p>
                                                                    <p>${booking.get(r.getRoomNo()).getIndate()} <i class="fa-solid fa-arrow-right"></i> ${booking.get(r.getRoomNo()).getOutdate()}</p>
                                                                </c:if>
                                                                <c:if test="${!booking.containsKey(r.getRoomNo())}">
                                                                    <p>Tình trạng: Không sử dụng</p>
                                                                </c:if>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
    <%@include file="javascripts.jspf" %>
</html>
