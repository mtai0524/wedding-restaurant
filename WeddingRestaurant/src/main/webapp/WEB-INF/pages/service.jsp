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
        <title>Service List</title>
        <link href="<c:url value="/css/style1.css"/>" rel="stylesheet">
    </head>
    <body>
        <h1>Service List</h1>
        <c:forEach items="${services}" var="service">
            <div class="card">
                <div class="card-header">${service.serviceName}</div>
                <div class="card-description">${service.description}</div>
                <div class="card-price">${service.servicePrice}</div>
            </div>
        </c:forEach>
    </body>
</html>

