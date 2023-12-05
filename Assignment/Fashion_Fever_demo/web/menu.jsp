<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
    Document   : menu
    Created on : 07-07-2023, 14:35:56
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="header-bottom" style="background: #0277b8;">
    <div class="container">
        <nav class="main-menu">
            <c:if test="${sessionScope.user.role == 1}">
                <ul class="l-inline ov">
                    <li><a href="admin">Manage</a></li>
                        <c:if test="${sessionScope.user != null}">
                        <li><a>Hello ${sessionScope.fullname}</a></li>
                        <li><a href="logout">Logout</a></li>
                        </c:if>
                        <c:if test="${sessionScope.user == null}">
                        <li><a href="login">Login</a></li>
                        </c:if>
                </ul>
            </c:if>


            <c:if test="${sessionScope.user.role != 1}">
                <ul class="l-inline ov">
                    <li><a href="home">Home</a></li>
                    <li><a href="#">Categories</a>
                        <ul class="sub-menu">
                            <c:forEach items="${Brands}" var="o">
                                <a href="brand?bid=${o.bid}">${o.bname}</a> 
                            </c:forEach>
                        </ul>
                    </li>
                    <li><a href="#footer">Contact</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                        <c:if test="${sessionScope.user != null}">
                        <li><a>Hello ${sessionScope.fullname}</a></li>
                        <li><a href="logout">Logout</a></li>
                        </c:if>
                        <c:if test="${sessionScope.user == null}">
                        <li><a href="login">Login</a></li>
                        </c:if>
                </ul>
            </c:if>

            <div class="clearfix"></div>
        </nav>
    </div>
</div>  
