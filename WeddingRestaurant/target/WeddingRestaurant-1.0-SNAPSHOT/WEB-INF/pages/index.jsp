<%-- 
    Document   : index
    Created on : Aug 17, 2023, 8:36:15 PM
    Author     : minh tai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="<c:url value = "/css/style.css"/>" rel="stylesheet">
        <link href="<c:url value = "/css/bootstrap.min.css"/>" rel="stylesheet">
        <link href="<c:url value = "/lib/animate/animate.css"/>" rel="stylesheet">
        <link href="<c:url value = "/lib/animate/animate.min.css"/>" rel="stylesheet">
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500&family=Roboto:wght@500;700;900&display=swap" rel="stylesheet"> 
        <link rel="stylesheet" href="/path/to/sweetalert2.min.css">
        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="/css/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="/css/style.css" rel="stylesheet">
    </head>
    <body>
        
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        
        
        <!-- Navbar Start -->
        <nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0">
            <a href="#" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
                <h2 class="m-0 text-primary">NHA HANG TIEC CUOI NE DMM</h2>
            </a>
            <button type="button" class="navbar-toggler me-4" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto p-4 p-lg-0">
                    <a href="<c:url value="/"/>" class="nav-item nav-link">Home</a>
                    <a href="<c:url value="/branch"/>" class="nav-item nav-link">Branch</a>
                    <a href="<c:url value="/service"/>" class="nav-item nav-link">Service</a>
                    <a href="<c:url value="/menu"/>" class="nav-item nav-link">Menu</a>
                    <a href="<c:url value="/user"/>" class="nav-item nav-link">User</a>

                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Pages</a>
                        <div class="dropdown-menu fade-up m-0">
                            <a href="feature.html" class="dropdown-item">Feature</a>
                            <a href="quote.html" class="dropdown-item">Free Quote</a>
                            <a href="team.html" class="dropdown-item">Our Team</a>
                            <a href="testimonial.html" class="dropdown-item">Testimonial</a>
                            <a href="404.html" class="dropdown-item">404 Page</a>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-primary" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
                    
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
        
        <!-- Footer Start -->
            <div class="container-fluid bg-dark text-light footer mt-5 pt-5 wow fadeIn fixed-footer" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h4 class="text-light mb-4">Address</h4>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@example.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4 class="text-light mb-4">Services</h4>
                        <a class="btn btn-link" href="">General Carpentry</a>
                        <a class="btn btn-link" href="">Furniture Remodeling</a>
                        <a class="btn btn-link" href="">Wooden Floor</a>
                        <a class="btn btn-link" href="">Wooden Furniture</a>
                        <a class="btn btn-link" href="">Custom Carpentry</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4 class="text-light mb-4">Quick Links</h4>
                        <a class="btn btn-link" href="">About Us</a>
                        <a class="btn btn-link" href="">Contact Us</a>
                        <a class="btn btn-link" href="">Our Services</a>
                        <a class="btn btn-link" href="">Terms & Condition</a>
                        <a class="btn btn-link" href="">Support</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h4 class="text-light mb-4">Newsletter</h4>
                        <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                        <div class="position-relative mx-auto" style="max-width: 400px;">
                            <input class="form-control border-0 w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                            <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>

        
        
        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="lib/wow/wow.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/waypoints/waypoints.min.js"></script>
        <script src="lib/counterup/counterup.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>
        <script src="lib/isotope/isotope.pkgd.min.js"></script>
        <script src="lib/lightbox/js/lightbox.min.js"></script>

        <!-- Template Javascript -->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
        <script src="js/main.js"></script>
        <script src="<c:url value="/js/main.js" />"></script>
        <script src="<c:url value="/lib/easing/easing.min.js" />"></script>
        <script src="<c:url value="/lib/isotope/isotope.pkgd.min.js" />"></script>
    </body>
</html>
