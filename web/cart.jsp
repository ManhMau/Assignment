<%-- 
    Document   : cart
    Created on : Mar 20, 2023, 8:15:33 PM
    Author     : PC
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
                            <p class="breadcrumbs mb-2"><span class="mr-2"><a href="home.jsp">Trang Chủ</a></span> 
                            <c:choose>
                                <c:when test="${sessionScope.carts==null or sessionScope.carts.getCarts().size() == 0}">
                                    <h1 class="mb-4 bread text-center">Giỏ hàng trống</h1>
                                </c:when>
                                <c:otherwise>
                                    <h1 class="mb-4 bread text-center">Giỏ hàng của bạn</h1>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <c:if test="${sessionScope.carts!=null and sessionScope.carts.getCarts().size() > 0}">
            <section class="ftco-section contact-section bg-light">
                <div class="container">
                    <table class="table table-striped text-center">
                        <thead>
                            <tr>
                                <th scope="col">Hình ảnh</th>
                                <th scope="col">Tên sản phẩm</th>
                                <th scope="col">Số lượng</th>
                                <th scope="col">Giá tiền</th>
                                <th scope="col">Tổng</th>
                                <th scope="col">Hành động</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${sessionScope.carts.getCarts()}" var="c">
                                <tr>
                                    <td> <img width="60" src="${c.value.getFood().getFoodImage()}" alt=""/></td>
                                    <td>${c.value.getFood().getFoodName()}</td>
                                    <td>
                                        <div class="input-append d-flex">
                                            <a href="addToCart?action=decrease&foodId=${c.value.getFood().getFoodId()}&directTo=Cart"><button class="btn" type="button"><i class="icon-minus"></i></button></a>
                                            <form method="post" action="addToCart?action=setQuantity&foodId=${c.value.getFood().getFoodId()}&directTo=Cart"><input style="max-width:40px" class="text-center" name="quantity" value="${c.value.getQuantity()}" type="number"></form>
                                            <a href="addToCart?action=increase&foodId=${c.value.getFood().getFoodId()}&directTo=Cart"><button class="btn" type="button"><i class="icon-plus"></i></button></a>
                                        </div>
                                    </td>
                                    <td><fmt:formatNumber type = "number" value = "${c.value.getFood().getPrice()}" /></td>
                                    <td><fmt:formatNumber type = "number" value = "${c.value.getPrice()}" /></td>
                                    <td> <a href="addToCart?action=remove&foodId=${c.value.getFood().getFoodId()}&directTo=Cart"><button class="btn btn-danger" type="button"><i class="bi-remove">Remove</i></button></a></td>
                                </tr>
                            </c:forEach>
                            <tr>
                                <td colspan="5" style="text-align:right">Chọn phòng:	</td>
                        <form method="post" action="addToCart?action=buynow">
                            <td><select name="bookingId">
                                    <c:forEach items="${booking}" var="b">
                                        <option value="${b.getId()}">${b.getRoom().getRoomNo()}</option>
                                    </c:forEach>
                                </select>
                            </td>
                            </tr>
                            <tr>
                                <td colspan="5" style="text-align:right">Tổng tiền:	</td>
                                <td> <fmt:formatNumber type = "number" value = "${sessionScope.carts.getTotal()}" /></td>
                            </tr>
                            <tr>
                                <td colspan="6" style="text-align:right"><strong><button class="btn btn-outline-danger mt-2">Gọi ngay</button></td>
                            </tr>
                        </form>
                        </tbody>
                    </table>
                </div>
            </section>
        </c:if>
 <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body text-center" id="addToCartMessage">
                        Đã thêm sp vào giỏ hàng
                    </div>
                </div>
            </div>
        </div>
        <%@include file="footer.jspf" %>
        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
            <%@include file="javascripts.jspf" %>
            <script>
               var message = "${buy}";
                if(message != null && message == "true"){
                     $('#exampleModal').modal('show');
                     $('#addToCartMessage').html('Đã đặt đồ thành công');
                }
            </script>
    </body>
</html>

