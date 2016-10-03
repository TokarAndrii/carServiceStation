<%--suppress ALL --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>



    <title>Add Service for client Page!!!!</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
    <script type="text/javascript" src="_js/bootstrap-datepicker.js"></script>




    <%--<script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.4/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>--%>
    <script type="text/javascript">
        $("#datetimepicker").datetimepicker({
            format: "dd MM yyyy - hh:ii",
            autoclose: true,
            todayBtn: true,
            startDate: "2013-02-14 10:00",
            minuteStep: 10
        });
    </script>


   <%-- <script type="text/javascript">
        $(".form_datetime").datetimepicker({
            format: "dd MM yyyy - hh:ii",
            autoclose: true,
            todayBtn: true,
            startDate: "2013-02-14 10:00",
            minuteStep: 10
        });
    </script>--%>

</head>
<body>
<div id="tokar_container_header">
    <p class="headerRegister">
        <span id="registerClientForm">Adding Service for client</span>
                <span><img src="images/serviceCenterLogo.jpg" class="img-thumbnail" alt="logo"
                           style="width: 85px; height: 85px;float:right"/></span>
    </p>
</div>
<br>
<br>
<br>

<div id="serviceForClientServAddForm">
    <form lass="form-horizontal" role="form" action="addServiceForClient" method="post">
        <div class="form-group">
            <label class="control-label col-sm-2">Type of service or goods:</label>
            <div class="col-sm-10">
                <select class="typeOfService">
                    <optgroup label="SERVICES">
                        <option>Diagnostic</option>
                        <option>Change consumables</option>
                        <option>Change tires</option>
                        <option>repair motor</option>
                        <option>repair chassis</option>
                        <option>repair carbody</option>
                        <option>repair brakes</option>
                        <option>repair clutch</option>
                        <option>repair gearBox</option>
                        <option>other kind of repairing</option>
                    </optgroup>
                    <optgroup label="GOODS IN STORE">
                        <option>Spare parts</option>
                        <option>Consumables</option>
                        <option>Tires</option>
                        <option>Souvenirs</option>
                    </optgroup>
                </select>
            </div>
        </div>
        <br>
        <br>
        <div class="form-group">
            <label class="control-label col-sm-2">Srart Date:</label>
            <div class="control-label col-sm-2">
                <div class='input-group date' id='datetimepicker'>
                    <input type='text' class="form-control" />
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
                <%--<div class="input-append date form_datetime" data-date="2013-02-21T15:25:00Z">
                    <input size="16" type="text" value="" readonly>
                    <span class="add-on"><i class="icon-remove"></i></span>
                    <span class="add-on"><i class="icon-calendar"></i></span>
                </div>--%>
            </div>
        </div>

        <br>



        <div class="form-group">
            <label class="control-label col-sm-2">Finish Date:</label>
            <div class="col-sm-10">
                <div class="input-append date form_datetime" data-date="2013-02-21T15:25:00Z">
                    <input size="16" type="text" value="" readonly name="finishDate">
                    <span class="add-on"><i class="icon-remove"></i></span>
                    <span class="add-on"><i class="icon-calendar"></i></span>
                </div>
            </div>
        </div>


        <br>
        <div class="form-group">
            <label class="control-label col-sm-2">Price:</label>
            <div class="col-sm-10">
                <input type="number" name="price" placeholder="Enter price" required>
            </div>
        </div>
        <br>
        <br>


        <div class=" form-group">
            <label class="control-label col-sm-2">Clients ID:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="clientID"
                       placeholder="Enter Clients ID" required>
            </div>

        </div>
        <br>
        <br>
        <div class=" form-group">
            <label class="control-label col-sm-2">Workers ID:</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="workers"
                       placeholder="Enter Workers ID" required>
            </div>
        </div>
        <br>
        <br>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">Submit</button>
            </div>
        </div>

    </form>


</div>
</body>
</html>
