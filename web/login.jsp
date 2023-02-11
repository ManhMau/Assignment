<%-- 
    Document   : login
    Created on : Feb 10, 2023, 11:28:07 PM
    Author     : PC
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="head.jspf" %>
    </head>
    <body>
        <div style="background-image: url(images/bg_2.jpg); width: 100%; height: 100%;background-size: cover;">
            <div class="row no-gutters slider-text align-items-center">
                <div class="col-md-12 ftco-animate">
                    <div class="text mb-5 pb-5">
                        <section class="vh-100">
                            <div class="row d-flex justify-content-center align-items-center h-100">
                                <div class="col-xl-4 col-md-6 col-xs-6 offset-xl-1">                                       
                                   <c:if test="${action eq 'login' or empty action}">
                                       <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title text-center">Đăng nhập</h4>
                                                <h5 class="card-title text-center">${alert}</h5>
                                                <form  method="post" action="Login?action=login&login=true">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Tên tài khoản</label>
                                                        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required="" value="${username}">
                                                        
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputPassword1">Mật khẩu</label>
                                                        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required="">
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="form-check">
                                                            <input type="checkbox" class="form-check-input" id="exampleCheck1" name="remember">
                                                            <label class="form-check-label" for="exampleCheck1">Ghi nhớ ?</label>
                                                        </div>
                                                    </div>
                                                    <button type="submit" class="btn btn-primary">Đăng nhập</button>
                                                    <a href="Login?action=register" class="btn btn-primary">Đăng ký</a>
                                                </form>
                                            </div>
                                        </div>
                                   </c:if>
                                   <c:if test="${action eq 'register'}">
                                    <div class="card">
                                            <div class="card-body">
                                                <h4 class="card-title text-center">Đăng ký</h4>
                                                <h5 class="card-title text-center">${alert}</h5>
                                                <form method="post" action="Login?action=register&register=true">
                                                    <div class="form-group">
                                                        <label for="exampleInputEmail1">Tên tài khoản</label>
                                                        <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" required="" value="${username}">
                                                        
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputPassword1">Mật khẩu</label>
                                                        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required="" value="${password}">
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="exampleInputPassword1">Nhập lại mật khẩu</label>
                                                        <input type="password" name="re_password" class="form-control" id="exampleInputPassword1" placeholder="Re_Password" required="">
                                                    </div>
                                                    <button type="submit" class="btn btn-primary">Đăng ký</button>
                                                    <a href="Login?action=login" class="btn btn-primary">Đăng nhập</a>
                                                </form>
                                            </div>
                                        </div>
                                   </c:if>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
         </div>
         <%@include file="javascripts.jspf" %>

    </body>
</html>
