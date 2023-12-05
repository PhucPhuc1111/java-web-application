<%-- 
    Document   : login.jsp
    Created on : Jun 29, 2023, 12:10:49 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fashion Fever</title>
        <link rel="shortcut icon" href="images/logo.png">
        <link href='http://fonts.googleapis.com/css?family=Dosis:300,400' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css" />
        <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
        <link rel="stylesheet" href="css/style.css"> 
        <link rel="stylesheet" href="css/login.css">
    </head>
    <body>
        <!-- Header -->
        <div id="header">
            <jsp:include page="bag.jsp"></jsp:include>
            <jsp:include page="menu.jsp"></jsp:include>
        </div>
        <!-- End header -->
        <!-- Form Login -->
        <div id="wrapper">
            <form action="login" method="post" id="form-login">    
                <h1 class="form-heading">Sign In</h1>
                <div class="form-group">
                    <i class="far fa-user"></i>
                    <input type="text" name="user" class="form-input" placeholder="Username">
                </div>
                <div class="form-group">
                    <i class="fas fa-key"></i>
                    <input type="password" name="pass" class="form-input" placeholder="Password">
                    <div id="eye">
                        <i class="far fa-eye"></i>
                    </div>
                </div>
                <input type="submit" value="Login" class="form-submit">
                <a id="forgot" href="signup.jsp">Create new Account</a>
            </form>  
        </div>
        <!-- End Form Login -->

        <!-- Footer -->
        <jsp:include page="footer.jsp"></jsp:include>
j</body>
<script>
    $(document).ready(function () {
        $('#eye').click(function () {
            $(this).toggleClass('open');
            $(this).children('i').toggleClass('fa-eye-slash fa-eye');
            if ($(this).hasClass('open')) {
                $(this).prev().attr('type', 'text');
            } else {
                $(this).prev().attr('type', 'password');
            }
        });
    });
</script>
</html>
