<%-- 
    Document   : about
    Created on : Jun 29, 2023, 12:15:31 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
    .about-section{
        margin: 0;
        padding: 0;
        font-family: "Open Sans",sans-serif;
        box-sizing: border-box;
    }
    .about-section{
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    .about-section{
        background-size: 60%;
        background-color: #c6e5f3;
        overflow: hidden;
        padding: 100px 0;
    }
    .inner-container{
        box-shadow:0px 0px 17px 3px rgba(255, 255, 255, 0.8);
        border-radius: 10px;
        width: 40%;
        float: right;
        background-color: #fdfdfd;
        padding: 150px;
    }
    .inner-container h1{
        margin-bottom: 30px;
        font-size: 30px;
        font-weight: 900;
    }
    .text{
        font-size: 13px;
        color: #545454;
        line-height: 30px;
        text-align: justify;
        margin-bottom: 40px;
    }
    .Team{
        display: flex;
        justify-content: space-between;
        font-weight: 700;
    }
    @media screen and(max-width:1200px){
        .about-section{
            background-size: 100%;
            padding: 100px 40px;
        }
        .inner-container{
            padding: 100%;
        }
    }
</style>
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
    </head>
    <body>
    <!-- Header -->
        <div id="header">
            <jsp:include page="bag.jsp"></jsp:include>
            <jsp:include page="menu.jsp"></jsp:include>
        </div>
    <!-- End header -->
    <!-- Form About us -->
    <div class="about-section">
        <div class="inner-container">
            <h1>About us</h1>
            <p class="text">
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam auctor finibus ligula, sed facilisis libero venenatis sit amet. In interdum lorem eu ante lacinia, sed mattis mauris aliquam.Etiam vitae dui consectetur, mattis mauris non, tincidunt enim. Nunc sagittis augue enim, at rhoncus justo consectetur sed. Sed sit amet erat vitae lorem feugiat ultrices. Nullam ut nisl vel nisl iaculis efficitur ut nec sapien.
            </p>
            <div class="Team">
                <span>Hoàng Phúc</span>
                <span>Huy Hoàng</span>
                <span>Xuân Thư</span>
            </div>
        </div>
    </div>
    <!-- End Form About us -->

    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
