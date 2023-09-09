<%-- 
    Document   : header
    Created on : Sep 3, 2023, 12:17:06 PM
    Author     : minh tai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar navbar-expand-lg bg-white navbar-light sticky-top p-0" style="box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);">
    <a href="#" class="navbar-brand d-flex align-items-center px-4 px-lg-5">
        <h2 class="m-0 text-primary">THE IRELIAKING BANQUET</h2>
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
            <a href="<c:url value="/admin"/>" class="nav-item nav-link">Admin</a>
            <a href="<c:url value="/login"/>" class="nav-item nav-link">Login</a>
            <a href="<c:url value="/"/>" class="nav-item nav-link">Hi ${usernameCurrent}</a>
        </div>
        <div class="container" style = "width: 300px">
            <form class="d-flex justify-content-end">
                <div class="input-group">
                    <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                    <div class="input-group-append">
                        <button class="btn btn-outline-primary" type="submit">Search</button>
                    </div>
                </div>
            </form>
        </div>


    </div>
</nav>

