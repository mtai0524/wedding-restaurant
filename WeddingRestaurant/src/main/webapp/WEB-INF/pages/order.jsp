<%-- 
    Document   : order
    Created on : Aug 27, 2023, 1:31:04 PM
    Author     : minh tai
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="<c:url value = "/css/usercss.css"/>" rel="stylesheet">
        <link href="<c:url value = "/css/bootstrap.min.css"/>" rel="stylesheet">
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>
    </head>
    <body>
        <h1>Order</h1>
        <ul>
            <c:forEach items="${branches}" var = "branch">
                <h1>Bạn đã chọn chi nhánh ${branch.branchName}</h1>
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
                            <div class="card-header">Tên sảnh: ${h.hallName}</div>
                            <div class="card-body">
                                <p class="card-text">Số bàn: ${h.capacity}</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        
        <c:url value="/order" var="action" />
        <form method="post" action="${action}" modelAttribute="hall">
            <div class="container">
                <div class="row justify-content-center">
                    <c:forEach items="${listMenu}" var="menu">
                        <div class="col-md-6">
                            <div class="card mb-3">
                                <div class="card-header">Id: ${menu.menuId}</div>
                                <div class="card-body">
                                    <p class="card-text">Tên món ăn: ${menu.menuName}</p>
                                    <p class="card-text">Giá món ăn: ${menu.menuPrice}</p>
                                    <p class="card-text">Mô tả: ${menu.description}</p>
                                </div>
                                <!-- Thêm checkbox để chọn món -->
                                <div class="card-footer text-center">
                                    <label>
                                        <input type="checkbox" name="selectedMenus" value="${menu.menuId}">
                                        Chọn món
                                    </label>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <button type="submit" class="btn btn-dark btn-block">Xác nhận</button>
        </form>

        <script>
            function showSweetAlert() {
                Swal.fire({
                    position: 'center',
                    icon: 'success',
                    title: 'Chọn món thành công',
                    timer: 2000, // Thời gian đợi trước khi chuyển hướng (3 giây)
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
                                        <a href="${orderUrl}/hall/${hall.hallId}" class="text-white" style="text-decoration: none; color: white; background-color: black; padding: 10px 10px; border-radius: 4px;text-align: center">Chọn sảnh</a>
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
