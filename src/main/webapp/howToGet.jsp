<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <title>Схема проезда и контакты</title>
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
                    <li class="active"><a href="index.html">Главная</a></li>
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
                    <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                    <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                </ul>

            </div>
        </div>

    </nav>
</header>
<div style="height: 111px"></div>


<div class="col-sm-12">
    <div style="height: 111px"></div>

    <div id="map" class="col-sm-6" style="height:500px"></div>
    <div id="contacts" class="col-sm-6" style="height:500px">
        <h3>Наш адрес: 03127, г. Киев, пр-кт Голосеевский 110а</h3>
        <h3>время работы с 8-00 до 22-00</h3>
        <h3>телефон: +3(8097)395 87 38</h3>
        <h3>e-mail: info@carservicestation.com</h3>
    </div>
</div>




<div class="col-sm-12">
    <div style="height: 111px"></div>
    <div class="footerPlace" style="height: 111px; background-color:lavenderblush;">
        <div class="topRow">
            <div class="grid_18 grid_right">
                <ul class="list-inline">
                    <li><a href="#">Новости</a></li>
                    <li><a href="#">Действующие акции</a></li>
                    <li><a href="#">Проверить наличие запчастей</a></li>
                    <li><a href="#">Записаться</a></li>
                    <li><a href="#">Ваш менеджер</a></li>
                    <li><a href="#">Схема проеда и контакты</a></li>

                </ul>

            </div>
        </div>

        <div class="clear" style="height: 41px"></div>
        <div class="middleRow">
            <div class="grid_18 grid_right">
                <ul class="list-inline">
                    <li><a href="#"><i class="fa fa-sitemap fa-2x" aria-hidden="true"></i> Карта Сайта</a></li>
                    <%--<li><a href="workerCabinet.jsp"><i class="fa fa-car fa-2x" aria-hidden="true"></i> Кабинте для
                        сотрудников</a></li>
    --%>

                    <li>
                        <div class="col-md-16">
                            <div class="text">
                                Мы в социальных сетях:
                                <a href="https://www.facebook.com" target="_blank"><i class="fa fa-facebook fa-2x"></i></a>
                                <a href="https://www.linkedin.com" target="_blank"><i class="fa fa-linkedin fa-2x"></i></a>
                                <a href="https://www.youtube.com" target="_blank"><i
                                        class="fa fa-youtube fa-2x"></i></a>
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

                CSS Systems. Все права защищены.

                <a href="#">Политика конфиденциальности</a>

            </div>

            <div class="clear"></div>
        </div>
    </div>
</div>


<script>
    function myMap() {
        var mapCanvas = document.getElementById("map");
        var myCenter = new google.maps.LatLng(50.387820, 30.491511)
        var mapOptions = {
            center: myCenter ,
            zoom: 12,
            mapTypeId: google.maps.MapTypeId.HYBRID
        };
        var map = new google.maps.Map(mapCanvas, mapOptions);
        var marker = new google.maps.Marker({position:myCenter});
        marker.setMap(map);

        google.maps.event.addListener(marker,'click',function() {
            map.setZoom(18);
            map.setCenter(marker.getPosition());
        });
    }
</script>

<script src="https://maps.googleapis.com/maps/api/js?callback=myMap"></script>

</body>
</html>
