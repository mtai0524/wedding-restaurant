<%-- 
    Document   : addMenu
    Created on : Sep 10, 2023, 8:18:04 AM
    Author     : minh tai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="<c:url value = "/css/usercss.css"/>" rel="stylesheet">


<c:url value = "/admin/manage-menu/add" var ="action"/>
<div class="container" style="margin-top: 60px">
    <div class="section-title text-center">
        <h1 class="display-5 mb-5" style="color: black">Thêm món ăn</h1>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form:form method="post" action="${action}" modelAttribute="menu" enctype="multipart/form-data" class="my-form">
                <div class="form-group">
                    <label for="menuName">Menu name</label>
                    <form:input type="text" id="menuName" path="menuName" class="form-control"/>

                    <label for="description">Description</label>
                    <input type="text" id="description" name="description" class="form-control" required="true"/>
                    <form:input type="text" id="description" path="description" class="form-control"/>


                    <label for="menuPrice">Price</label>
                    <form:input type="text" id="menuPrice" path="menuPrice" class="form-control"/>


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
