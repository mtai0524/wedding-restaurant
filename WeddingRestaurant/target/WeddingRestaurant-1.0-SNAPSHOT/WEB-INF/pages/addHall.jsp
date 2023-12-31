<%-- 
    Document   : addHall
    Created on : Sep 10, 2023, 8:30:20 AM
    Author     : minh tai
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="<c:url value = "/css/usercss.css"/>" rel="stylesheet">


<c:url value = "/admin/manage-hall/add" var ="action"/>
<div class="container" style="margin-top: 60px">
    <div class="section-title text-center">
        <h1 class="display-5 mb-5" style="color: black">Thêm sảnh cưới</h1>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-6">
            <form:form method="post" action="${action}" modelAttribute="hall" enctype="multipart/form-data" class="my-form">
                <div class="form-group">
                    <label for="hallName">Hall name</label>
                    <form:input type="text" id="hallName" path="hallName" class="form-control"/>

                    <label for="capacity">capacity</label>
                    <form:input type="text" id="capacity" path="capacity" class="form-control"/>

                    <label for="branch">Chọn chi nhánh</label>
                    <form:select class = "form-select" id = "branch" name = "branch" path = "branchId">
                        <c:forEach items="${listBranchForHall}" var = "b">
                            <option value="${b.branchId}">${b.branchName}</option>
                        </c:forEach>
                    </form:select>

<!--                    <label for="priceMorning">Price Morning</label>
                    <input type="text" id="priceMorning" name="priceMorning" class="form-control" required="true"/>

                    <label for="priceAfternoon">Price Afternoon</label>
                    <input type="text" id="priceAfternoon" name="priceAfternoon" class="form-control" required="true"/>
                    
                    <label for="priceEvening">Price Evening</label>
                    <input type="text" id="priceEvening" name="priceEvening" class="form-control" required="true"/>
                    
                    <label for="priceWeekend">Price Weekend</label>
                    <input type="text" id="priceWeekend" name="priceWeekend" class="form-control" required="true"/>-->

                    <label for="file">Image:</label>
                    <form:input type="file" id="file" path="file" class="form-control"/>

                </div>

                <div class="form-group">
                    <input type="submit" value="xác nhận" class="btn btn-danger" />
                </div>
            </form:form>
            
            
        </div>
    </div>
</div>
