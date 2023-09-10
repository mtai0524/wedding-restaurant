<%-- 
    Document   : menuInfo
    Created on : Sep 7, 2023, 2:39:38 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <link href="<c:url value = "/css/usercss.css"/>" rel="stylesheet">
        <link href="<c:url value = "/css/bootstrap.min.css"/>" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <c:url value="/edit/hall/${hall.hallId}" var = "action"></c:url>
    <div class="container" style="margin-top: 50px">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form:form method="post" action="${action}" modelAttribute="hall" enctype="multipart/form-data" class="my-form">
                    <div class="form-group">
                        <label for="hallName">Hall name:</label>
                        <form:input path="hallName" id="hallName" class="form-control" />
                    </div>
                        <div class="form-group">
                            <label for="capacity">Capacity:</label>
                            <form:input path="capacity" id="capacity" class="form-control" />
                        </div>

                            <label for="branch">Chọn chi nhánh</label>
                            <form:select class = "form-select" id = "branch" name = "branch" path = "branchId">
                                <c:forEach items="${listBranchForHall}" var = "b">
                                    <option value="${b.branchId}">${b.branchName}</option>
                                </c:forEach>
                            </form:select>
                    <div class="form-group">
                        <label for="priceMorning">Price Morning:</label>
                        <form:input path="priceMorning" id="priceMorning" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="priceAfternoon">Price Afternoon:</label>
                        <form:input path="priceAfternoon" id="priceAfternoon" class="form-control" />
                    </div>
                        <div class="form-group">
                            <label for="priceEvening">Price Evening:</label>
                            <form:input path="priceEvening" id="priceEvening" class="form-control" />
                        </div>
                            <div class="form-group">
                                <label for="priceWeekend">Price Weekend:</label>
                                <form:input path="priceWeekend" id="priceWeekend" class="form-control" />
                            </div>
                    <label for="file">Hình ảnh:</label>
                    <form:input type="file" path="file" id="file" class="form-control-file" />
                    <div class="form-group">
                        <input type="submit" value="Lưu thông tin" class="btn btn-primary" />
                    </div>
            </div>
            </form:form>
        </div>
    </div>
</div>
</div>
</body>
</html>
