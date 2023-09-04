<%-- 
    Document   : order
    Created on : Aug 27, 2023, 1:31:04 PM
    Author     : minh tai
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>
        
        <style>
            .branch-link {
                display: inline-block;
                position: relative;
            }

            .branch-link a {
                background-color: red;
                text-decoration: none;
                color: #333; /* Màu chữ của liên kết */
            }

            .branch-link a::after {
                content: "\f08e"; /* Mã Unicode của biểu tượng font-awesome */
                font-family: 'Font Awesome 5 Free'; /* Thay thế bằng font-awesome của bạn */
                margin-left: 5px; /* Khoảng cách giữa văn bản và biểu tượng */
            }
        </style>
        
    </head>
    <body>
        
        <ul>
            <c:forEach items="${branches}" var="branch">
                <h1 class="branch-link">
                    Bạn đã chọn chi nhánh ${branch.branchName}
                    <a href="bill">Xem bill</a> <!-- Liên kết đến /bill -->
                </h1>
            </c:forEach>
        </ul>

        <div class="container">
            <div class="row justify-content-center">
                <c:forEach items="${hallById}" var="h">
                    <h1>Bạn đã chọn sảnh: ${h.hallName}</h1>
                    <div class="col-md-6">
                        <div class="card mb-3">
                            <img src="${h.imgHall}" alt="Hall Image" width="100%" height="200px">
                            <div class="card-header">Id: ${h.hallId}</div>
                            <div class="card-body">
                                <p class="card-text">Tên sảnh: ${h.hallName}</p>
                                <p class="card-text">Số bàn: ${h.capacity}</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>


        <c:url value="/order/${branchId}/hall/${hallId}/menu/service/bill" var="action" />
        <form:form method="post" action="${action}" modelAttribute="menuSelectionForm">
        <div class="container">
            <div class="row justify-content-center">
                <c:if test="${showTxtListService}">
                    <h1>Danh sách dịch vụ</h1>
                </c:if>
                <c:forEach items="${listServices}" var="service">
                    <div class="col-md-6">
                        <div class="card mb-3">
                            <!-- ... Hiển thị thông tin của menu ... -->
                            <div class="card-header">Id: ${service.serviceId}</div>
                            <div class="card-body">
                                <p class="card-text">Tên dịch vụ: ${service.serviceName}</p>
                                <p class="card-text">Giá dịch vụ: ${service.servicePrice} VND</p>
                                <p class="card-text">Mô tả: ${service.description}</p>
                            </div>
                                <button type="submit" class="btn btn-dark btn-block">XEM BILL</button>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        </form:form>
        <ul class="list-group">
            <c:forEach items="${listMenuBill}" var="menu">
                <li class="list-group-item d-flex justify-content-between align-items-center">
                    <div class="text-center">${menu.menuName}</div>
                    <div class="text-center">${menu.description}</div>
                    <div class="text-center">${menu.menuPrice}</div>
                </li>
            </c:forEach>
            <c:if test="${showBtnExportPdf}">
                <a href="<c:url value='/export/pdf'/>" class="btn btn-primary">Xuất PDF</a>
            </c:if>
        </ul>


        <c:url value="/order/${branchId}/hall/${hallId}/menu/service" var="action" />

        <form:form method="post" action="${action}" modelAttribute="menuSelectionForm">
            <div class="container">
                <div class="row justify-content-center">
                    <c:if test="${shouldShowButton}">
                        <h1>Danh sách thực đơn</h1>
                    </c:if>
                    <c:forEach items="${listMenu}" var="menu">
                        <div class="col-md-6">
                            <div class="card mb-3">
                                <!-- ... Hiển thị thông tin của menu ... -->
                                <div class="card-header">Id: ${menu.menuId}</div>
                                <div class="card-body">
                                    <p class="card-text">Tên món ăn: ${menu.menuName}</p>
                                    <p class="card-text">Giá món ăn: ${menu.menuPrice}</p>
                                    <p class="card-text">Mô tả: ${menu.description}</p>
                                </div>
                                <div class="card-footer text-center">
                                    <form:checkbox path="selectedMenuIds" value="${menu.menuId}" onclick="handleCheckboxChange(this)" />
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <c:if test="${shouldShowButton}">
                        <!--                        <c:url value='/order/${idBrand}' var="orderUrl" />
                                                <a href="${orderUrl}/hall/${sendHallId}/menu/service" class="text-white" style="text-decoration: none; color: white; background-color: black; padding: 10px 10px; border-radius: 4px;text-align: center">Chọn dịch vụ</a>-->
                        <button type="submit" class="btn btn-dark btn-block">Xác nhận các món ăn</button>
                    </c:if>

                </div>
            </div>

        </form:form>

        <script>
            function handleCheckboxChange(checkbox) {
                if (checkbox.checked) {
                    showSweetAlert();
                } else {
                    doSomethingElse();
                }
            }

            function showSweetAlert() {
                // Đoạn mã hiển thị SweetAlert khi checkbox được tích chọn
                Swal.fire({

                    position: 'center',
                    icon: 'success',
                    title: 'Chọn món thành công',
                    timer: 2000,
                    showConfirmButton: false,
                    showCloseButton: false,

                });
            }

            function doSomethingElse() {
                Swal.fire({
                    timer: 2000,
                    title: 'Thông báo!',
                    text: 'Đã hủy món',
                    icon: 'error',
                    showConfirmButton: false,
                    showCloseButton: false,
                });
            }
        </script>


        <c:url value="/search" var="action" />
        <!--    <form:form method="post" action="${action}" modelAttribute="searchForm">
                <label for="searchType">Chọn loại tìm kiếm:</label>
                <select id="searchType" name="searchType">
                    <option value="branch">Chi nhánh</option>
                    <option value="hall">Sảnh</option>
                    <option value="food">Món ăn</option>
                    <option value="service">Dịch vụ</option>
                </select>
                <input type="text" name="keyword" placeholder="Từ khóa tìm kiếm">
                <button type="submit">Tìm kiếm</button>
        </form:form>-->
        <br/>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <c:url value="/order" var="action" />
                    <form:form method="post" action="${action}" modelAttribute="hall" enctype="multipart/form-data">
                        <div class="row">
                            <c:forEach items="${halls}" var="hall" >
                                <div class="col-md-6">
                                    <div class="card mb-3">
                                        <img src="${hall.imgHall}" alt="Hall Image" width="100%" height="200px">
                                        <div class="card-header">Id: ${hall.hallId}</div>
                                        <div class="card-header">Tên sảnh: ${hall.hallName}</div>
                                        <div class="card-body">
                                            <p class="card-text">Số bàn: ${hall.capacity}</p>
                                        </div>
                                        <c:url value='/order/${sendBranchId}' var="orderUrl" />
                                        <a href="${orderUrl}/hall/${hall.hallId}/menu" class="text-white" style="text-decoration: none; color: white; background-color: black; padding: 10px 10px; border-radius: 4px;text-align: center">Chọn sảnh</a>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </body>
</html>
