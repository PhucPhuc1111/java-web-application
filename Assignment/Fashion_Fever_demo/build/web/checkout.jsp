<%-- 
    Document   : cart
    Created on : Jun 29, 2023, 12:12:04 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="shortcut icon" href="images/logo.png">
        <link href='http://fonts.googleapis.com/css?family=Dosis:300,400' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/cart.css">
    </head>
    <body>
        <!-- Header -->
        <div id="header">
            <jsp:include page="menu.jsp"></jsp:include>
        </div>
        <!-- End header -->
        <!-- Form Cart -->
        <div class="container cart-page">

            <table>
                <tr>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Subtotal</th>
                </tr>
            <c:forEach items="${sessionScope.order.od}" var="item">
                    <tr>
                    <td>
                        <div class="cart-info">
                            <img src="${item.product.imageUrl[0]}">
                            <div>
                                <p>${item.product.name}</p>
                                <small>Price: ${item.product.price}$</small>
                                <br>
                                <a href="removeCart?pid=${item.product.id}">Remove</a>
                            </div>
                        </div>
                    </td>
                    <td><input value="${item.quantity}"></td>
                    <td>${item.product.price*item.quantity}$</td>
                </tr>
            </c:forEach>
                
            </table>
            <div class="total-price">
                <table>
                    <tr>
                        <td>Subtotal</td>
                        <td>${sum}$</td>
                    </tr>
                    <tr>
                        <td>Tax(10%)</td>
                        <td>${sum/10}$</td>
                    </tr>
                    <tr>
                        <td>Total price</td>
                        <td>${sum + sum/10}$</td>
                    </tr>
                </table>
            </div>
            <div class="checkout-area">
                <table>
                    <button class="checkout-button"><a href="pay">Pay</a></button>
                </table>
            </div>
        </div>


        <!-- End Form Cart -->

        <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="js/app.js"></script>
</html>
