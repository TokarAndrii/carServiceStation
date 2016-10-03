<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="WEB-INF/pages/import.jsp" %>
<head>
    <meta charset="UTF-8">
    <title>Main Client Menu of TokarServrciceStation</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


</head>

<body>
<%--<%@include file="WEB-INF/mainLogoImport.jsp"%>
<link rel="stylesheet" href="stylesheet.css">--%>

<div id="tokar_container_header">
    <p class="headerLogin">
        <span id="loginClientForm">Вход в личный кабинет клиента</span>
                <span><a href="index.html"> <img src="images/serviceCenterLogo.jpg" class="img-thumbnail" alt="logo"
                                                 style="width: 85px; height: 85px;float:right"/></a>
                   </span>
    </p>
</div>
<br>
<br>
<br>

<%--
<div class="containerForLogin">
    <form class="form-horizontal" role="form" action="login" method="post">

        <div class="form-group">
            <label class="control-label col-sm-2" for="email">Email:</label>
            <div class="col-sm-10">
              <input type="email" class="form-control" id="email" placeholder="Enter email">
            </div>
        </div>


        <div class="form-group">
            <label class="control-label col-sm-2" for="pass">Password:</label>
            <div class="col-sm-10">
              <input type="password" class="form-control" id="pass" placeholder="Enter password">
            </div>
        </div>


        <div class="form-group">
            <label class="control-label col-sm-2" for="driverLicenseNumber">Driver License Number:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="driverLicenseNumber" placeholder="Enter Driver License Number">
            </div>
        </div>


        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Принять</button>
            </div>
        </div>

    </form>

</div>
--%>

<div class="login form">

    <form class="form-horizontal" action="login" method="post">
        <div class="form-group">
            <label class="control-label col-sm-2">Email:</label>

            <div class="col-sm-10">
                <input class="form-control" name="email" type="email" placeholder="Enter email">

            </div>
        </div>


        <div class="form-group">
            <label class="control-label col-sm-2">Pass:</label>

            <div class="col-sm-10">
                <input class="form-control" name="pass" type="password" placeholder="Enter password">
            </div>
        </div>


        <div class="form-group">
            <label class="control-label col-sm-2">DriverLicenseNumber:</label>

            <div class="col-sm-10">
                <input class="form-control" name="driverLicenseNumber"
                       type="text" placeholder="Enter driver license number">
            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
        </div>

        <%--<input type="submit">--%>

    </form>
</div>

<br>

<div class="Head Menu">
    <ul>
        <li><a href="WEB-INF/pages/showServices.jsp">services</a></li>
        <li>Store</li>

    </ul>
</div>

</body>
</html>