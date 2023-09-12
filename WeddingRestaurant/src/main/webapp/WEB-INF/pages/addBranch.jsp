<%-- 
    Document   : addBranch
    Created on : Sep 10, 2023, 8:30:11 AM
    Author     : minh tai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="<c:url value = "/css/usercss.css"/>" rel="stylesheet">


<c:url value = "/admin/manage-branch/add" var ="action"/>
<div class="container" style="margin-top: 60px">
    <div class="section-title text-center">
        <h1 class="display-5 mb-5" style="color: black">Thêm chi nhánh</h1>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form:form method="post" action="${action}" modelAttribute="branchpost" enctype="multipart/form-data" class="my-form">
                <div class="form-group">
                    <label for="branchName">Branch name</label>
                    <%--<form:errors path = "*" cssClass = "alert alert-danger" element ="div" ></form:errors>--%>
                    <form:input type="text" id="branchName" path="branchName" class="form-control"/>
                    <form:errors path = "branchName" cssClass = "alert alert-danger" element ="div" ></form:errors>

                    <label for="address">Address</label>
                    <form:textarea type="text" id="address" path="address" class="form-control"/>
                    <form:errors path = "address" cssClass = "alert alert-danger" element ="div" ></form:errors>


                    <label for="phone">phone</label>
                    <form:input type="text" id="phone" path="phone" class="form-control"/>
                    <form:errors path = "phone" cssClass = "alert alert-danger" element ="div" ></form:errors>

                    <form:errors path = "file" cssClass = "alert alert-danger" element ="div" ></form:errors>
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
