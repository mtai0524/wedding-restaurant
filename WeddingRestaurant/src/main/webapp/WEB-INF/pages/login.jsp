<%-- 
    Document   : login
    Created on : Sep 9, 2023, 7:55:28 AM
    Author     : minh tai
--%>

<c:url value="/login" var="action" />

<form method="post" action= "${action}">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" required><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password" required><br>

    <input type="submit" value="??ng Nh?p">
</form>
