<%-- 
    Document   : login
    Created on : Mar 11, 2022, 9:02:11 PM
    Author     : hd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <c:if test="msg"> ${mess}</c:if>
    <form action="MainController"  method="POST">
        UserId: <input type="text" name="id"/><br>
        Password <input type="password" name="pass"/><br>
        <input type="hidden" name="action" value="login"/>
        <input type="submit" value="Login"/><br>
    </form>
    
</html>

