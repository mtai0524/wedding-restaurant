<%-- 
    Document   : base
    Created on : Sep 3, 2023, 12:16:57 PM
    Author     : minh tai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>
            <tiles:insertAttribute name="title" />
        </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link href="<c:url value = "/css/style.css"/>" rel="stylesheet">
        <link href="<c:url value = "/css/styleAdmin.css"/>" rel="stylesheet">
        <link href="<c:url value = "/css/styleAdmin.min.css"/>" rel="stylesheet">
        <link href="<c:url value = "/css/bootstrap.min.css"/>" rel="stylesheet">
        <link href="<c:url value = "/scss/component/_card.scss"/>" rel="stylesheet">
        <link href="<c:url value = "/scss/component/_reboot.scss"/>" rel="stylesheet">
        <link href="<c:url value = "/scss/layouts/_header.scss"/>" rel="stylesheet">
        <link href="<c:url value = "/scss/layouts/_layouts.scss"/>" rel="stylesheet">
        <link href="<c:url value = "/scss/layouts/_sidebar.scss"/>" rel="stylesheet">
        <link href="<c:url value = "/scss/pages/_dashboard1.scss"/>" rel="stylesheet">
        <link href="<c:url value = "/scss/utilities/_background.scss"/>" rel="stylesheet">
        <link href="<c:url value = "/scss/utilities/_icon-size.scss"/>" rel="stylesheet">
        <link href="<c:url value = "/scss/variables/_theme-variables.scss"/>" rel="stylesheet">
        <link href="<c:url value = "/scss/variables/_variables.scss"/>" rel="stylesheet">
        <link href="<c:url value = "/scss/style.scss"/>" rel="stylesheet">
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

        <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>
</head>
<body>
    <tiles:insertAttribute name="header" />
    <tiles:insertAttribute name="content" />
    <tiles:insertAttribute name="footer" />

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
    <script src="<c:url value="/js/main.js" />"></script>
    <script src="<c:url value="/lib/easing/easing.min.js" />"></script>
    <script src="<c:url value="/lib/isotope/isotope.pkgd.min.js" />"></script>
</body>
</html>

