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
        <c:url value="/order" var="action" />
        <form:form method="post" action="${action}" modelAttribute="branches" enctype="multipart/form-data" class="my-form">
            <c:forEach items="${branches}" var="branch">
                <div class="card">
                    <div class="card-header">${branch.branchName}</div>
                    <div class="card-description">${branch.address}</div>
                    <div class="card-price">${branch.phone}</div>
                </div>
                <a href="<c:url value='/order/${branch.branchId}'/>" class="btn btn-primary">Chọn chi nhánh</a>
            </c:forEach>
            
        </form:form>

</body>
</html>
