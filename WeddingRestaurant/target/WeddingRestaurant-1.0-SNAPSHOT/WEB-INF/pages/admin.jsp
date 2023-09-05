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
    .user-table {
        width: 100%;
        border-collapse: collapse;
    }

    .user-table th,
    .user-table td {
        padding: 10px;
        text-align: left;
        border: 1px solid #ccc; /* Add border around each cell */
    }

    .user-table th {
        background-color: #f2f2f2;
        font-weight: bold;
    }

    .user-card td {
        vertical-align: top;
    }

    /* Style for Edit and Delete buttons */
    .user-table .delete-button,
    .user-table .edit-button {
        background-color: transparent;
        border: 2px solid transparent;
        border-radius: 8px; /* Rounded corners */
        cursor: pointer;
        display: flex; /* Use flexbox to center vertically */
        align-items: center; /* Center vertically */
        justify-content: center; /* Center horizontally */
        text-align: center;
        transition: background-color 0.3s, border-color 0.3s;
        font-weight: bold;
    }

    .user-table .delete-button {
        background-color: red;
        color: white;
        border-color: red;
    }

    .user-table .edit-button {
        background-color: green;
        color: white;
        border-color: green;
    }

    /* Center the text and icons */
    .user-table .delete-button i,
    .user-table .edit-button i {
        margin-right: 5px;
    }

    /* Vertical alignment for table cells */
    .user-table th,
    .user-table td {
        vertical-align: middle; /* Center content vertically */
    }

    /* Style for Edit and Delete buttons */
    .user-table .delete-button,
    .user-table .edit-button {
        background-color: transparent;
        border: 2px solid transparent;
        border-radius: 8px; /* Rounded corners */
        cursor: pointer;
        display: inline-block;
        padding: 8px 16px;
        text-align: center;
        transition: background-color 0.3s, border-color 0.3s;
        margin: 5px; /* Equal spacing */
        font-weight: bold;
    }

    .user-table .delete-button {
        background-color: red;
        color: white;
        border-color: red;
    }

    .user-table .edit-button {
        background-color: green;
        color: white;
        border-color: green;
    }

    /* Center the text and icons */
    .user-table .delete-button i,
    .user-table .edit-button i {
        vertical-align: middle;
        margin-right: 5px;
    }

</style>

<div class="wrapper">
    <nav class="sidebar">
        <!-- Đặt nội dung của menu dọc ở đây -->
        <ul>
            <li><a href="<c:url value="/"/>" class="nav-item nav-link">Trang chủ</a></li>
            <li><a href="<c:url value="/admin/manage-branch"/>" class="nav-item nav-link">Quản lý chi nhánh</a></li>
            <li><a href="<c:url value="/admin/manage-hall"/>" class="nav-item nav-link">Quản lý sảnh</a></li>
            <li><a href="<c:url value="/admin/manage-service"/>" class="nav-item nav-link">Quản lý dịch vụ</a></li>
            <li><a href="<c:url value="/admin/manage-menu"/>" class="nav-item nav-link">Quản lý thực đơn</a></li>
            <li><a href="<c:url value="/admin/manage-user"/>" class="nav-item nav-link">Quản lý người dùng</a></li>
        </ul>
    </nav>
    <main class="content">
        <c:if test="${isManageBranch}">
            <div class="section-title text-center">
                <h1 class="display-5 mb-5">${txtMngBranches}</h1>
            </div>
            <div class="container">
                <table class="user-table">
                    <thead>
                        <tr>
                            <th>Branch ID</th>
                            <th>Image</th>
                            <th>Branch name</th>
                            <th>address</th>
                            <th>phone</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${branches}" var="b">
                            <tr class="user-card">
                                <td>${b.branchId}</td>
                                <td>
                                    <img src="${b.img}" alt="Branch Image" width="100%" height="100px">
                                </td>
                                <td>${b.branchName}</td>
                                <td>${b.address}</td>
                                <td>${b.phone}</td>
                                <td>
                                    <!-- Edit Button with Edit Icon -->
                                    <a href="<c:url value='/edit/${b.branchId}'/>" class="edit-button">
                                        <i class="fas fa-edit"></i> Edit
                                    </a>
                                    <!-- Delete Button with Delete Icon -->
                                    <a href="<c:url value='/delete/${b.branchId}'/>" class="delete-button">
                                        <i class="fas fa-trash"></i> Delete
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>
        
            <c:if test="${isManageHall}">
                <div class="section-title text-center">
                    <h1 class="display-5 mb-5">${txtMngHalls}</h1>
                </div>
                <div class="container">
                    <table class="user-table">
                        <thead>
                            <tr>
                                <th>Hall ID</th>
                                <th>Image</th>
                                <th>Hall Name</th>
                                <th>Capacity</th>
                                <th>Branch Name</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${halls}" var="h">
                                <tr class="user-card">
                                    <td>${h.hallId}</td>
                                    <td>
                                        <img src="${h.imgHall}" alt="Service Image" width="100%" height="100px">
                                    </td>
                                    <td>${h.hallName}</td>
                                    <td>${h.capacity}</td>
                                    <td>${h.branchId.branchName}</td>
                                    <td>
                                        <!-- Edit Button with Edit Icon -->
                                        <a href="<c:url value='/edit/${h.hallId}'/>" class="edit-button">
                                            <i class="fas fa-edit"></i> Edit
                                        </a>
                                        <!-- Delete Button with Delete Icon -->
                                        <a href="<c:url value='/delete/${h.hallId}'/>" class="delete-button">
                                            <i class="fas fa-trash"></i> Delete
                                        </a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </c:if>
            
            
        <c:if test="${isManageUser}">
            <div class="section-title text-center">
                <h1 class="display-5 mb-5">${txtMngUsers}</h1>
            </div>
            <div class="container">
                <table class="user-table">
                    <thead>
                        <tr>
                            <th>User ID</th>
                            <th>Avatar</th>
                            <th>Username</th>
                            <th>Role</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${users}" var="u">
                            <tr class="user-card">
                                <td>${u.userId}</td>
                                <td>
                                    <img src="${u.avatar}" alt="Service Image" width="100%" height="100px">
                                </td>
                                <td>${u.username}</td>
                                <td>${u.role}</td>
                                <td>
                                    <!-- Edit Button with Edit Icon -->
                                    <a href="<c:url value='/edit/${u.userId}'/>" class="edit-button">
                                        <i class="fas fa-edit"></i> Edit
                                    </a>
                                    <!-- Delete Button with Delete Icon -->
                                    <a href="<c:url value='/delete/${u.userId}'/>" class="delete-button">
                                        <i class="fas fa-trash"></i> Delete
                                    </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>
        
        <c:if test="${isManageService}">
            <div class="section-title text-center">
                <h1 class="display-5 mb-5">${txtMngServices}</h1>
            </div>
        <div class="container">
            <table class="user-table">
                <thead>
                    <tr>
                        <th>Service ID</th>
                        <th>Service Image</th>
                        <th>Service Name</th>
                        <th>Description</th>
                        <th>Service Price</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${services}" var="s">
                        <tr class="user-card">
                            <td>${s.serviceId}</td>
                            <td>
                                <img src="${s.serviceImg}" alt="Service Image" width="100%" height="80px">
                            </td>
                            <td>${s.serviceName}</td>
                            <td>${s.description}</td>
                            <td>${s.servicePrice}</td>
                            <td>
                                <!-- Edit Button with Edit Icon -->
                                <a href="<c:url value='/edit/${s.serviceId}'/>" class="edit-button">
                                    <i class="fas fa-edit"></i> Edit
                                </a>
                                <!-- Delete Button with Delete Icon -->
                                <button class="delete-button" style="background-color: red">
                                    <i class="fas fa-trash"></i> Delete
                                </button>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        </c:if>
        
        <c:if test="${isManageMenu}">
            <div class="section-title text-center">
                <h1 class="display-5 mb-5">${txtMngMenu}</h1>
            </div>
            <div class="container">
                <table class="user-table">
                    <thead>
                        <tr>
                            <th>Menu ID</th>
                            <th>Menu Image</th>
                            <th>Menu Name</th>
                            <th>Description</th>
                            <th>Menu Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${menus}" var="m">
                            <tr class="user-card">
                                <td>${m.menuId}</td>
                                <td>
                                    <img src="${m.image}" alt="Service Image" width="100%" height="80px">
                                </td>
                                <td>${m.menuName}</td>
                                <td>${m.description}</td>
                                <td>${m.menuPrice}</td>
                                <td>
                                    <!-- Edit Button with Edit Icon -->
                                    <a href="<c:url value='/edit/${m.menuId}'/>" class="edit-button">
                                        <i class="fas fa-edit"></i> Edit
                                    </a>
                                    <!-- Delete Button with Delete Icon -->
                                    <button class="delete-button" style="background-color: red">
                                        <i class="fas fa-trash"></i> Delete
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>
    </main>
        </div>


