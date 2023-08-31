<%-- 
    Document   : userInfo
    Created on : Aug 28, 2023, 3:51:42 PM
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
        <c:url value="/edit/${users.userId}" var = "action"></c:url>
            <h1>Hello World!</h1>
            <h1>cmm</h1>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-6">
                    <form:form method="post" action="${action}" modelAttribute="users" enctype="multipart/form-data" class="my-form">
                        <div class="form-group">
                            <label for="username">Username:</label>
                            <form:input path="username" id="username" class="form-control" /> // path để lấy user.userName
                        </div>
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <form:input path="password" id="password" class="form-control" />
                        </div>
                        <div class="form-group">
                            <label for="role">Vai trò:</label>
                            <form:select path="role" id="role" class="form-control">
                                <form:option value="admin" label="Admin" />
                                <form:option value="user" label="User" />
                            </form:select>
                        </div>
                        <div class="form-group">
                            <label for="file">Hình ảnh:</label>
                            <form:input type="file" path="file" id="file" class="form-control-file" />
                        </div>
                        <div class="form-group">
                            <input type="submit" value="Lưu thông tin" class="btn btn-primary" />
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
</div>

</body>
</html>
