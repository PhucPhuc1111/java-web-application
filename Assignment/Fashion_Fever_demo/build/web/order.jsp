<%-- 
    Document   : order
    Created on : Jul 11, 2023, 9:58:18 AM
    Author     : Admin
--%>
<style>
    body {
        background-color: rgb(77, 118, 180);
    }

    /* Tab */
    .tab-content {
        display: none;
    }

    .tab-content.active {
        display: block;
    }

    main {
        background-color: rgb(193, 201, 255);
        border-radius: 10px;
        padding: 10px;
        margin-top: -10px;
    }
</style>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- Template -->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="../img/template/favicon.ico" type="img/ico">
        <title>Fashion Fever</title>
    </head>
    <body>
        <header>
            <!--Logo, Search, Cart...-->
            <nav>
                <ul>
                    <li><a href="Manage">Home</a></li>
                    <li><a href=""></a></li>
                    <li><a href="Order" class="active">Order</a></li>
                    <li><a href="">Logout</a></li>
                </ul>
            </nav>
        </header>

        <main>
            <div>
                <ul>
                    <li id="order" class="tab" onclick="showOrder('order-content')">Order</li>
                    <li id="ready" class="tab" onclick="showOrder('ready-content')">Ready</li>
                    <li id="delivery" class="tab" onclick="showOrder('delivery-content')">Delivery</li>
                    <li id="history" class="tab" onclick="showOrder('history-content')">History</li>
                </ul>
            </div>

            <div>
                <div id="order-content" class="tab-content">
                    Test content tab: order
                    <ul class="list-product">
                        <li>
                            <div class="product">
                                <img src="#" alt="product 1">
                                <button class="view-detail">View Detail</button>
                                <button class="next">Done</button>
                            </div>

                        </li>
                        <li>
                            <div class="product">
                                <img src="#" alt="product 2">
                                <button class="view-detail">View Detail</button>
                                <button class="next">Done</button>
                            </div>
                        </li>
                        <li>
                            <div class="product">
                                <img src="#" alt="product 3">
                                <button class="view-detail">View Detail</button>
                                <button class="next">Done</button>
                            </div>
                        </li>
                    </ul>
                </div>

                <!-- ==================================================================== -->

                <div id="ready-content" class="tab-content">
                    Test content tab: prepared
                    <ul class="list-product">
                        <li>
                            <div class="product">
                                <img src="#" alt="product 1">
                                <button class="view-detail">View Detail</button>
                                <button class="next">Done</button>
                            </div>

                        </li>
                        <li>
                            <div class="product">
                                <img src="#" alt="product 2">
                                <button class="view-detail">View Detail</button>
                                <button class="next">Done</button>
                            </div>
                        </li>
                        <li>
                            <div class="product">
                                <img src="#" alt="product 3">
                                <button class="view-detail">View Detail</button>
                                <button class="next">Done</button>
                            </div>
                        </li>
                    </ul>
                </div>

                <!-- ==================================================================== -->

                <div id="delivery-content" class="tab-content">
                    Test content tab: delivery
                    <ul class="list-product">
                        <li>
                            <div class="product">
                                <img src="#" alt="product 1">
                                <button class="view-detail">View Detail</button>
                                <button class="next">Done</button>
                            </div>

                        </li>
                        <li>
                            <div class="product">
                                <img src="#" alt="product 2">
                                <button class="view-detail">View Detail</button>
                                <button class="next">Done</button>
                            </div>
                        </li>
                        <li>
                            <div class="product">
                                <img src="#" alt="product 3">
                                <button class="view-detail">View Detail</button>
                                <button class="next">Done</button>
                            </div>
                        </li>
                    </ul>
                </div>

                <!-- ==================================================================== -->

                <div id="history-content" class="tab-content">
                    Test content tab: history
                    <ul class="list-product">
                        <li>
                            <div class="product">
                                <img src="#" alt="product 1">
                                <button class="view-detail">View Detail</button>
                            </div>
                        </li>
                        <li>
                            <div class="product">
                                <img src="#" alt="product 2">
                                <button class="view-detail">View Detail</button>
                            </div>
                        </li>
                        <li>
                            <div class="product">
                                <img src="#" alt="product 3">
                                <button class="view-detail">View Detail</button>
                            </div>
                        </li>
                    </ul>

                </div>
            </div>
        </main>

        <footer>
            <!--contact-->
        </footer>
    </body>
</html>
