<%-- 
    Document   : detail
    Created on : 07-07-2023, 14:19:12
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fashion Fever</title>
        <link href='http://fonts.googleapis.com/css?family=Dosis:300,400' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" type="text/css" href="css/cart.css">
        <link rel="stylesheet" type="text/css" href="css/filter.css">
    </head>
    <body>
        <div id="header">
            <jsp:include page="bag.jsp"></jsp:include>
            <jsp:include page="menu.jsp"></jsp:include>
            </div>
            <div class="bread-crumb">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12">
                            <ul class="breadcrumb">
                                <li class="pageago">
                                    <a href="home">Home</a>
                                    <span class="sp">
                                        <i class="fa fa-angle-right"></i>
                                    </span>
                                </li>
                                <li class="pagenow">
                                    <strong><span>Product</span></strong>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end header -->

            <!-- content -->
            <div class="container">
                <div class="space-50"></div>
                <div class="row">
                    <div class="col-sm-9">
                        <div class="row">
                            <div class="col-sm-4">
                                <img src="${detail.imageUrl[0]}">
                        </div>
                        <div class="col-sm-8">
                            <div class="p_title">
                                <div class="p_name">${detail.name}</div>
                                <div class="p_price">
                                    <p class="sale_price">${detail.price}</p>
                                    <del class="now_price">${detail.price +100}</del>
                                </div>
                            </div>
                            <div class="space-20"></div>
                            <div class="p_desc">
                                <p>
                                    ${detail.decription}
                                </p>
                            </div>
                            <div class="space-20"></div>
                            <div class="button_addcart">
                                <button type="submit" class="add_cart">
                                    <span class="btn_addcart_text"><a href="addtocart?pid=${detail.id}">Thêm vào giỏ hàng</a></span>
                                </button>
                            </div>
                        </div>
                    </div>
                    <div class="space-50"></div>
                    <div class="info-des">
                        <div class="p_info-des">
                            <ul class="info-des_title">
                                <li class="tab_link">
                                    <h3><span class="tablink active" id="thongtinsp">Thông tin sản phẩm</span></h3>
                                </li>
                                <li class="tab_link">
                                    <h3><span class="tablink" id="thongtinkhac">Thông tin khác</span></h3>
                                </li>
                            </ul>
                            <div class="tab_float">
                                <div id="tab1" class="tab_content">
                                    <div class="tf_content" id="Thông tin sản phẩm">
                                        <p>1 Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
                                    </div>
                                </div>
                                <div id="tab2" class="tab_content">
                                    <div class="tf_content" id="Thông tin khác">
                                        <p>2 Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet.Consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequaturuis autem vel eum iure reprehenderit qui in ea voluptate velit es quam nihil molestiae consequr, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="space-50"></div>
                    <div class="product_list">
                        <h4>Có thể bạn sẽ thích</h4>
                        <div class="row">
                            <c:forEach items="${list_bestseller}" var="o">
                                <div class="col-sm-4">
                                    <div class="product">
                                        <div class="product-header">
                                            <a href="detail?pid=${o.id}"><img src="${o.imageUrl[0]}" alt=""></a>
                                        </div>
                                        <div class="product-body">
                                            <p class="product-title">${o.name}</p>
                                            <p class="product-price">
                                                <span>$${o.price}</span>
                                            </p>
                                        </div>
                                        <div class="product-caption">
                                            <a class="add-to-cart" href="cart.html">
                                                <i class="fa fa-shopping-cart"></i>
                                            </a>
                                            <!-- <a class="beta-btn primary" href="product.html">Details<i class="fa fa-chevron-right"></i></a> -->
                                            <a class="bt-details" href="detail?pid=${o.id}">Chi tiết<i class="fa fa-chevron-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>

                </div>
                <div class="col-sm-3">
                    <div class="product_left">
                        <h3 class="p_left-title">Sản phẩm liên quan</h3>

                        <div class="p_left-body">
                            <c:forEach items="${list_relate}" var="o">
                                <div class="p_left-list">
                                    <div class="p_left-item">
                                        <a id="detail-img" href="detail?pid=${o.id}">
                                            <img src="${o.imageUrl[0]}" style="width: 80px;height: 100%">
                                        </a>
                                        <div class="pl_body">
                                            <span class="pl_name">${o.name}</span>
                                            <span class="pl_price">$${o.price}</span>
                                        </div>
                                        <hr>
                                    </div>
                                </div>
                            </c:forEach>  
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- end content -->
        <jsp:include page="footer.jsp"></jsp:include>
        <script src="js/app.js"></script>
    </body>
</html>
