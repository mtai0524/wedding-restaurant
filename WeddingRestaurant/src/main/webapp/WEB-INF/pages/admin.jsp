<%-- 
    Document   : admin
    Created on : Sep 4, 2023, 10:54:27 PM
    Author     : minh tai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link href="<c:url value = "/css/layout_admin.css"/>" rel="stylesheet">


<div class="wrapper">
    <nav class="sidebar">
        <ul>
            <li><a href="<c:url value="/"/>" class="nav-item nav-link">Trang chủ</a></li>
            <li><a href="<c:url value="/admin/manage-branch"/>" class="nav-item nav-link">Quản lý chi nhánh</a></li>
            <li><a href="<c:url value="/admin/manage-hall"/>" class="nav-item nav-link">Quản lý sảnh</a></li>
            <li><a href="<c:url value="/admin/manage-service"/>" class="nav-item nav-link">Quản lý dịch vụ</a></li>
            <li><a href="<c:url value="/admin/manage-menu"/>" class="nav-item nav-link">Quản lý thực đơn</a></li>
            <c:if test="${isAdminSystem}">
                <li><a href="<c:url value="/admin/manage-user"/>" class="nav-item nav-link">Quản lý người dùng</a></li>
            </c:if>
        </ul>
    </nav>
    <main class="content">
        <c:if test="${isManageBranch}">
            <div class="section-title text-center">
                <h1 class="display-5 mb-5">${txtMngBranches}</h1>
            </div>
                <a href="<c:url value='/admin/manage-branch/add'/>">
                    <i class="fas fa-plus"></i> ADD BRANCH
                </a>
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
                                    <a href="<c:url value='/edit/branch/${b.branchId}'/>" class="edit-button">
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
                    <a href="<c:url value='/admin/manage-hall/add'/>">
                        <i class="fas fa-plus"></i> ADD HALL
                    </a>
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
                                        <a href="<c:url value='/edit/hall/${h.hallId}'/>" class="edit-button">
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
                                    <a href="<c:url value='admin/manage-user/delete/${u.userId}'/>" class="delete-button">
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
                <a href="<c:url value='/admin/manage-service/add'/>">
                    <i class="fas fa-plus"></i> ADD SERVICE
                </a>
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
                                <a href="<c:url value='/edit/service/${s.serviceId}'/>" class="edit-button">
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
                <a href="<c:url value='/admin/manage-menu/add'/>">
                    <i class="fas fa-plus"></i> ADD MENU
                </a>
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
                                    <img src="${m.image}" alt="Menu Image" width="100%" height="80px">
                                </td>
                                <td>${m.menuName}</td>
                                <td>${m.description}</td>
                                <td>${m.menuPrice}</td>
                                <td>
                                    <!-- Edit Button with Edit Icon -->
                                    <a href="<c:url value='/edit/menu/${m.menuId}'/>" class="edit-button">
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



