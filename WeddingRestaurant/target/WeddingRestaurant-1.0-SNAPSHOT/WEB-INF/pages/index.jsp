<%-- 
    Document   : index
    Created on : Aug 17, 2023, 8:36:15 PM
    Author     : minh tai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Spinner Start -->
<div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
    <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
        <span class="sr-only">Loading...</span>
    </div>
</div>
<!-- Spinner End -->






<!-- Carousel Start -->
<div class="container-fluid p-0 pb-5">
    <div class="owl-carousel header-carousel position-relative">
        <div class="owl-carousel-item position-relative">
            <img class="img-fluid" src="<c:url value="/img/carousel-1.jpg"></c:url>" alt="">
                <div class="position-absolute top-0 start-0 w-100 h-100 d-flex align-items-center" style="background: rgba(53, 53, 53, .7);">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-12 col-lg-8 text-center">
                                <h5 class="text-white text-uppercase mb-3 animated slideInDown">Welcome To WooDY</h5>
                                <h1 class="display-3 text-white animated slideInDown mb-4">Best Carpenter & Craftsman Services</h1>
                                <p class="fs-5 fw-medium text-white mb-4 pb-2">Vero elitr justo clita lorem. Ipsum dolor at sed stet sit diam no. Kasd rebum ipsum et diam justo clita et kasd rebum sea elitr.</p>
                                <a href="" class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Read More</a>
                                <a href="" class="btn btn-light py-md-3 px-md-5 animated slideInRight">Free Quote</a>
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
                    <div class="row g-4">
                        <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="service-item">
                                <div class="overflow-hidden">
                                    <img class="img-fluid" src="<c:url value="/img/service-1.jpg"></c:url>"alt="">
                                </div>
                                <div class="p-4 text-center border border-5 border-light border-top-0">
                                    <h4 class="mb-3">General Carpentry</h4>
                                    <p>Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam.</p>
                                    <a class="fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
                            <div class="service-item">
                                <div class="overflow-hidden">
                                    <img class="img-fluid" src="<c:url value="/img/service-2.jpg"></c:url>"alt="">
                                </div>
                                <div class="p-4 text-center border border-5 border-light border-top-0">
                                    <h4 class="mb-3">Furniture Manufacturing</h4>
                                    <p>Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam.</p>
                                    <a class="fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
                            <div class="service-item">
                                <div class="overflow-hidden">
                                    <img class="img-fluid" src="<c:url value="/img/service-3.jpg"></c:url>"alt="">
                                </div>
                                <div class="p-4 text-center border border-5 border-light border-top-0">
                                    <h4 class="mb-3">Furniture Remodeling</h4>
                                    <p>Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam.</p>
                                    <a class="fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="service-item">
                                <div class="overflow-hidden">
                                    <img class="img-fluid" src="<c:url value="/img/service-4.jpg"></c:url>"alt="">
                                </div>
                                <div class="p-4 text-center border border-5 border-light border-top-0">
                                    <h4 class="mb-3">Wooden Floor</h4>
                                    <p>Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam.</p>
                                    <a class="fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.3s">
                            <div class="service-item">
                                <div class="overflow-hidden">
                                    <img class="img-fluid" src="<c:url value="/img/service-5.jpg"></c:url>"alt="">
                                </div>
                                <div class="p-4 text-center border border-5 border-light border-top-0">
                                    <h4 class="mb-3">Wooden Furniture</h4>
                                    <p>Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam.</p>
                                    <a class="fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.5s">
                            <div class="service-item">
                                <div class="overflow-hidden">
                                    <img class="img-fluid" src="<c:url value="/img/service-6.jpg"></c:url>"alt="">
                            </div>
                            <div class="p-4 text-center border border-5 border-light border-top-0">
                                <h4 class="mb-3">Custom Work</h4>
                                <p>Stet stet justo dolor sed duo. Ut clita sea sit ipsum diam lorem diam.</p>
                                <a class="fw-medium" href="">Read More<i class="fa fa-arrow-right ms-2"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service End -->




