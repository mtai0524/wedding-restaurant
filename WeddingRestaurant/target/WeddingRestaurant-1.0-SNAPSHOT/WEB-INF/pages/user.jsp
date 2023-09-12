<%--
    Document   : user
    Created on : Aug 24, 2023, 6:59:13 PM
    Author     : minh tai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="<c:url value = "/css/usercss.css"/>" rel="stylesheet">
<link href="<c:url value = "/css/bootstrap.min.css"/>" rel="stylesheet">

<style>
    #successMessage {
        position: fixed;
        top: 50px;
        right: 20px;
        z-index: 9999;
    }
</style>
<c:url value = "/user" var ="action"/>
<c:if test="${isNotConfirmPassword}">
    <div class="alert alert-danger" id="successMessage">
        Mật khẩu nhập lại không khớp
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

    <div class="section-title text-center"  style="margin-bottom: 60px">
        <h1>Đăng kí tài khoản</h1>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form:form method="post" action="${action}" modelAttribute="user" enctype="multipart/form-data" class="my-form">
                <div class="form-group">
                    <label for="username">Username:</label>
                    <form:input type="text" id="username" path="username" class="form-control"/>
                    <form:errors path = "username" cssClass = "alert alert-danger" element ="div" ></form:errors>

                        <label for="password">Password:</label>
                    <form:input type="text" id="password" path="password" class="form-control"/>
                    <form:errors path = "password" cssClass = "alert alert-danger" element ="div" ></form:errors>

                        <label for="password">Confirm password:</label>
                    <form:input type="text" id="password" path="confirmPassword" class="form-control"/>

                    <label for="file">Hình ảnh:</label>
                    <form:input type="file" id="file" path="file" class="form-control"/>
                </div>

                <div class="form-group">
                    <input type="submit" value="xác nhận" class="btn btn-danger" />
                </div>
            </form:form>
        </div>
    </div>
</div>
