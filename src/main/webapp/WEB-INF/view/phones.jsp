<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>排名</title>
    <link rel="shortcut icon" href="${path}/static/images/favicon.ico">
    <link href="${path}/static/css/bootstrap.min.css" rel="stylesheet">
    <link href="${path}/static/css/flat-ui.min.css" rel="stylesheet">
    <link href="${path}/static/css/font-awesome.min.css" rel="stylesheet">
    <link href="${path}/static/css/bootstrap-table.min.css" rel="stylesheet">
    <link href="${path}/static/css/app.css" rel="stylesheet">
</head>
<body>
<!--头部开始-->
<header>

</header>

<!--通知栏结束-->
<!--主体开始-->

<div class="col-md-9">
    <!--主面板-->
    <section class="animated fadeInLeft">
        <p class="page-text" style="text-indent: 2em;">
            Show the details of phones
        </p>
        <h4 class="text-center">排名列表</h4>
        <table class="table-bordered text-center" width="90%" data-toggle="table" id="phonedetail-table">
            <thead>
            <tr>
                <th class="col-xs-1" data-sortable="true" data-field="id" data-align="center">ID</th>
                <th class="col-xs-5" data-field="model">model</th>
                <th class="col-xs-3" data-field="brand">brand</th>
                <th class="col-xs-1" data-field="imei" data-align="center">imei</th>
                <th class="col-xs-2" data-field="uuid" data-align="center">uuid</th>
            </tr>
            </thead>
            <tbody>

            </tbody>
        </table>

    </section>
</div>

<!--主体结束-->


<!--script引入-->
<script src="${path}/static/js/jquery.min.js"></script>
<script src="${path}/static/js/flat-ui.min.js"></script>
<script src="${path}/static/js/bootstrap-table.min.js"></script>
<script src="${path}/static/js/bootstrap-table-zh-CN.min.js"></script>
<script src="${path}/static/js/app.js"></script>
<script src="${path}/static/js/table-demo.js"></script>
</body>
</html>