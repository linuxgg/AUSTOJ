<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Phones</title>
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

<div class="col-xs-12">
    <!--主面板-->

    <h4 class="text-center"> Details of phones</h4>
    <section class="animated fadeInLeft">
        <table class="table-bordered " width="100%" data-toggle="table" id="phonedetail-table"
               data-query-params-type="limit">

            <thead>
            <tr>
                <th class="col-xs-1" data-sortable="true" data-field="id" data-align="center">ID</th>
                <th class="col-xs-2" data-sortable="true" data-field="brand">brand</th>
                <th class="col-xs-5" data-sortable="true" data-sort-name="model" data-formatter="addlinktomodel"
                    data-field="model">model
                </th>
                <th class="col-xs-2" data-sortable="true" data-field="os">os</th>
                <th class="col-xs-2" data-sortable="true" data-field="zoomsuppported" data-align="center">
                    zoomsuppported
                </th>
                <th class="col-xs-2" data-sortable="true" data-field="videostabilization" data-align="center">
                    videostabilization
                </th>
                <th class="col-xs-2" data-sortable="true" data-field="focusmode" data-align="center">focusmode</th>
                <th class="col-xs-2" data-field="flashmode" data-align="center">flashmode</th>
                <th class="col-xs-2" data-field="previewsize" data-align="center">previewsize</th>
                <th class="col-xs-2" data-field="details" data-align="center">details</th>
                <%--<th class="col-xs-2" data-field="details" data-align="center">details</th>--%>
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