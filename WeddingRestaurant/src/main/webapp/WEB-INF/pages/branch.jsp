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
        <h1>Branches list</h1>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <c:url value="/order" var="action" />
                    <form:form method="post" action="${action}" modelAttribute="branches" enctype="multipart/form-data" class="my-form">
                        <div class="row">
                            <c:forEach items="${branches}" var="branch" >
                                <div class="col-md-6">
                                    <div class="card mb-3">
                                        <img src="${branch.img}" alt="Branch Image" width="100%" height="200px">
                                        <div class="card-header">Tên chi nhánh: ${branch.branchName}</div>
                                        <div class="card-body">
                                            <p class="card-text">Địa chỉ: ${branch.address}</p>
                                            <p class="card-text">Số điện thoại: ${branch.phone}</p>
                                        </div>
                                        <div class="card-footer">
                                            <c:url value='/order/${branch.branchId}' var="orderUrl" />
                                           
                                            <a href="${orderUrl}" class="text-white" style="text-decoration: none; color: white ;background-color: green; padding: 10px 10px; border-radius: 4px;">Chọn chi nhánh</a>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>

    </body>
</html>
