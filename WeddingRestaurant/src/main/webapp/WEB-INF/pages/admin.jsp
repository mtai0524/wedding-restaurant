<%-- 
    Document   : admin
    Created on : Sep 4, 2023, 10:54:27 PM
    Author     : minh tai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>
    .container {
        display: flex;
        justify-content: center; /* Canh giữa theo chiều ngang */
        align-items: center; /* Canh giữa theo chiều dọc */
    }
    .user-list {
        list-style: none;
        padding: 0;
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
    }

    .user-card {
        border: 1px solid #ccc;
        border-radius: 10px;
        padding: 20px;
        margin: 0 10px 20px 10px;
        width: 350px; /* Tăng độ rộng lên 400px */
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        background-color: #fff;
    }

    .user-info {
        text-align: center;
    }

    .user-info h3 {
        margin: 0;
    }

    .user-buttons {
        display: flex;
        justify-content: space-between;
        margin-top: 20px;
    }


    .edit-button,
    .delete-button {
        padding: 5px 10px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }

    .edit-button:hover,
    .delete-button:hover {
        background-color: #0056b3;
    }
    .wrapper {
        display: flex;
        height: 100%;
        min-height: 100%;
        flex-grow: 1;
    }

    .sidebar {
        width: 250px; /* Độ rộng của menu dọc */
        background-color: #303030; /* Màu nền của menu dọc */
        color: #303030; /* Màu văn bản của menu dọc */
        padding:20px;
        margin-bottom: -200px;
    }

    .sidebar ul {
        list-style: none;
        padding: 0;
    }

    .sidebar li {
        margin-bottom: 10px;
    }

    .sidebar a {
        text-decoration: none;
        color: #fff;
    }

    .content {
        flex: 1; /* Phần còn lại của trang */
        padding: 20px;
    }

</style>

<div class="wrapper">
    <nav class="sidebar">
        <!-- Đặt nội dung của menu dọc ở đây -->
        <ul>
            <li><a href="<c:url value="/"/>" class="nav-item nav-link">Trang chủ</a></li>

            <li><a href="<c:url value="/branch"/>" class="nav-item nav-link">Chi nhánh</a></li>
            <li><a href="<c:url value="/menu"/>" class="nav-item nav-link">Menu</a></li>
            <li><a href="<c:url value="/admin/manage-service"/>" class="nav-item nav-link">Quản lý dịch vụ</a></li>
            <li><a href="<c:url value="/admin/manage-user"/>" class="nav-item nav-link">Quản lý người dùng</a></li>
        </ul>
    </nav>
        <div id="dynamic-content">
    <main class="content">
        <!-- Đặt nội dung hiển thị ở đây -->
        <h1>Tiêu đề trang</h1>
        <p>Nội dung trang web...</p>
        <h1>${txtMngUsers}</h1>
        <div class="container">
            <ul class="user-list">
                <c:forEach items="${users}" var="u">
                    <li class="user-card">
                        <div class="user-info">
                            <img src="${u.avatar}" alt="Branch Image" width="100%" height="300px">
                            <h3>${u.username}</h3>
                            <h3>${u.userId}</h3>
                            <p>${u.role}</p>
                        </div>
                        <div class="user-buttons">
                            <a href="<c:url value='/edit/${u.userId}'/>" class="btn btn-primary">Gán Thuộc Tính</a>
                            <button class="edit-button" style="background-color: green">Chỉnh sửa</button>
                            <button class="delete-button" style="background-color: red">Xóa</button>
                        </div>
                    </li>
                </c:forEach>
            </ul>
        </div>
        
        <h1>${txtMngServices}</h1>
        <div class="container">
            <ul class="user-list">
                <c:forEach items="${services}" var="s">
                    <li class="user-card">
                        <div class="user-info">
                            <img src="${s.serviceImg}" alt="Service Image" width="100%" height="300px">
                            <h3>${s.serviceId}</h3>
                            <h3>${s.serviceName}</h3>
                            <p>${s.description}</p>
                            <p>${s.servicePrice}</p>
                        </div>
<!--                        <div class="user-buttons">
                            <a href="<c:url value='/edit/${u.userId}'/>" class="btn btn-primary">Gán Thuộc Tính</a>
                            <button class="edit-button" style="background-color: green">Chỉnh sửa</button>
                            <button class="delete-button" style="background-color: red">Xóa</button>
                        </div>-->
                    </li>
                </c:forEach>
            </ul>
        </div>
    </main>
        </div>
</div>
        <script>
          $(document).ready(function () {
            // Hàm để tải nội dung từ URL và đặt nó vào phần tử #dynamic-content
            function loadContent(url) {
              $.ajax({
                url: url,
                success: function (data) {
                  $("#dynamic-content").html(data);
                },
              });
            }

            // Khi người dùng click vào liên kết "Quản lý dịch vụ"
            $("#manage-service-link").click(function (event) {
              event.preventDefault(); // Ngăn chặn hành động mặc định của liên kết
              loadContent("/WeddingRestaurant/admin/manage-service");
            });

            // Khi người dùng click vào liên kết "Quản lý người dùng"
            $("#manage-user-link").click(function (event) {
              event.preventDefault();
              loadContent("/WeddingRestaurant/admin/manage-user");
            });
          });
        </script>


