<%-- 
    Document   : edit.jsp
    Created on : Jul 21, 2023, 3:59:49 AM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<style>
    body {
        font-family: Arial, sans-serif;
    }

    .container {
        margin-top: 50px;
    }

    .row {
        border: 1px solid darkgrey;
        border-radius: 10px;
        width: 50%;
        margin: 0 auto;
        padding: 20px;
        background-color: #f5f5f5;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }

    .myclass {
        color: #007bff;
        text-align: center;
    }

    label {
        font-weight: bold;
    }

    .form-control {
        width: 100%;
        padding: 8px;
        margin-bottom: 15px;
        border: 1px solid #ced4da;
        border-radius: 5px;
    }

    .form-group {
        margin-bottom: 20px;
    }

    .form-group:last-child {
        margin-bottom: 0;
    }

    .btn-primary {
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        padding: 10px 20px;
        cursor: pointer;
    }

    .btn-primary:hover {
        background-color: #0056b3;
    }
</style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet"
              href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script
        src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container" style="margin-top: 10px;">
            <div class="row"
                 style="border: 1px darkgrey solid; border-radius: 10px; width: 50%; margin: 0 auto; padding: 20px;">
                <div class="col-sm-12">

                    <h2 class="myclass">Edit</h2>
                    <c:if test="${Product == null}">
                        <form action="add" enctype="multipart/form-data">
                        </c:if>
                        <c:if test="${Product != null}">
                            <form action="edit" enctype="multipart/form-data">
                            </c:if>
                            <div class="form-group">
                                <label>ID</label> 
                                <c:if test="${Product != null}">
                                    <input value="${Product.id}" type="text" 
                                           class="form-control" name="id" readonly>
                                </c:if>
                                <c:if test="${Product == null}">
                                    <input value="${Product.id}" type="text" 
                                           class="form-control" name="id">
                                </c:if>    

                            </div>
                            <div class="form-group">
                                <label>Name</label> 
                                <input value="${Product.name}" type="text" 
                                       class="form-control" name="name" placeholder="Enter name">
                            </div>
                            <div class="form-group">
                                <label>Brand</label> 
                                <select name="brand" aria-label="Default select example">
                                    <c:forEach items="${Brands}" var="o"> 
                                        <option value="${o.bid}">${o.bname}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Description</label> 
                                <input value="${Product.decription}" type="text" 
                                       class="form-control" name="description" placeholder="Enter description">
                            </div>
                            <div class="form-group">
                                <label>Price</label> 
                                <input value="${Product.price}" type="text" 
                                       class="form-control" name="price" placeholder="Enter price">
                            </div>
                            <div class="form-group">
                                <label>Photo</label> <br/>
                                <input value="${Product.imageUrl[0]}" type="text" 
                                       class="form-control" name="image" placeholder="Enter src">
                            </div>
                            <button type="submit" class="btn btn-primary">Save</button>
                            <button type="reset" class="btn btn-primary">Cancel</button>
                        </form>
                </div>
            </div>
        </div>
    </body>
</html>
