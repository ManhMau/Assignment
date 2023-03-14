<%-- 
    Document   : foods
    Created on : Mar 10, 2023, 12:18:33 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="model.Food"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
    <head>        
        <title>Albert</title>
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
                            <p class="breadcrumbs mb-2"><span class="mr-2"><a href="home.jsp">Trang Chủ</a></span>
                            <h1 class="mb-4 bread">Nhà Hàng</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            <section class="ftco-section ftco-menu" style="background-image: url(images/restaurant-pattern.jpg);">
            <div class="container">
                <div class="row justify-content-center mb-5 pb-3">
                    <div class="col-md-7 heading-section text-center ftco-animate">
                        <span class="subheading">Food & Drink</span>
                        <h2>Đồ ăn vặt & Nước uống</h2>
                        <form method="get">
                            <select name="foodCategory" class="custom-select custom-select-sm text-center" style="max-width: 180px" onchange="this.form.submit()">
                            <c:forEach items="${categories}" var="c">
                                    <option ${foodCategory == c.getFoodCategoryId().toString()  ? "selected" : ""} value="${c.getFoodCategoryId()}">${c.getFoodCategoryName()}</option>
                            </c:forEach>
                            </select>
                            
                        </form>
                        <h5>(Hiện có: ${totalNum} sản phẩm)</h5>
                        <a href="Cart" class="btn btn-primary btn-sm">
                            <i class="fas fa-shopping-cart"></i>
                            <span class="ml-1">Giỏ hàng</span>
                            <span class="badge badge-light">${carts.getCarts().size()}</span>
                        </a>

                    </div>
                </div>
                <div class="row">
                    <% ArrayList<Food> foods = (ArrayList<Food>) request.getAttribute("foods");
                        for (Food elem : foods) {%>
                    <div class="col-4 mt-2">
                        <div class="pricing-entry ftco-animate h-100 text-center">
                            <img class="col-12" style="width: 75%" src="<%=elem.getFoodImage()%>">
                            <div class="col-12" style="height: 30%"><h5><%=elem.getFoodName()%></h5></div>
                            <div class="price col-12">Số lượng: <%=elem.getQuantity()%></div>
                            <div class="price col-12">Giá tiền: <fmt:formatNumber value="<%=elem.getPrice()%>"></fmt:formatNumber>&dstrok;</div>
                            <c:if test="${sessionScope.customerLogged!=null}">
                                <button class="btn btn-outline-secondary mt-2" data-id="<%=elem.getFoodId()%>" id="addToCart">Gọi món ngay</button>                                
                            </c:if>
                        </div>
                    </div>
                    <%}%>
                </div>
            </div>
        </section>
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
    </body>
</html>

    </body>
</html>
