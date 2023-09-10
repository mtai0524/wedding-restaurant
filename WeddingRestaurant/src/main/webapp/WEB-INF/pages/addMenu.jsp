<%-- 
    Document   : addMenu
    Created on : Sep 10, 2023, 8:18:04 AM
    Author     : minh tai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<c:url value = "/admin/manage-menu/add" var ="action"/>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form:form method="post" action="${action}" modelAttribute="menu" enctype="multipart/form-data" class="my-form">
                <div class="form-group">
                    <label for="menuName">Menu name</label>
                    <input type="text" id="menuName" name="menuName" class="form-control" required="true" />

                    <label for="description">Description</label>
                    <input type="text" id="description" name="description" class="form-control" required="true"/>


                    <label for="menuPrice">Price</label>
                    <input type="text" id="menuPrice" name="menuPrice" class="form-control" required="true"/>


                    <label for="file">Hình ảnh:</label>
                    <input type="file" id="file" name="file" class="form-control" required="true"/>
                </div>

                <div class="form-group">
                    <input type="submit" value="xác nhận" class="btn btn-danger" />
                </div>
            </form:form>
        </div>
    </div>
</div>
