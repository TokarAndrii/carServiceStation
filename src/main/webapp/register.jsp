<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="WEB-INF/pages/import.jsp" %>
<head>
    <meta charset="UTF-8">
    <title>Register Client page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>--%>
    <%--<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>--%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">


    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <style type="text/css">

        #tokar_container_header{
            padding-left: 50px;
            padding-top: 10px;
            font-weight: bold;
            font-size: medium;
        }

        #logoPic,#loginClientForm{
            padding-top: 10px;
        }

        #loginClientForm{
            padding-left: 70px;
        }

        #divForm{
            max-width: 60%;

        }

        .form-control{
            max-width: 600px;
        }

    </style>


</head>
<body>

<header>
    <nav class="navbar navbar-default navbar-fixed-top">

        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>


                <figure>
                    <a href="index.html"><img height="45px" src="images/serviceCenterLogo2.jpg"
                                              alt="logo of Car service station Tokar"></a>

                    <figcaption><h4>"Tokar CSS"</h4></figcaption>
                </figure>


            </div>

            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="index.html">Главная</a></li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        Ремонт и обслуживание автомобиля<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Диагностика</a></li>
                            <li><a href="#">Ремонт двигателя</a></li>
                            <li><a href="#">Ремонт кузова автомобиля</a></li>
                            <li><a href="#">Ремонт коробки передач</a></li>
                            <li><a href="#">Ремонт сцепления</a></li>
                            <li><a href="#">Ремонт шасси</a></li>
                            <li><a href="#">Ремонт тормозов</a></li>
                            <li><a href="#">Ремонт шин</a></li>
                            <li><a href="#">Замена расходных материалов</a></li>
                            <li><a href="#">Другой вид ремонта</a></li>
                        </ul>
                    </li>

                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        Автомобильные товары и запчасти<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Запчасти</a></li>
                            <li><a href="#">Расходные материалы</a></li>
                            <li><a href="#">Шины и диски</a></li>
                            <li><a href="#">Сувениры</a></li>
                        </ul>
                    </li>

                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        Автомойка<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Мока автомобиля снаружи</a></li>
                            <li><a href="#">Мойка и чистка автомобиля внутри</a></li>
                        </ul>
                    </li>

                    <li id="tokar_navigation_aboutCompany"><a href="#">О компании</a></li>

                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <%-- <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>--%>
                    <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>

            </div>
        </div>

    </nav>
</header>

<div style="height: 111px"></div>

<p></p>
<p></p>
<p></p>
<p></p>

<section>

</section>

<div id="tokar_container_header">
    <p class="headerLogin">
        <span id="loginClientForm">Вход в личный кабинет клиента</span>
        <span id="logoPic"><a href="index.html"> <img src="images/serviceCenterLogo.jpg" class="img-thumbnail" alt="logo"
                                                      style="width: 100px; height: 100px;float:left"/></a>
                   </span>
    </p>
</div>
<br>
<br>
<br><br>
<br><br>

<div class="registerForm" id="divForm">

    <form class="form-horizontal" role="form" action="register" method="post">

        <div class="form-group">
            <label class="control-label col-sm-2">First Name:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="firstName" placeholder="Enter First Name" required>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">Second Name:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="secondName" placeholder="Enter Second Name" required>
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">Phone Number:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="phoneNumber" required pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"
                       placeholder="Enter Phone Number as example: 000-000-0000">
            </div>
        </div>

        <div class=" form-group">
            <label class="control-label col-sm-2">DL Number:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="driverLicenseNumber"
                       placeholder="Enter Driver License Number as example: AAA#000000" required pattern="^\w{3}#\d{6}">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">Email:</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" name="email"
                       placeholder="Enter Email as example: car@service.com" required
                       pattern="/^[\w\.-\+]+@[\w-]+(\.\w{2,4})+$/">
            </div>
        </div>

        <div class="form-group">
            <label class="control-label col-sm-2">Password:</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" name="pass"
                       placeholder="Enter password from 8 to 20 any charachter or number" required
                       pattern="(?=.\w).{8,20}">
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Re-Enter Password:</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" name="passRepeated"
                       placeholder="Repeat entered password" required
                       pattern="(?=.\w).{8,20}">
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">

                <button type="submit" class="btn btn-default">Submit</button>
            </div>
        </div>

    </form>
</div>

<div style="height: 131px"></div>



<div class="footerPlace" style="height: 111px; background-color:lavenderblush;">
    <div class="topRow">
        <div class="grid_18 grid_right">
            <ul class="list-inline">
                <li><a href="#">Новости</a></li>
                <li><a href="#">Действующие акции</a></li>
                <li><a href="#">Проверить наличие запчастей</a></li>
                <li><a href="#">Записаться</a></li>
                <li><a href="#">Ваш менеджер</a></li>
                <li><a href="howToGet.jsp">Схема проеда и контакты</a></li>

            </ul>

        </div>
    </div>

    <div class="clear" style="height: 41px"></div>
    <div class="middleRow">
        <div class="grid_18 grid_right">
            <ul class="list-inline">
                <li><a href="#"><i class="fa fa-sitemap fa-2x" aria-hidden="true"></i> Карта Сайта</a></li>
                <%--<li><a href="workerCabinet.jsp"><i class="fa fa-car fa-2x" aria-hidden="true"></i> Кабинте для
                    сотрудников</a></li>--%>


                <li>
                    <div class="col-md-16">
                        <div class="text">
                            Мы в социальных сетях:
                            <a href="https://www.facebook.com" target="_blank"><i class="fa fa-facebook fa-2x"></i></a>
                            <a href="https://www.linkedin.com" target="_blank"><i class="fa fa-linkedin fa-2x"></i></a>
                            <a href="https://www.youtube.com" target="_blank"><i class="fa fa-youtube fa-2x"></i></a>
                            <a href="https://plus.google.com" target="_blank"><i
                                    class="fa fa-google-plus fa-2x"></i></a></div>

                    </div>
                </li>
            </ul>
        </div>
    </div>


    <div class="grid_16 bottomRow">
        <div class="text">
            &copy; 2016.

            CSS Systems. All rights reserved.

            <a href="#">Privacy policy</a>

        </div>

        <div class="clear"></div>
    </div>
</div>

</body>

</html>
