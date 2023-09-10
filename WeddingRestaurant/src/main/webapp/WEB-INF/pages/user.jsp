<%--
    Document   : user
    Created on : Aug 24, 2023, 6:59:13 PM
    Author     : minh tai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link href="<c:url value = "/css/usercss.css"/>" rel="stylesheet">
        <link href="<c:url value = "/css/bootstrap.min.css"/>" rel="stylesheet">
    </head>
    <body>
        <c:url value = "/user" var ="action"/>
        <div class="container" style="margin-top: 60px">
            <div class="section-title text-center"  style="margin-bottom: 60px">
                <h1>Đăng kí tài khoản</h1>
            </div>
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <form:form method="post" action="${action}" modelAttribute="user" enctype="multipart/form-data" class="my-form">
                        <div class="form-group">
                            <label for="username">Username:</label>
                            <input type="text" id="username" name="username" class="form-control" required="true" />

                            <label for="password">Password:</label>
                            <input type="text" id="password" name="password" class="form-control" required="true"/>

                            <label for="file">Hình ảnh:</label>
                            <input type="file" id="file" name="file" class="form-control" required="true"/>
                        </div>

                        <div class="form-group">
                            <input type="submit" value="xác nhận" class="btn btn-danger" />
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
