<%-- 
    Document   : branche
    Created on : Aug 20, 2023, 10:01:03 PM
    Author     : minh tai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Branches list</title>
        <link href="<c:url value="/css/style1.css"/>" rel="stylesheet">
    </head>
    <body>
        <div class="container-xxl py-5">
            <div class="container">
                <div class="section-title text-center">
                    <h1 class="display-5 mb-5">Danh sách chi nhánh</h1>
                </div>
                <c:url value="/order" var="action" />
                <form:form method="post" action="${action}" modelAttribute="branches" enctype="multipart/form-data" class="my-form">
                    <div class="row">
                        <c:forEach items="${branches}" var="branch" varStatus="loop">
                            <div class="col-md-6 col-lg-4 wow fadeInUp" data-wow-delay="0.1s">
                                <div class="service-item">
                                    <div class="overflow-hidden">
                                        <img src="${branch.img}" alt="Branch Image" width="100%" height="300px">
                                    </div>
                                    <div class="p-4 text-center border border-5 border-light border-top-0">
                                        <h4 class="mb-3">${branch.branchName}</h4>
                                        <p>${branch.address}</p>
                                        <p>${branch.phone}</p>
                                        <c:url value='/order/${branch.branchId}' var="orderUrl" />
                                        <a href="${orderUrl}" class="fw-medium" href="">Chọn chi nhánh<i class="fa fa-arrow-right ms-2"></i></a>
                                    </div>
                                </div>
                            </div>
                            <!-- Close the row after every third item -->
                            <c:if test="${loop.index % 3 == 2 or loop.last}">
                            </div>
                            <div class="row">
                            </c:if>
                        </c:forEach>
                    </form:form>
                </div>
            </div>
        </div>

    </body>
</html>
