<%-- 
    Document   : login
    Created on : Sep 8, 2023, 8:45:22 PM
    Author     : minh tai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:if test="${param.error != null}">
    <div>
        <h1>Co loi</h1>
    </div>
</c:if>
<h1>LOGIN</h1>
<c:url value = "/login" var = "action"></c:url>
<form method="post" action="${action}">
    <div class="form-floating mb-3 mt-3">
        <input type="text" class="form-control" id="name" placeholder="Tên đăng nhập" name="username">
        <label for="name">Username</label>
    </div>

    <div class="form-floating mt-3 mb-3">
        <input type="password" class="form-control" id="pwd" placeholder="Mật khẩu" name="password">
        <label for="pwd">Password</label>
    </div>

    <div class="form-floating mt-3 mb-3">
        <input type="submit" value="Đăng nhập" class="btn btn-danger" />
    </div>
</form>
