<%-- 
    Document   : login
    Created on : Sep 9, 2023, 7:55:28 AM
    Author     : minh tai
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="<c:url value = "/css/usercss.css"/>" rel="stylesheet">
<style>
    #successMessage {
        position: fixed;
        top: 50px;
        right: 20px; 
        z-index: 9999;
    }
</style>
<c:if test="${isNotUser}">
    <div class="alert alert-danger" id="successMessage">
        Sai thông tin tài khoản hoặc mật khẩu
    </div>

    <script>
        // Lấy thẻ div chứa thông báo thành công
        var successDiv = document.getElementById("successMessage");

        // Ẩn div ban đầu
        successDiv.style.display = "none";

        // Hiển thị div trong 5 giây sau khi trang đã được tải
        setTimeout(function () {
            successDiv.style.display = "block";
        }, 100); // Thời gian hiển thị là 1000 miliseconds (1 giây)

        // Ẩn div sau 5 giây
        setTimeout(function () {
            successDiv.style.display = "none";
        }, 5000);
    </script>
</c:if>
<div class="container" style="margin-top: 60px">
    <div class="section-title text-center">
        <h1 class="display-5 mb-5" style="color: black">Đăng nhập</h1>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form method="post" action="${action}" class="my-form">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" class="form-control" required>
                </div>

                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" class="form-password form-control" required>
                </div>

                <div class="form-group">
                    <input type="submit" value="LOGIN" class="btn btn-danger">
                </div>
            </form>
        </div>
    </div>
</div>

