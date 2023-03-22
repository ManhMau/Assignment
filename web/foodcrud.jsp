

<%@page import="model.Food"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
                    <div class="logo">
                    </div>
                    <ul class="nav">
                        <li class="nav-item" style="margin-top: 100px;">
                            <a class="nav-link" href="admin">
                                <i class="fa-solid fa-house"></i>
                                <p>Trang chủ</p>
                            </a>
                        </li>
                     
                        <li class="nav-item" style="margin-top: 100px;">
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
                                <li class="nav-item active"><a href="Home" class="nav-link" style="color: black !important;">Trang Chủ</a></li>
                                <li class="nav-item"><a href="room" class="nav-link" style="color: black !important;">Phòng</a></li>
                                <li class="nav-item"><a href="Foods" class="nav-link" style="color: black !important;">Nhà Hàng</a></li>
                                <li class="nav-item"><a href="aminities" class="nav-link" style="color: black !important;">Tiện Nghi</a></li>
                                <li class="nav-item"><a href="about" class="nav-link" style="color: black !important;">Tổng Quan</a></li>
                                    <c:if test="${sessionScope.customerLogged==null}">
                                    <li class="nav-item"><a href="Login" class="nav-link">Đăng nhập̣</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.customerLogged!=null}">
                                    <li class="nav-item"><a href="Account" class="nav-link" style="color: black !important;">Xin chào ${sessionScope.customerLogged.getName()} </a></li>
                                    <li class="nav-item"><a href="Logout" class="nav-link"  style="color: black !important;">Đăng xuất</a></li>
                                    </c:if>
                                    <c:if test="${sessionScope.customerLogged.getRole() == 2}">
                                    <li class="nav-item"><a href="admin" class="nav-link" style="color: black !important;">Quản lý</a></li>
                                    </c:if>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- End Navbar -->
                <div class="content" style="margin-top: 60px;">
                    <div class="container">
                        <div class="row justify-content-center mb-5 pb-3">
                            <div class="col-md-7 heading-section text-center">
                                <h2>Đồ ăn vặt & Nước uống</h2>
                                <form method="get">
                                    <select name="foodCategory" class="custom-select custom-select-sm text-center" style="max-width: 180px" onchange="this.form.submit()">
                                        <option value="all" ${foodCategory eq 'all' ? "selected" : ""}>Tất cả</option>
                                        <c:forEach items="${categories}" var="c">
                                            <option ${foodCategory == c.getFoodCategoryId()  ? "selected" : ""} value="${c.getFoodCategoryId()}">${c.getFoodCategoryName()}</option>
                                        </c:forEach>
                                    </select>
                                    <select name="view" class="custom-select custom-select-sm text-center" style="max-width: 120px" onchange="this.form.submit()">
                                        <option value="24" ${view eq '24' ? "selected" : ""}>Hiển thị: 24</option>
                                        <option value="36" ${view eq '36' ? "selected" : ""}>Hiển thị: 36</option>
                                        <option value="48" ${view eq '48' ? "selected" : ""}>Hiển thị: 48</option>
                                    </select>
                                </form>
                                <h5>(Hiện có: ${totalNum} sản phẩm)</h5>
                                <h5><button data-toggle="modal" data-target="#addFood" class="btn btn-primary">Thêm thực đơn</button></h5>
                                <h5>${alert}</h5>
                            </div>
                        </div>
                        <div class="row">
                            <% ArrayList<Food> foods = (ArrayList<Food>) request.getAttribute("foods");
                                for (Food elem : foods) {%>
                            <div class="col-4">
                                <div class="pricing-entry text-center">
                                    <img src="<%=elem.getFoodImage()%>" class="w-50">
                                    <form method="post" action="FoodManagament?action=update&foodId=<%=elem.getFoodId()%>">
                                        <table>
                                            <tbody>
                                                <tr>
                                                    <td>Hình ảnh:</td>
                                                    <td><input name="foodPreviewImage" value="<%=elem.getFoodImage()%>"></td>
                                                </tr>
                                                <tr>
                                                    <td>Tên:</td>
                                                    <td><input value="<%=elem.getFoodName()%>" name="foodName"></td>
                                                </tr>
                                                <tr>
                                                    <td>Số lượng:</td>
                                                    <td><input value="<%=elem.getQuantity()%>" name="foodQuantity"></td>
                                                </tr>
                                                <tr>
                                                    <td>Giá tiền:</td>
                                                    <td><input value="<%=elem.getPrice()%>" type="number" name="foodPrice"></td>
                                                </tr>
                                                <tr>
                                                    <td>Danh mục:</td>
                                                    <td>
                                                        <c:set var="cid" value="<%=elem.getFoodCategory().getFoodCategoryId()%>"/>
                                                        <select name="foodCategoryId">
                                                            <c:forEach items="${categories}" var="c">
                                                                <option ${cid == c.getFoodCategoryId()  ? "selected" : ""} value="${c.getFoodCategoryId()}">${c.getFoodCategoryName()}</option>
                                                            </c:forEach>
                                                        </select>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <button class="btn btn-primary mt-3">Cập nhật</button>
                                    </form>
                                </div>
                            </div>
                            <%}%>
                        </div>
                        <nav aria-label="Page navigation example" class="d-flex justify-content-center mt-3">
                            <ul class="pagination" id="pagination-container">
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="addFood" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Thêm thực đơn</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form method="post" action="FoodManagement?action=add">
                            <table>
                                <tbody>
                                    <tr>
                                        <td>Hình ảnh:</td>
                                        <td><input name="foodPreviewImage" required></td>
                                    </tr>
                                    <tr>
                                        <td>Tên:</td>
                                        <td><input name="foodName" required></td>
                                    </tr>
                                    <tr>
                                        <td>Số lượng:</td>
                                        <td><input name="foodQuantity" required></td>
                                    </tr>
                                    <tr>
                                        <td>Giá tiền:</td>
                                        <td><input name="foodPrice" required></td>
                                    </tr>
                                    <tr>
                                        <td>Danh mục:</td>
                                        <td>
                                            <select name="foodCategoryId">
                                                <c:forEach items="${categories}" var="c">
                                                    <option value="${c.getFoodCategoryId()}">${c.getFoodCategoryName()}</option>
                                                </c:forEach>
                                            </select>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <button class="btn btn-primary mt-3">Thêm</button>
                            <button type="button" class="btn btn-secondary mt-3" data-dismiss="modal">Close</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
    <script src="js/core/popper.min.js" type="text/javascript"></script>
    <script src="js/core/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/plugins/bootstrap-switch.js"></script>
    <script src="js/plugins/bootstrap-notify.js"></script>
    <!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
    <script src="js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
    <!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
    <script src="js/demo.js"></script>
    <script>
                                        $(document).ready(function () {
                                            pagination(${page},${totalNum},${view});

                                            function pagination(page, totalNum, view) {
                                                var totalPage = Math.ceil(totalNum / view);
                                                var html = '';
                                                if (page > 1) {
                                                    html += '<li class="page-item"><a class="page-link" href="${link}page=' + (page - 1) + '" onclick="pagination(' + (page - 1) + ',' + totalNum + ',' + view + ')">&laquo;</a></li>';
                                                }
                                                for (var i = 1; i <= totalPage; i++) {
                                                    if (i == page) {
                                                        html += '<li class="page-item active"><a class="page-link" href="${link}page=' + i + '" onclick="pagination(' + i + ',' + totalNum + ',' + view + ')">' + i + '</a></li>';
                                                    } else {
                                                        html += '<li class="page-item"><a class="page-link" href="${link}page=' + i + '" onclick="pagination(' + i + ',' + totalNum + ',' + view + ')">' + i + '</a></li>';
                                                    }
                                                }
                                                if (page < totalPage) {
                                                    html += '<li class="page-item"><a class="page-link" href="${link}page=' + (page + 1) + '" onclick="pagination(' + (page + 1) + ',' + totalNum + ',' + view + ')">&raquo;</a></li>';
                                                }
                                                $('#pagination-container').html(html);
                                            }

                                        });
    </script>


</html>
