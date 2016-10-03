<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@include file="WEB-INF/pages/import.jsp" %>
<head>
    <title>Register Worker page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>

<body>


<div id="tokar_container_header">
    <p class="headerRegister">
        <span id="registerClientForm">Регистрация сотрудника</span>
                <span><img src="images/serviceCenterLogo.jpg" class="img-thumbnail" alt="logo"
                           style="width: 85px; height: 85px;float:right"/></span>
    </p>
</div>
<br>
<br>
<br>



<div id="workerRegisterForm">
    <form class="form-horizontal" role="form" action="registerWorker" method="post">
        <div class="form-group">
            <label class="control-label col-sm-2">First Name:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="firstName" placeholder="Enter First Name" required>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Second Name:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="secondName" placeholder="EnterSecond Name" required>
            </div>
        </div>

        <div class="radio">
            <label><input type="radio" name="workerTyps" id="wt1" value="MASTER_OF_REPAIR_1_KATEGORY" checked>
                MASTER_OF_REPAIR_1_KATEGORY
            </label>
        </div>
        <div class="radio">
            <label><input type="radio" name="workerTyps" id="wt2" value="MASTER_OF_REPAIR_2_KATEGORY">
                MASTER_OF_REPAIR_2_KATEGORY
            </label>
        </div>
        <div class="radio">
            <label><input type="radio" name="workerTyps" id="wt3" value="MASTER_OF_REPAIR_3_KATEGORY">
                MASTER_OF_REPAIR_3_KATEGORY
            </label>
        </div>
        <div class="radio">
            <label><input type="radio" name="workerTyps" id="wt4" value="WASHER_WORKER">
                WASHER_WORKER
            </label>
        </div>
        <div class="radio">
            <label><input type="radio" name="workerTyps" id="wt5" value="SECRETARY">
                SECRETARY
            </label>
        </div>
        <div class="radio">
            <label><input type="radio" name="workerTyps" id="wt6" value="ADMINISTRATOR">
                ADMINISTRATOR
            </label>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Salary:</label>
            <div class="col-sm-10">
                <input type="number" name="salary" value="1000" min="1000" max="20 000" step="100" placeholder="Enter workers salary from 1000 to 20 000" required>
            </div>
        </div>

        <div class=" form-group">
            <label class="control-label col-sm-2">Login of Worker:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="login"
                       placeholder="Enter workers login" required>
            </div>
        </div>


        <div class="form-group">
                <label class="control-label col-sm-2">Password:</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" name="pass"
                           placeholder="Enter password from 8 to 20 any symbols" required>
                </div>
        </div>

        <div class="form-group">
                <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Submit</button>
                </div>
        </div>


    </form>


</div>


</body>
</html>
