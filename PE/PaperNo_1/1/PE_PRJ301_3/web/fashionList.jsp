<%-- 
    Document   : admin
    Created on : Mar 1, 2022, 8:29:12 PM
    Author     : hd
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Painting Page</title>
    </head>
    <h1>Welcome, ${sessionScope.user.fullname}</h1>
    <a href="MainController?action=logout">Logout</a>
    <form action="search">
        <input type="text" name="Search">
        <button  type="submit">Search</button>
    </form>   
    <table>
        <thead>
            <tr>
                <td>no</td>
                <td>id</td>
                <td>name</td>
                <td>price</td>
                <td>size</td>
                <td>description</td>
                <td>action</td>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${listF}" var="o">
            <tr>
                <td></td>
                <td>${o.id}</td>
                <td>${o.name}</td>
                <td>${o.price}</td>
                <td>${o.size}</td>
                <td>${o.description}</td>
                <td><a href="delete?fid=${o.id}">Delete</a></td>
            </tr>
            </c:forEach>
        </tbody>
    </table>

</body>

</body>
</html>
