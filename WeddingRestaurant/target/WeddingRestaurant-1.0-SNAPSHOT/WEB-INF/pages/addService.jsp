<%-- 
    Document   : addService
    Created on : Sep 10, 2023, 7:52:34 AM
    Author     : minh tai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<c:url value = "/admin/manage-service/add" var ="action"/>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form:form method="post" action="${action}" modelAttribute="service" enctype="multipart/form-data" class="my-form">
                <div class="form-group">
                    <label for="serviceName">Service name</label>
                    <input type="text" id="serviceName" name="serviceName" class="form-control" required="true" />

                    <label for="description">Description</label>
                    <input type="text" id="description" name="description" class="form-control" required="true"/>

                    
                    <label for="servicePrice">Price</label>
                    <input type="text" id="servicePrice" name="servicePrice" class="form-control" required="true"/>
                    

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