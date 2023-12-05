<%-- 
    Document   : home
    Created on : Jun 14, 2023, 5:01:33 AM
    Author     : Admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fashion Fever</title>
        <link rel="shortcut icon" href="images/logo.png">
        <link href='http://fonts.googleapis.com/css?family=Dosis:300,400' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/cart.css">
        <link rel="stylesheet" type="text/css" href="css/filter.css">
        <jsp:useBean id="a" class="DAO.DAO" scope="request"></jsp:useBean>
        </head>
        <body>
            <div id="header">
            <jsp:include page="bag.jsp"></jsp:include>
            <jsp:include page="menu.jsp"></jsp:include>
            </div>

            <!-- slide -->
            <div class="slider">
                <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="5000"> <!-- Set the data-interval attribute to 5000ms (5 seconds) -->
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner" style="max-height: 550px">
                        <div class="carousel-item active">
                            <img class="d-block w-100" src="images/banner2.png?width=1519?height=100%" alt="First slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="images/thumbs/1.jpg" style="height: 530px" alt="Second slide">
                        </div>
                        <div class="carousel-item">
                            <img class="d-block w-100" src="images/thumbs/1.jpg" style="height: 530px" alt="Third slide">
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>

            <!-- container -->
            <div class="container">
                <div class="main-content">
                    <div class="row">
                        
                        <div class="col-sm-12"> 

                            <div class="list-product">
                                <h4>All Products</h4>
                                <div class="product-details">
                                    <p class="pull-left">Found ${Products.size()} products</p>
                                <div class="clear-both"></div>
                            </div>
                            <div class="row">
                                <c:forEach items="${Products}" var="o">
                                    <div  class="col-sm-3" style="margin-bottom: 50px">
                                        <div id="items" class="product">
                                            <div class="product-header">
                                                <a href="detail?pid=${o.id}"><img src="${o.imageUrl[0]}" alt="${o.name}"></a>
                                            </div>
                                            <div class="product-body">
                                                <p class="product-title">${o.name}</p>
                                                <p class="product-price">
                                                    <span>$${o.price}</span>
                                                </p>
                                            </div>
                                            <div class="product-caption">
                                                <a class="add-to-cart" href="addtocart?pid=${o.id}">
                                                    <i class="fa fa-shopping-cart"></i>
                                                </a>
                                                <a class="bt-details" href="detail?pid=${o.id}">Details<i class="fa fa-chevron-right"></i></a>

                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!-- end container -->
        <div id="footer"></div>
        <jsp:include page="footer.jsp"></jsp:include>



    </body>
    <script>
        var cart = document.getElementById('cart');
        var cartdrop = document.getElementById('cart-drop');

        cart.addEventListener('click', () => {

            if (cartdrop.style.display == 'block') {
                cartdrop.style.display = "none";
            } else {
                cartdrop.style.display = "block";
            }

        });

        //tabs
        var tab_title = document.getElementsByClassName('tablink');
        var tab_content = document.getElementsByClassName('tf_content');
        function showContent(id) {
            for (var i = 0; i < tab_content.length; i++) {
                tab_content[i].style.display = 'none';
            }
            var content = document.getElementById(id);
            content.style.display = 'block';
        }

        var ttkhac = document.getElementById('thongtinkhac');
        var ttsp = document.getElementById('thongtinsp');
        showContent(ttsp.textContent);
        ttkhac.addEventListener('click', () => {
            ttkhac.className += " active";
            ttsp.classList.remove('active');
            var id = ttkhac.textContent;
            showContent(id);
        });
        ttsp.addEventListener('click', () => {
            ttsp.className += " active";
            ttkhac.classList.remove('active');
            var id = ttsp.textContent;
            showContent(id);
        });
    </script>
</html>
