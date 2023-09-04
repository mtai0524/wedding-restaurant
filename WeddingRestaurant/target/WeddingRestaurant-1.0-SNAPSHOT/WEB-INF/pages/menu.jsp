<%-- 
    Document   : service
    Created on : Aug 20, 2023, 8:55:59 PM
    Author     : minh tai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Menu List</title>
    </head>
    <body>
        <!-- Service Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="section-title text-center">
                    <h1 class="display-5 mb-5">Danh sách món ăn</h1>
                </div>
                <div class="row">
                    <c:forEach items="${menus}" var="menu" varStatus="loop">
                        <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
                            <div class="service-item" style="margin: 5px">
                                <div class="overflow-hidden">
                                    <img src="${menu.image}" alt="Service Image" width="100%" height="300px">
                                </div>
                                <div class="p-4 text-center border border-5 border-light border-top-0">
                                    <h4 class="mb-3">${menu.menuName}</h4>
                                    <p>${menu.description}</p>
                                    <p>${menu.menuPrice} VND</p>
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
    </body>
</html>

