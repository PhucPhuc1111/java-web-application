<%-- 
    Document   : admin
    Created on : Jul 19, 2023, 12:54:27 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1">
        <title>Fashion Fever</title>
        <link rel="shortcut icon" href="images/logo.png">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
        <link rel="stylesheet" href="css/admin.css">
        <jsp:useBean id="a" class="DAO.UserDAO" scope="request"></jsp:useBean>
        </head>
        <body>

            <input type="checkbox" id="sidebar-toggle">
            <div class="sidebar">
                <div class="sidebar-header">
                    <h3 class="brand">
                        <img src="" alt="">
                        <span>Fashion Fever</span>
                    </h3> 
                    <label for="sidebar-toggle" class="ti-menu-alt"></label>
                </div>

                <div class="sidebar-menu">
                    <ul>
                        <li>
                            <a href="home" id="homeButton">
                                <span class="ti-home"></span>
                                <span>Home</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" id="productsButton">
                                <span class="ti-briefcase"></span>
                                <span>Products</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" id="usersButton">
                                <span class="ti-user"></span>
                                <span>Users</span>
                            </a>
                        </li>
                        <li>
                            <a href="#" id="ordersButton">
                                <span class="ti-check-box"></span>
                                <span>Orders</span>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>


            <div class="main-content">

                <header>
                    <div class="search-wrapper">
                        <span class="ti-search"></span>
                        <input type="search" placeholder="Search">
                    </div>

                </header>

                <main>

                    <h2 class="dash-title">Overview</h2>

                    <div class="dash-cards">
                        <div class="card-single">
                            <div class="card-body">
                                <span class="ti-money"></span>
                                <div>
                                    <h5>Revenue</h5>
                                    <h4>$${revenue}</h4>
                            </div>
                        </div>
                    </div>

                    <div class="card-single">
                        <div class="card-body">
                            <span class="ti-user"></span>
                            <div>
                                <h5>Users</h5>
                                <h4>${no_user}</h4>
                            </div>
                        </div>
                    </div>

                    <div class="card-single">
                        <div class="card-body">
                            <span class="ti-check-box"></span>
                            <div>
                                <h5>Orders</h5>
                                <h4>${no_order}</h4>
                            </div>
                        </div>
                    </div>
                </div>


                <section class="recent">
                    <div id="productManageContainer" class="activity-grid">
                        <div class="activity-card">
                            <h3 style="display: flex; justify-content: space-between;">
                                Product Manage
                                <button id="addButton" style="background-color: green; color: white;"><a href="update">Add New Product</a></button>
                            </h3>
                            <div class="table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Name</th>
                                            <th>Image</th>
                                            <th>Brand</th>
                                            <th>Price</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${Products}" var="o">
                                            <tr>
                                                <td>${o.id}</td>
                                                <td>${o.name}</td>
                                                <td><img src="${o.imageUrl[0]}" style="width: 80px" style="height:80px"></td>
                                                <td>${o.brandname}</td>
                                                <td>$${o.price}</td>
                                                <td>
                                                    <button id="updatebutton"><a href="load?pid=${o.id}">Update</a></button>
                                                    <button id="removebutton"><a href="delete?pid=${o.id}">Remove</a></button>
                                                </td> 
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div id="userManageContainer" class="activity-grid" style="display: none;">
                        <div  class="activity-card">
                            <h3 style="display: flex; justify-content: space-between;">
                                User Manage
                                <button id="addButton" style="background-color: green; color: white;"><a href="signup.jsp">Add New User</a></button>
                            </h3>
                            <div class="table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Username</th>
                                            <th>Password</th>
                                            <th>Role</th>
                                            <th>Full name</th>
                                            <th>phone</th>
                                            <th>address</th>
                                            <th>Email</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${Users}" var="o">
                                            <tr>
                                                <td>${o.id}</td>
                                                <td>${o.username}</td>
                                                <td>${o.password}</td>
                                                <c:set var="string1" value="1"/>
                                                <c:if test="${o.role eq string1}">
                                                    <td>Admin</td>
                                                </c:if>
                                                <c:if test="${o.role ne string1}">
                                                    <td>User</td>
                                                </c:if>
                                                <td>${o.fullname}</td>
                                                <td>${o.phone}</td>
                                                <td>${o.address}</td>
                                                <td>${o.mail}</td>
                                                <td>
                                                    <c:if test="${o.role ne string1}">
                                                        <button id="updatebutton"><a href="update?username=${o.username}">Set Admin</a></button>
                                                    </c:if>
                                                    <button id="removebutton"><a href="delete?uid=${o.id}">Remove</a></button>
                                                </td> 
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div id="orderManageContainer" class="activity-grid" style="display: none;">
                        <div class="activity-card">
                            <h3 style="display: flex; justify-content: space-between;">
                                Order Manage
                            </h3>
                            <div class="table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>UserID</th>
                                            <th>Status</th>
                                            <th>Date</th>
                                            <th>Total price</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${Orders}" var="o">
                                            <tr>
                                                <td>${o.id}</td>
                                                <td>${o.username}</td>
                                                <td>${o.status}</td>
                                                <td>${o.date}</td>
                                                <td>$${o.totalprice}</td>
                                                <td>
                                                    <button id="updatebutton">View</button>
                                                    <button id="removebutton"><a href="delete?oid=${o.id}">Remove</a></button>
                                                </td> 
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </section>

            </main>
                            
        </div>

    </body>
</html>
<script>
    // JavaScript
    document.getElementById("usersButton").addEventListener("click", function () {
        document.getElementById("userManageContainer").style.display = "block";
        document.getElementById("orderManageContainer").style.display = "none";
        document.getElementById("productManageContainer").style.display = "none";
    });

    document.getElementById("ordersButton").addEventListener("click", function () {
        document.getElementById("userManageContainer").style.display = "none";
        document.getElementById("orderManageContainer").style.display = "block";
        document.getElementById("productManageContainer").style.display = "none";
    });

    document.getElementById("productsButton").addEventListener("click", function () {
        document.getElementById("userManageContainer").style.display = "none";
        document.getElementById("orderManageContainer").style.display = "none";
        document.getElementById("productManageContainer").style.display = "block";
    });
</script>