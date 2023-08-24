<%-- 
    Document   : branche
    Created on : Aug 20, 2023, 10:01:03 PM
    Author     : minh tai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Branches list</title>
        <link href="<c:url value="/css/style1.css"/>" rel="stylesheet">
    </head>
    <body>
        <h1>Branches list</h1>
        <c:forEach items="${branches}" var="branch">
        <div class="card">
            <div class="card-header">${branch.branchName}</div>
            <div class="card-description">${branch.address}</div>
            <div class="card-price">${branch.phone}</div>
        </div>
        </c:forEach>
</body>
</html>
