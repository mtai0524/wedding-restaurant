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
        <h1>Menu List</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Price</th>
            </tr>
            <c:forEach items="${menus}" var="menu">
                <tr>
                    <td>${menu.menuId}</td>
                    <td>${menu.menuName}</td>
                    <td>${menu.description}</td>
                    <td>${menu.menuPrice}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>

