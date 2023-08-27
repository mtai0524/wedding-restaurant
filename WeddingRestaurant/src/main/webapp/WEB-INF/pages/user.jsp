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
        <h1>Hello World!</h1>
        <c:url value = "/user" var ="action"/>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <form:form method="post" action="${action}" modelAttribute="user" enctype="multipart/form-data" class="my-form">
                        <div class="form-group">
                            <label for="username">Username:</label>
                            <input type="text" id="username" name="username" class="form-control" />

                            <label for="password">Password:</label>
                            <input type="text" id="password" name="password" class="form-control" />

                            <label for="role">Vai trò:</label>
                            <select id="role" name="role" class="form-control">
                                <option value="admin">Admin</option>
                                <option value="user">User</option>
                                <!-- Thêm các vai trò khác vào đây nếu cần -->
                            </select>

                            <label for="file">Hình ảnh:</label>
                            <input type="file" id="file" name="file" class="form-control" />
                        </div>

                        <div class="form-group">
                            <input type="submit" value="xác nhận" class="btn btn-danger" />
                        </div>
                    </form:form>
                </div>
            </div>
        </div>

        
        <ul class="user-cards">
            <c:forEach items="${users}" var="i">
                <li class="user-card">
                    <div class="user-avatar">
                        <img src="${i.avatar}" alt="User Avatar">
                    </div>
                    <div class="user-info">
                        <p>User ID: ${i.userId}</p>
                        <p>Username: ${i.username}</p>
                        <p>Password: ${i.password}</p>
                        <p>Role: ${i.role}</p>
                    </div>
                </li>
            </c:forEach>
        </ul>


        
    </body>
</html>
