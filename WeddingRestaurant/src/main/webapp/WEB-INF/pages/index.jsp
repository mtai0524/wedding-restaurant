<%-- 
    Document   : index
    Created on : Aug 17, 2023, 8:36:15 PM
    Author     : minh tai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>
    #successMessage {
        position: fixed; /* Hoặc 'absolute' tùy vào mục đích */
        top: 50px; /* Điều chỉnh vị trí theo chiều dọc */
        right: 20px; /* Điều chỉnh vị trí theo chiều ngang */
        z-index: 9999; /* Đảm bảo div hiển thị phía trên mọi thành phần khác */
    }
</style>



<c:if test="${not empty successMessage}">
    <div class="alert alert-success" id="successMessage">
        ${successMessage}
    </div>

    <script>
        // Lấy thẻ div chứa thông báo thành công
        var successDiv = document.getElementById("successMessage");

        // Ẩn div ban đầu
        successDiv.style.display = "none";

        // Hiển thị div trong 5 giây sau khi trang đã được tải
        setTimeout(function() {
            successDiv.style.display = "block";
        }, 100); // Thời gian hiển thị là 1000 miliseconds (1 giây)

        // Ẩn div sau 5 giây
        setTimeout(function() {
            successDiv.style.display = "none";
        }, 5000);
    </script>
</c:if>


<!-- Carousel Start -->
<div class="container-fluid p-0 pb-5">
    <div class="owl-carousel header-carousel position-relative">
        <div class="owl-carousel-item position-relative">
            <img class="img-fluid" src="<c:url value="/img/mainImage.png"></c:url>" alt="" width="100%">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(53, 53, 53, .7);">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-12 col-lg-8 text-center">
                                <h5 class="text-white text-uppercase mb-3 animated slideInDown">Chào mừng đến với The Ireliaking Banquet</h5>
                                <h1 class="display-3 text-white animated slideInDown mb-4">Nơi câu chuyện bắt đầu</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Carousel End -->

            <!-- Feature Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="row g-5">
                        <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.1s">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                                <div class="d-flex align-items-center justify-content-center bg-light" style="width: 60px; height: 60px;">
                                    <i class="fa fa-user-check fa-2x text-primary"></i>
                                </div>
                                <h1 class="display-1 text-light mb-0">01</h1>
                            </div>
                            <h5>Creative Designers</h5>
                        </div>
                        <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.3s">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                                <div class="d-flex align-items-center justify-content-center bg-light" style="width: 60px; height: 60px;">
                                    <i class="fa fa-check fa-2x text-primary"></i>
                                </div>
                                <h1 class="display-1 text-light mb-0">02</h1>
                            </div>
                            <h5>Quality Products</h5>
                        </div>
                        <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.5s">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                                <div class="d-flex align-items-center justify-content-center bg-light" style="width: 60px; height: 60px;">
                                    <i class="fa fa-drafting-compass fa-2x text-primary"></i>
                                </div>
                                <h1 class="display-1 text-light mb-0">03</h1>
                            </div>
                            <h5>Free Consultation</h5>
                        </div>
                        <div class="col-md-6 col-lg-3 wow fadeIn" data-wow-delay="0.7s">
                            <div class="d-flex align-items-center justify-content-between mb-2">
                                <div class="d-flex align-items-center justify-content-center bg-light" style="width: 60px; height: 60px;">
                                    <i class="fa fa-headphones fa-2x text-primary"></i>
                                </div>
                                <h1 class="display-1 text-light mb-0">04</h1>
                            </div>
                            <h5>Customer Support</h5>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Feature Start -->

            <!-- Service Start -->
            <div class="container-xxl py-5">
                <div class="container">
                    <div class="section-title text-center">
                        <h1 class="display-5 mb-5">Our Services</h1>
                    </div>
                    <div class="row">
                    <c:forEach items="${services}" var="service" varStatus="loop">
                        <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="service-item" style="margin: 5px">
                                <div class="overflow-hidden">
                                    <img src="${service.serviceImg}" alt="Service Image" width="100%" height="300px">
                                </div>
                                <div class="p-4 text-center border border-5 border-light border-top-0">
                                    <h4 class="mb-3">${service.serviceName}</h4>
                                    <p>${service.description}</p>
                                    <p>${service.servicePrice} VND</p>
                                    <a class="fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                                </div>
                            </div>
                        </div>
                        <!-- Close the row after every third item -->
                        <c:if test="${loop.index % 3 == 2 or loop.last}">
                        </div>
                        <div class="row">
                        </c:if>
                    </c:forEach>
                </div>
            </div>
            </div>

        <!-- Service End -->

    </div>
</div>


