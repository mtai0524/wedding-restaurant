<%-- 
    Document   : hall
    Created on : Aug 20, 2023, 7:57:06 PM
    Author     : minh tai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Bạn đã chọn sảnh: ${hallId}</h1>
        <ul>
            <c:forEach items="${hallById}" var = "hall">
                <h1>Bạn đã chọn sảnh ${hall.hallName}</h1>
            </c:forEach>
        </ul>
    </body>
</html>
