<%-- 
    Document   : order
    Created on : Aug 27, 2023, 1:31:04 PM
    Author     : minh tai
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value = "/css/usercss.css"/>" rel="stylesheet">
        <link href="<c:url value = "/css/bootstrap.min.css"/>" rel="stylesheet">
    </head>
    <body>
        <h1>Order</h1>

        <ul>
            <c:forEach items="${branches}" var = "branch">
                <h1>Bạn đã chọn chi nhánh ${branch.branchName}</h1>
            </c:forEach>
        </ul>
        <!--        <ul>
        <c:forEach items="${halls}" var="h" >
            <li>${h.hallId}</li>
            <li>${h.hallName}</li>
            <li>${h.capacity}</li>
        </c:forEach>
    </ul>-->

        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <c:url value="/order" var="action" />
                    <!--<form:form method="post" action="${action}" modelAttribute="branches" enctype="multipart/form-data" class="my-form">-->
                        <div class="row">
                            <c:forEach items="${halls}" var="hall" >
                                <div class="col-md-6">
                                    <div class="card mb-3">
                                        <!--<img src="${branch.img}" alt="Branch Image" width="100%" height="200px">-->
                                        <div class="card-header">Tên sảnh: ${hall.hallName}</div>
                                        <div class="card-body">
                                            <p class="card-text">Số bàn: ${hall.capacity}</p>
                                        </div>
                                        <!--                                        <div class="card-footer">
                                        <c:url value='/order/${branch.branchId}' var="orderUrl" />

                                        <a href="${orderUrl}" class="text-white" style="text-decoration: none; color: white ;background-color: green; padding: 10px 10px; border-radius: 4px;">Chọn chi nhánh</a>
                                    </div>-->
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    <!--</form:form>-->
                </div>
            </div>
        </div>

    </body>
</html>
