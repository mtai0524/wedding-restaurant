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
    <c:url value="/edit/service/${services.serviceId}" var = "action"></c:url>
    <div class="container" style="margin-top: 50px">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <form:form method="post" action="${action}" modelAttribute="services" enctype="multipart/form-data" class="my-form">
                    <div class="form-group">
                        <label for="serviceName">Service name:</label>
                        <form:input path="serviceName" id="serviceName" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="description">Description:</label>
                        <form:input path="description" id="description" class="form-control" />
                    </div>
                    <div class="form-group">
                        <label for="servicePrice">Price:</label>
                        <form:input path="servicePrice" id="servicePrice" class="form-control" />
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
