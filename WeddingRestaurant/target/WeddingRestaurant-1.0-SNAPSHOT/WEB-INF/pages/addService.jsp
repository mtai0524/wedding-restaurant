<%-- 
    Document   : addService
    Created on : Sep 10, 2023, 7:52:34 AM
    Author     : minh tai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="<c:url value = "/css/usercss.css"/>" rel="stylesheet">


<c:url value = "/admin/manage-service/add" var ="action"/>
<div class="container" style="margin-top: 60px">
    <div class="section-title text-center">
        <h1 class="display-5 mb-5" style="color: black">Thêm dịch vụ</h1>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form:form method="post" action="${action}" modelAttribute="service" enctype="multipart/form-data" class="my-form">
                <div class="form-group">
                    <label for="serviceName">Service name</label>
                    <form:input type="text" id="serviceName" path="serviceName" class="form-control"/>

                    <label for="description">Description</label>
                    <form:input type="text" id="description" path="description" class="form-control"/>
                    
                    <label for="servicePrice">Price</label>
                    <form:input type="text" id="servicePrice" path="servicePrice" class="form-control"/>

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