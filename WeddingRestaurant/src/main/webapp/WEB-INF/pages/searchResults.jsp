<%-- 
    Document   : searchResults
    Created on : Aug 31, 2023, 7:33:35 PM
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
        <h1>Hello World!</h1>
    <c:forEach items="${results}" var="result">
        <div class="result">
            <h1>${result.branchName}</h1>
        </div>
    </c:forEach>
    </body>
</html>
