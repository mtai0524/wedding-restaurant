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
        
        
        <form method="post"">
            <select>
                <c:forEach items="${branch}" var="branch" >
                    <option value="${branch.branchName}">${branch.branchName}</option>
                </c:forEach>
            </select>
        </form>
        
        <ul>
            <c:forEach items="${branch}" var = "i">
                <li>${i.branchName}</li>
                <li>${i.address}</li>
                <li>${i.phone}</li>
            </c:forEach>
        </ul>
        
        <h1>BRANCH NAME</h1>
        
        <h1>${branchId}</h1>
        
        <ul>
            <c:forEach items="${halls}" var="h" >
                <li>${h.hallId}</li>
                <li>${h.hallName}</li>
                <li>${h.capacity}</li>
            </c:forEach>
        </ul>
    </body>
</html>
