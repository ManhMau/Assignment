<%-- 
    Document   : roomview
    Created on : Feb 18, 2023, 11:43:44 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include  file="head.jspf"%> 
    </head>
     <body style="justify-content: center !important">

        <%@include file="header.jspf" %>
        <!-- END nav -->
        <div class="hero-wrap" style="background-image: url('images/bg_1.jpg');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
                    <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                        <div class="text">
                            <p class="breadcrumbs mb-2"><span class="mr-2"><a href="Home">Trang Chủ</a></span> <span>Phòng</span></p>
                            <h1 class="mb-4 bread">Phòng</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-section">
            <div class="container" >
                <div class="row" style="    align-items: center;
                     justify-content: center;
                     margin-left: 20px;">
                    <div class="col-lg-9">
                        <div class="row">
                            <div class="col-md-12 ftco-animate">
                                <div class="single-slider owl-carousel">
                                    <div class="item">
                                        <div class="room-img" style="background-image: url(${roomType.getImg2()});height: 500px"></div>
                                    </div>
                                    <div class="item">
                                        <div class="room-img" style="background-image: url(${roomType.getImg3()});height: 500px"></div>
                                    </div>
                                    <div class="item">
                                        <div class="room-img" style="background-image: url(${roomType.getImg4()});height: 500px"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-12 room-single mt-4 mb-5 ftco-animate">
                                <h2 class="mb-4">${roomType.getType()}</h2>
                                <p>${roomType.getDescription()}</p>
                                <div class="d-md-flex mt-5 mb-5">
                                    <ul class="list">
                                        <li><span>Tối đa:</span> ${roomType.getPeoplePerRoom()} Người </li>
                                        <li><span>Diện tích:</span> ${roomType.getSquare()} m2</li>
                                    </ul>
                                    <ul class="list ml-md-5">
                                        <li><span>Phòng tắm:</span> ${roomType.getBathNum()}</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-12 d-flex justify-content-center" style="margin-bottom: 30px">
                                <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#exampleModal">
                                    Đặt phòng ngay
                                </button>
                            </div>
                            <hr>
                            <div class="col-md-12 properties-single ftco-animate mb-5 mt-4">
                                <h4 class="mb-4">Đánh Giá</h4>
                                <form method="post" action="review?id=${id}" class="star-rating">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" value="5" name="rating" checked>
                                                <label class="form-check-label" for="exampleCheck1">
                                                    <p class="rate"><span><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i> ${ratings.get(0)} Đánh Giá</span></p>
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" value="4" name="rating">
                                                <label class="form-check-label" for="exampleCheck1">
                                                    <p class="rate"><span><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star"></i> ${ratings.get(1)} Đánh Giá</span></p>
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" value="3" name="rating">
                                                <label class="form-check-label" for="exampleCheck1">
                                                    <p class="rate"><span><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star"></i><i class="bi bi-star"></i> ${ratings.get(2)} Đánh Giá</span></p>
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input type="radio" class="form-check-input" value="2" name="rating">
                                                <label class="form-check-label" for="exampleCheck1">
                                                    <p class="rate"><span><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i> ${ratings.get(3)} Đánh Giá</span></p>
                                                </label>
                                            </div>
                                            <div class="form-check">
                                                <input type="radio" class="form-check-input"  value="1" name="rating">
                                                <label class="form-check-label" for="exampleCheck1">
                                                    <p class="rate"><span><i class="bi bi-star-fill"></i><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i><i class="bi bi-star"></i> ${ratings.get(4)} Đánh Giá</span></p>
                                                </label>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label>Đánh giá của bạn</label>
                                            <textarea class="form-control" placeholder="Đánh giá của bạn" name="content"></textarea>
                                        </div>
                                        <div style="margin: 0 auto">
                                            <input class="btn btn-primary" type="submit" value="Gửi đánh giá">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="border p-4">
                            <div class="p-4">
                                <h4>Đánh giá gần đây</h4>
                            </div>
                            <c:choose>
                                <c:when test="${reviewList.size()==0}">
                                    <div class="pl-5">
                                        <p>Chưa có đánh giá nào.</p>
                                    </div>  
                                </c:when>  

                                <c:otherwise>
                                    <c:forEach items="${reviewList}" var="r">
                                        <div class="pl-5">
                                            <div class="">
                                                <i class="fa-solid fa-user"></i> ${r.getAccount().getName()} - <span class="ml-1"> ${r.getRating()} <i style="color: #b69100;" class="bi bi-star-fill"></i></span>
                                            </div>
                                            <div class="">
                                                <p class="text-muted ml-5">${r.getStatus()}</p>
                                            </div>
                                        </div>
                                        <hr>
                                    </c:forEach>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div> <!-- .col-md-8 -->

                </div>
            </div>
        </section> <!-- .section -->

        <%@include file="footer.jspf" %>
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Thông tin đặt phòng</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="booking?rid=${id}" method="POST">
                            <div class="form-group row" style="display: none">
                                <label for="roomType" class="col-sm-4 col-form-label">Loại phòng </label>
                                <div class="col-sm-8">
                                    <input class="form-control form-control-sm" type="text" name="id" id="roomType" value="${roomType.getId()}">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="roomTypeDisable" class="col-sm-4 col-form-label">Loại phòng </label>
                                <div class="col-sm-8">
                                    <input class="form-control form-control-sm" type="text" name="roomType" id="roomTypeDisable" value="${roomType.getType()}" disabled>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputdateIn" class="col-sm-4 col-form-label">Ngày Đặt Phòng</label>
                                <div class="col-sm-8">
                                    <input type="date" value="${sessionScope.datein}" name="datein" class="form-control form-control-sm" onblur="checkIn()" id="inputdateIn" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="inputdateOut" class="col-sm-4 col-form-label">Ngày Trả Phòng</label>
                                <div class="col-sm-8">
                                    <input type="date" value="${sessionScope.dateout}" name="dateout" class="form-control form-control-sm" onblur="checkOut()" id="inputdateOut" required>
                                </div>
                            </div>
                            <div class="form-group row">
                                <div class="col-sm-12">
                                    <label for="notice">Vui lòng ghi yêu cầu của bạn tại đây. (không bắt buộc)</label><br>
                                </div>
                                <div class="col-sm-12">
                                    <textarea name="notice" class="form-control form-control-sm" id="notice" ></textarea>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng</button>
                                <button type="submit" class="btn btn-primary">Đặt phòng</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="message" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        ${action eq 'Booking' ? "Đặt phòng " : (action eq 'addrv' ? "Thêm đánh giá" : "")} ${success eq "true" ? ("thành công.") : "thất bại."}
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

        <%@include file="javascripts.jspf" %>
        
    </body>
</html>
