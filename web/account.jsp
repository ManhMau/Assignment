<%-- 
    Document   : account
    Created on : Mar 20, 2023, 8:31:17 PM
    Author     : PC
--%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>
            @import url("https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap");

            body {
                background: #f9f9f9;
                font-family: "Roboto", sans-serif;
            }
            .shadow {
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1) !important;
            }

            .profile-tab-nav {
                min-width: 250px;
            }

            .tab-content {
                flex: 1;
            }

            .form-group {
                margin-bottom: 1.5rem;
            }

            .nav-pills a.nav-link {
                padding: 15px 20px;
                border-bottom: 1px solid #ddd;
                border-radius: 0;
                color: #333;
            }
            .nav-pills a.nav-link i {
                width: 20px;
            }

            .img-circle img {
                height: 100px;
                width: 100px;
                border-radius: 100%;
                border: 5px solid #fff;
            }

        </style>
        <%@include file="head.jspf" %>
    </head>
    <body>
        <%@include file="header.jspf" %>
        <div style="background-image: url('images/bg_1.jpg'); min-height: 100vh">
            <div class="col-10" style="margin: 0 auto">
                <h1 class="mb-5">.</h1>
                <div class="bg-white shadow rounded-lg d-block">
                    <div class="p-4 p-md-5" id="v-pills-tabContent">
                        <c:if test="${action eq 'order' or empty action}">
                            <c:if test="${details.size()>0}">
                                <div class="tab-pane fade show active text-center mt-4" id="security" role="tabpanel" aria-labelledby="security-tab">
                                    <h3 class="m-4">Danh sách đặt phòng (Hiện có: ${details.size()})</h3>
                                    <div class="container bootstrap snippets bootdey">
                                        <div class="table-responsive">
                                            <!-- PROJECT TABLE -->
                                            <table class="table colored-header datatable project-list">
                                                <thead>
                                                    <tr>
                                                        <th class="p-0">BookingID</th>
                                                        <th class="p-0">RoomNo</th>
                                                        <th class="p-0">Loại phòng</th>
                                                        <th class="p-0">Ngày đặt</th>
                                                        <th class="p-0">Ngày trả</th>
                                                        <th class="p-0">Tiền phòng</th>
                                                        <th class="p-0">Trạng thái</th>
                                                        <th class="p-0">Chi tiết món ăn</th>
                                                        <th class="p-0">Tổng tiền</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <c:forEach items="${details}" var="d">
                                                        <tr>
                                                            <td>${d.getBookingId()}</td>
                                                            <td>${d.getRoomId()}</td>
                                                            <td>${d.getType()}</td>
                                                            <td>${d.getInDate()}</td>
                                                            <td>${d.getOutDate()}</td>
                                                            <td><fmt:formatNumber type = "number" value = "${d.getTotalMoney()}"/> &Dstrok;</td>
                                                            <td>${d.getStatus()}</td>
                                                            <c:if test="${d.getAllFoodPrice()>0}">
                                                                <td><a href="Account?action=order-food&bookingId=${d.getBookingId()}">Xem</a></td>
                                                            </c:if>
                                                            <c:if test="${d.getAllFoodPrice()<=0}">
                                                                <td>Chưa gọi</td>
                                                            </c:if>
                                                            <td><fmt:formatNumber type = "number" value = "${d.getTotalTransaction()}"/> &Dstrok;</td>
                                                        </tr>
                                                    </c:forEach>
                                                    </tr>
                                                </tbody>
                                            </table>
                                            <!-- END PROJECT TABLE -->
                                        </div>
                                        <div>
                                            <a href="Home"><button class="btn btn-light">Quay lại trang chủ</button></a>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                            <c:if test="${details.size()==0}">
                                <div class="tab-pane fade show active text-center mt-4" id="security" role="tabpanel" aria-labelledby="security-tab">
                                    <h3 class="m-4">Bạn chưa đặt phòng <a href="room"><button class="btn btn-primary">Đặt phòng ngay</button></a></h3>
                                </div>
                            </c:if>
                        </c:if>
                        <c:if test="${action eq 'order-food'}">
                            <div class="tab-pane fade show active text-center mt-4" id="security" role="tabpanel" aria-labelledby="security-tab">
                                <h3 class="m-4">Chi tiết món ăn của đơn ${bookingId}</h3>
                                <div class="container bootstrap snippets bootdey">
                                    <div class="table-responsive">
                                        <!-- PROJECT TABLE -->
                                        <table class="table colored-header datatable project-list">
                                            <thead>
                                                <tr>
                                                    <th >Hình ảnh</th>
                                                    <th>Tên</th>
                                                    <th >Số lượng</th>
                                                    <th >Tổng tiền</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <c:forEach items="${foods}" var="d">
                                                    <tr>
                                                        <td><img style="max-width: 100px" src="${d.getFoodImage()}"></td>
                                                        <td>${d.getFoodName()}</td>
                                                        <td>${d.getQuantity()}</td>
                                                        <td><fmt:formatNumber type = "number" value = "${d.getPrice()}"/> &Dstrok;</td>
                                                    </tr>
                                                </c:forEach>
                                                <tr>
                                                    <td colspan="3" style="text-align:right">Tổng tiền:	</td>
                                                    <td> <fmt:formatNumber type = "number" value = "${total}" /> &Dstrok;</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <!-- END PROJECT TABLE -->
                                    </div>
                                    <div>
                                        <a href="Account"><button class="btn btn-primary">Quay lại đặt phòng</button></a>
                                        <a href="Home"><button class="btn btn-light">Quay lại trang chủ</button></a>
                                    </div>
                                </div>
                            </div>
                        </c:if>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </body>
</html>
