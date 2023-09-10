<%-- 
    Document   : addBranch
    Created on : Sep 10, 2023, 8:30:11 AM
    Author     : minh tai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<c:url value = "/admin/manage-branch/add" var ="action"/>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form:form method="post" action="${action}" modelAttribute="branchpost" enctype="multipart/form-data" class="my-form">
                <div class="form-group">
                    <label for="branchName">Branch name</label>
                    <input type="text" id="branchName" name="branchName" class="form-control" required="true" />

                    <label for="address">Address</label>
                    <input type="text" id="address" name="address" class="form-control" required="true"/>


                    <label for="phone">phone</label>
                    <input type="text" id="phone" name="phone" class="form-control" required="true"/>


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
