//start表格数据获取
setTable($("#start-table"), "/problem/findStageProblem/1");
//practice表格数据获取
setTable($("#practice-table"), "/problem/findStageProblem/2");
//master表格数据获取
setTable($("#master-table"), "/problem/findStageProblem/3");

////phones
var phoneid = $("#phoneid").val();
setTable($("#phonedetail-table"), "/phone/" + phoneid);

//phones
setTable($("#phonesummary-table"), "/phone/phonesummary");


//获取指定目录下的题目
var cateid = $("#cateid").val();
setTable($("#cate-table"), "/problem/findCateProblem/" + cateid);


//表格数据获取
function setTable(obj, url) {
    obj.bootstrapTable({
        url: url,//这里配置请求链接
        method: 'post',
        cache: true,					   //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: true,				   //是否显示分页（*）
        queryParams: queryParams,//传递参数（*）
        sidePagination: "server",		   //分页方式：client客户端分页，server服务端分页（*）
        search: !0,
        striped: true,
        showRefresh: !0,
        pageNumber: 1,					   //初始化加载第一页，默认第一页
        pageSize: 15,
        pageList: [15, 30, 50, 100],
        showColumns: !0,
        iconSize: "outline",
        icons: {refresh: "glyphicon-repeat", columns: "glyphicon-list"},
        uniqueId: "id"
    });
}


////手机详细信息
//$("#phonedetail-table").bootstrapTable({
//    url: "/phone/phonedetails",//这里配置请求链接
//    method: 'post',
//    cache: true,					   //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
//    pagination: true,				   //是否显示分页（*）
//    queryParams: queryParams,//传递参数（*）
//    sidePagination: "server",		   //分页方式：client客户端分页，server服务端分页（*）
//    search: !0,
//    striped: true,
//    showRefresh: !0,
//    pageNumber: 1,					   //初始化加载第一页，默认第一页
//    pageSize: 10,
//    pageList: [20, 30, 50, 100],
//    showColumns: !0,
//    iconSize: "outline",
//    icons: {refresh: "glyphicon-repeat", columns: "glyphicon-list"},
//    uniqueId: "id"
//});


//给model添加了一个跳转的link，可以方便查找手机详细信息
function addlinktomodel(value, row, index) {
    http://www.websiteaddress.com&quot;>Name of Website</a>
        return [

            '<a href="http://www.gsmarena.com/results.php3?sQuickSearch=yes&sName=' + row.model + '" target="_blank">' + value + '</a>'

        ].join('');
}


//排名请求
$("#rank-table").bootstrapTable({
    url: "/user/userRank",//这里配置请求链接
    method: 'post',
    cache: true,					   //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
    pagination: true,				   //是否显示分页（*）
    queryParams: queryParams,//传递参数（*）
    sidePagination: "server",		   //分页方式：client客户端分页，server服务端分页（*）
    search: !0,
    striped: true,
    showRefresh: !0,
    pageNumber: 1,					   //初始化加载第一页，默认第一页
    pageSize: 10,
    pageList: [10, 20, 30, 50, 100],
    showColumns: !0,
    iconSize: "outline",
    icons: {refresh: "glyphicon-repeat", columns: "glyphicon-list"},
    uniqueId: "id"
});


//提交请求
$("#submit-table").bootstrapTable({
    url: "/problem/sub",//这里配置请求链接
    method: 'post',
    cache: true,					   //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
    pagination: true,				   //是否显示分页（*）
    queryParams: queryParams,//传递参数（*）
    //sidePagination: "client",		   //分页方式：client客户端分页
    sidePagination: "server",		   //分页方式： server服务端分页（*）
    search: !0,
    striped: true,
    showRefresh: !0,
    pageNumber: 1,					   //初始化加载第一页，默认第一页
    pageSize: 20,
    pageList: [20, 30, 50, 100],
    showColumns: !0,
    iconSize: "outline",
    icons: {refresh: "glyphicon-repeat", columns: "glyphicon-list"},
    uniqueId: "id",


});

function phonedetailformater(value, row, index) {
    return [
        '<div>',
        '<a href="/phones/phonedetails/?id=' + row.id + '" target="_blank"> MORE </a>',
        '</div>'
    ].join('');
}
//左边是从PageUtil来，右面是从bootstrap来
function queryParams(params) {
    return {
        limit: params.limit,
        offset: params.offset,
        order: params.order,
        sortName: params.sort,
        search: params.search
    };
}
//给出语言id显示对应语言
function setlanguage(value, row, index) {
    switch (value) {
        case 3:
            value = 'C';
            break;
        case 4:
            value = 'C++';
            break;
        case 5:
            value = 'Java';
    }
    return [
        '<div>',
        '<span>' + value + '</span>',
        '</div>'
    ].join('');
}

//设置判题显示
function setverdict(value, row, index) {
    var msg = 'text-danger';
    switch (value) {
        case 1:
            value = 'Compiling';
            break;
        case 2:
            value = 'Compiling';
            break;
        case 3:
            value = '编译错误';
            break;
        case 4:
            value = 'Compiling';
            break;
        case 5:
            value = 'Accepted';
            msg = 'text-success';
            break;
        case 6:
            value = '答案错误';
            break;
        case 7:
            value = '运行错误';
            break;
        case 8:
            value = '超时';
            break;
        case 9:
            value = '内存超出';
            break;
        case 10:
            value = '格式错误';
            break;
        case 11:
            value = '输出错误';
            break;
        case 12:
            value = '非法函数';
            break;
        case 13:
            value = '竞赛已结束';
            break;
        case 14:
            value = '未知错误';
            break;
    }
    return [
        '<div>',
        '<span class="' + msg + '">' + value + '</span>',
        '</div>'
    ].join('');
}
//设置内存显示
function setmemory(value, row, index) {
    return [
        '<div>',
        '<span>' + toDecimal(value / 1000) + '</span>',
        '</div>'
    ].join('');
}
//点击查看功能
function setcontest(value, row, index) {
    if (value == 0) {
        value = '无';
    }
    return [
        '<div>',
        '<span>' + value + '</span>',
        '</div>'
    ].join('');
}
//增加题目title点击功能
function problemtitle(value, row, index) {
    return [
        '<div>',
        '<a href="/problem/' + row.problem_id + '" target="_blank">' + value + '</a>',
        '</div>'
    ].join('');
}
//更改题目Ratio
function problemRatio(value, row, index) {
    return [
        '<div>',
        '<span>' + toDecimal(row.accepted / row.submit) * 100 + '%</span>',
        '</div>'
    ].join('');
}
//更改题目acsubmit
function problemacsubmit(value, row, index) {
    return [
        '<div>',
        '<span>(' + row.accepted + '/' + row.submit + ')</span>',
        '</div>'
    ].join('');
}
//更改题目用户的radio
function tableuserradio(value, row, index) {
    var submit = row.submit;
    if (submit == 0) {
        submit = 1;
    }
    return [
        '<div>',
        '<span>' + toDecimal(row.solved / submit) * 100 + '%</span>',
        '</div>'
    ].join('');
}
//排名id自增功能
function tablerankid(value, row, index) {
    return [
        '<div>',
        '<span>' + (index + 1) + '</span>',
        '</div>'
    ].join('');
}
//用户名点击功能
function tableusername(value, row, index) {

    if (value == '佚名') {
        value = row.username;
    }
    return [
        '<div>',
        '<a href="/user/' + row.id + '" target="_blank">' + value + '</a>',
        '</div>'
    ].join('');
}


//用户博客点击功能
function tableuserblog(value, row, index) {
    return [
        '<div>',
        '<a href="' + row.blog + '" target="_blank" title="' + value + '">' + value.substring(0, 14) + '</a>',
        '</div>'
    ].join('');
}
//功能：将浮点数四舍五入，取小数点后2位
function toDecimal(x) {
    var f = parseFloat(x);
    if (isNaN(f)) {
        return;
    }
    f = Math.round(x * 100) / 100;
    return f;
}




