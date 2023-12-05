<%-- 
    Document   : signup
    Created on : Jun 29, 2023, 12:13:48 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fashion Fever</title>
        <link rel="shortcut icon" href="images/logo.png">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    </head>
    <body>
        <div class="wrapper">
            <div class="container" >
                <div class="row justify-content-around" style="background-color: rgb(76, 141, 232);">
                    <form action="signup" class="col-md-6 bg-light p-3 my-3">
                        <h1 class="text-center text-uppercase h3 py-3">Create new account</h1>
                        <div class="form-group">
                            <label for="fullname">Full name</label>
                            <input type="text" name="fullname" id="" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">Phone number</label>
                            <input type="text" name="phone" id="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="address">Address</label>
                            <input type="text" name="address" id="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="email">Email</label>
                            <input type="text" name="email" id="" class="form-control">
                        </div>
                        <div class="form-group">
                            <label for="fullname">Username</label>
                            <input type="text" name="user" id="username" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="Password">Password</label>
                            <input type="password" name="pass" id="" class="form-control" required>
                        </div>
                        <div class="form-group">
                            <label for="Password">Confirm password</label>
                            <input type="password" name="repass" id="" class="form-control" required>
                        </div>
                        <button type="submit"  class="btn-primary btn btn-block">Signup</button>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
