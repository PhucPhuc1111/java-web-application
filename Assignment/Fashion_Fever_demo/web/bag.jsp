<%-- 
    Document   : Bag
    Created on : Jul 11, 2023, 9:51:18 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="header-body">
    <div class="container beta-relative">
        <div class="pull-left">
            <a href="home" id="logo"><img src="images/logo_transparent.png" width="200px"></a>
        </div>
        <div class="pull-right beta-components space-left ov">
            <div class="space10">&nbsp;</div>
            <div class="beta-comp">
                <form action="search" method="post" id="searchform">
                    <input type="text" name="search" id="s" placeholder="Enter...">
                    <button class="search">Search</button>
                </form>
            </div>
            <form class="beta-comp">
                <div class="cart" id="cart">
                    <div class="cart-select"><i class="fa fa-shopping-cart cart-icon"></i>Bag<span class="badge">${order.od.size()}</span></div>
                    <div class="cart-dropdown" id="cart-drop">
                        <div class="cart-header">
                        </div>
                        <ul class="cart-items">
                            <c:forEach items="${order.od}" var="item">
                                <li class="">
                                    <img src="${item.product.imageUrl[0]}" alt="item1">
                                    <div class="item-info">
                                        <span class="item-name">${item.product.name}</span>
                                        <span class="item-price">${item.product.price*item.quantity}$</span>
                                        <span class="item-quantity">Amount: ${item.quantity}</span>
                                        <a href="removeCart?pid=${item.product.id}" class="delete-item">Remove</a>
                                    </div>
                                </li>
                            </c:forEach>

                        </ul>
                        <div class="caption-cart">
                            <div class="clearfix"></div>
                            <c:if test="${sessionScope.order != null}">
                                <div class="cart-order">
                                    <button class="order"><a href="sumCart">Checkout</a></button>
                                </div>
                            </c:if>
                            <c:if test="${sessionScope.order == null}">
                                <div class="cart-order">
                                    <button class="order"><a href="checkout.jsp">Checkout</a></button>
                                </div>
                            </c:if>
                        </div>
                    </div><div class="cart-dropdown" id="cart-drop">
                        <div class="cart-header">

                        </div>
                        <ul class="cart-items">
                            <c:forEach items="${order.od}" var="item">
                                <li class="">
                                    <img src="${item.product.imageUrl[0]}" alt="item1">
                                    <span class="item-name">${item.product.name}</span>
                                    <span class="item-price">${item.product.price*item.quantity}$</span>
                                    <span class="item-quantity">Amount: ${item.quantity}</span>
                                    <a href="removeCart?pid=${item.product.id}" class="delete-item">Remove</a>
                                </li>
                            </c:forEach>
                        </ul>
                        <div class="caption-cart">
                            <div class="clearfix"></div>
                            <c:if test="${sessionScope.order != null}">
                                <div class="cart-order">
                                    <button class="order"><a href="sumCart">Checkout</a></button>
                                </div>
                            </c:if>
                            <c:if test="${sessionScope.order == null}">
                                <div class="cart-order">
                                    <button class="order"><a href="checkout.jsp">Checkout</a></button>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
