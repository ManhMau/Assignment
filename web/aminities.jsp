<%-- 
    Document   : aminities
    Created on : Mar 1, 2023, 9:36:46 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jspf" %> 
        <style>
            .intro{
                font-size: 20px;
            }
            .col-md-5{
                margin-left: 40px;
                padding-bottom: 30px
                
                }
                span{
                    font-size: 20px;
                    color: #009cbc;
                      
                }
        </style>
    </head>
    <body>
         <%@include file="header.jspf" %>

        <!-- END nav -->
        <div class="hero-wrap" style="background-image: url('images/bg_1.jpg'); margin-bottom: 50px">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
                    <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                        <div class="text">
                            <p class="breadcrumbs mb-2"><span class="mr-2"><a href="Home">Trang Chủ</a></span>
                            <h1 class="mb-4 bread">Tiện Nghi</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div>
            <div class="row">
                <div class="col-md-5">
                <img  src="images/q.jpg">
                </div>
                <div class="col-md-5">
                   <h2><a>Airport Shuttle &amp; Parking Lot</a></h2>
                  
                            <p class="price">
                                <span class="free">Free</span>
                            </p>
                            <p class="intro">
                                Airport Shuttle & Parking Lot là một dịch vụ mà khách sạn cung cấp để hỗ trợ khách hàng đến và đi từ sân bay. 
                                Dịch vụ này bao gồm đưa đón khách hàng từ sân bay đến khách sạn và ngược lại, đồng thời cung cấp chỗ đỗ xe tạm 
                                thời cho khách hàng khi họ đi du lịch hoặc công tác xa.<br>
                                Khách sạn mong muốn mang đến sự thuận tiện và an toàn cho khách hàng trong quá trình di chuyển, 
                                đồng thời tạo điều kiện tốt nhất để khách hàng có một trải nghiệm tuyệt vời khi lưu trú tại khách sạn.
                            </p>
                </div>
             </div>
            <div class="row">
            <div class="col-md-5">
                <img  src="images/gym.jpg">
            </div>
            <div class="col-md-5">
                   <h2><a>Gym</a></h2>
                            <p class="price">
                                <span class="free">Free</span>
                            </p>
                            <p class="intro">
                                Phòng Gym được trang bị đầy đủ các thiết bị tập luyện như máy chạy bộ, xe đạp tập, máy tập cơ bụng, 
                                máy tập chân và các tạ đơn giản. Ngoài ra, phòng Gym cũng được trang bị đầy đủ các thiết bị phụ trợ như bình nước uống, khăn tập luyện, tivi và nhạc để khách có thể tập luyện thoải mái và dễ dàng.<br>
                                Phòng Gym là một lựa chọn tuyệt vời cho du khách muốn giữ gìn sức khỏe và thể chất trong khi đi du lịch. Ngoài ra, 
                                phòng Gym cũng là một tiện ích quan trọng đối với các khách hàng đi công tác và muốn giữ thói quen tập luyện hàng ngày.<br>
                                Đây là một phần quan trọng của khách sạn, nhằm đáp ứng nhu cầu của khách hàng và mang đến trải nghiệm nghỉ dưỡng tuyệt vời cho khách hàng.
                            </p>
             </div>  
            </div>
            <div class="row">
              <div class="col-md-5">
                  <img src="images/Roomse.jpg" width="93%">
              </div>
                <div class="col-md-5">
                   <h2><a>Room Service</a></h2>
                            <p class="price">
                                <span class="free">Free</span>
                            </p>
                            <p class="intro">
                                Airport Shuttle & Parking Lot là một dịch vụ mà khách sạn cung cấp để hỗ trợ khách hàng đến và đi từ sân bay. 
                                Dịch vụ này bao gồm đưa đón khách hàng từ sân bay đến khách sạn và ngược lại, đồng thời cung cấp chỗ đỗ xe tạm 
                                thời cho khách hàng khi họ đi du lịch hoặc công tác xa.<br>
                                Khách sạn mong muốn mang đến sự thuận tiện và an toàn cho khách hàng trong quá trình di chuyển, 
                                đồng thời tạo điều kiện tốt nhất để khách hàng có một trải nghiệm tuyệt vời khi lưu trú tại khách sạn.
                            </p>
             </div>  
            </div>
            <div class="row">
                <div class="col-md-5">
                    <img src="images/k.jpg">
                </div>
            <div class="col-md-5">
                   <h2><a>SPA &amp; Beauty Centre</a></h2>
                           <p class="price">
                                <span class="currency">$</span>
                                <span class="price-room">59</span>
                                <span class="per">/ per person</span>
                            </p>
                            <p class="intro">
                               SPA & Beauty Centre cung cấp các dịch vụ chăm sóc sức khỏe và sắc đẹp như massage, xông hơi, tắm trắng, cắt tóc, tẩy da chết, và các liệu trình chăm sóc da. Ngoài ra, khu vực này còn cung cấp các dịch vụ thư giãn như yoga, tập thể dục và hồ bơi.
                               <br>
                               SPA & Beauty Centre là một phần quan trọng của các khách sạn cao cấp, nhằm đáp ứng nhu cầu chăm sóc sức khỏe và sắc đẹp của khách hàng. Khu vực này không chỉ giúp khách hàng thư giãn và nạp lại năng lượng sau một ngày dài đi lại, mà còn giúp khách hàng tìm lại sự cân bằng trong cuộc sống và cải thiện sức khỏe của mình.
                               <br>
                                Khu vực SPA & Beauty Centre trong khách sạn được trang bị đội ngũ nhân viên chuyên nghiệp và giàu kinh nghiệm, đảm bảo mang lại trải nghiệm tốt nhất cho khách hàng.
                            </p>
             </div> 
                </div>
            <div class="row">
                <div class="col-md-5">
                <img  src="images/i.jpg">
                </div>
                <div class="col-md-5">
                   <h2><a>Conference Hall for Business Events</a></h2>
                            <p class="price">
                                <span class="currency">$</span>
                                <span class="price-room">359</span>
                                <span class="per">/ per night / room</span>
                            </p>
                            <p class="intro">
                               Conference Hall là một không gian trong khách sạn được thiết kế để tổ chức các sự kiện liên quan đến kinh doanh như hội nghị, hội thảo, đàm phán, buổi giới thiệu sản phẩm, lễ kỷ niệm và các sự kiện quan trọng khác. 
                               <br>
                               Conference Hall trong khách sạn thường có sức chứa lớn, với đầy đủ các thiết bị âm thanh, ánh sáng, màn hình hiển thị và kết nối internet tốc độ cao, giúp cho các cuộc hội thảo, hội nghị và đàm phán diễn ra thuận lợi và hiệu quả. <br>
                               Tổ chức sự kiện tại Conference Hall của khách sạn giúp cho khách hàng có thể tập trung vào nội dung của sự kiện mà không phải lo lắng về bất kì điều gì. Khách sạn sé mang đến cho khách hàng những trải nghiệm tốt nhất.
                            </p>
             </div> 
            </div>
        </div>
        <%@include file="footer.jspf" %>
        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
        <%@include file="javascripts.jspf" %>
    </body>
</html>
