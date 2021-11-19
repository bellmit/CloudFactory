<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: liuyunlong
  Date: 2021/6/30
  Time: 7:30 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>智能云工厂管理平台</title>
    <script src="js/jquery.js"></script>
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style-responsive.css" rel="stylesheet">
    <link href="css/default-theme.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/bootstrap-reset.css" rel="stylesheet">
</head>
<body class="sticky-header">




<section>
    <div class="sidebar-left">
        <div class="sidebar-left-info">
            <div class=" search-field"> </div>
            <ul class="nav nav-pills nav-stacked side-navigation">

                <li class="menu-list nav-active"><a href=""><i class="fa fa-users"></i> <span>订单管理</span></a>
                    <ul class="child-list">
                        <li class="active"><a href="AgencyOrderList.jsp">我的订单信息</a></li>
                        <li><a href="AgencyOrderManage.jsp">订单管理</a></li>
                    </ul>
                </li>


                <li class="menu-list "> <a href=""><i class="fa fa-drivers-license"></i> <span>投标管理</span></a>
                    <ul class="child-list">
                        <li ><a href="AgencyBidList.jsp">投标信息</a></li>
                        <li ><a href="AgencyBidManage.jsp">投标管理</a></li>
                    </ul>
                </li>


            </ul>
        </div>
    </div>
    <div class="body-content" >
        <div class="header-section">
            <div class="logo dark-logo-bg"> <a href="index.html"> <img src="img/logo-icon.png" alt="">
                <!--<i class="fa fa-maxcdn"></i>-->
                <span class="brand-name" style="font-size: 15px; font-weight: bold;">智能云工厂平台</span> </a> </div>
            <div class="icon-logo dark-logo-bg hidden-xs hidden-sm"> <a href="index.html"><img src="img/logo-icon.png" alt=""> </a> </div>
            <a class="toggle-btn"><i class="fa fa-outdent"></i></a>
            <div class="kouhao">专注高效管理</div>
            <div class="notification-wrap">
                <div class="right-notification">
                    <ul class="notification-menu">
                        <li  class="dropdown">
                            <a href="javascript:;" data-toggle="dropdown" class="dropdown-toggle" aria-expanded="false"> <i class="fa  fa-cogs"></i> 账号设置  <b class=" fa fa-angle-down"></b></a>

                            <ul role="menu" class="dropdown-menu language-switch">
                                <li>
                                    <a  href="充值活动.html">充值活动</a>
                                    <a  href="修改密码.html">修改密码</a>
                                </li>

                            </ul>

                        </li>



                        <li> <a href="javascript:;" class="btn btn-default  dropdown-toggle"> <i class="fa fa-sign-out"></i>退出登录 </a> </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="page-head">
            <ol class="breadcrumb">
                <li><a href="#">用户管理</a></li>
                <li  class="active">用户信息</li>
            </ol>
            <h3>用户信息概览</h3>
        </div>
        <div class="wrapper">
            <div class="panel">
                <div class="panel-body">
                    <form action="${pageContext.request.contextPath}/user/" method="post" >

                        <div class="form1 searchbox">
                            <ul class="row">
                                <li class="col-xs-3"> <span>订单ID：</span>
                                    <input type="text" class="form-control">
                                </li>
                                <%--                            <li class="col-xs-3"> <span>状态：</span>--%>
                                <%--                                <select  class="form-control">--%>
                                <%--                                    <option>未绑定</option>--%>
                                <%--                                    <option>使用中</option>--%>
                                <%--                                    <option>补卡</option>--%>
                                <%--                                </select>--%>
                                <%--                            </li>--%>
                                <li class="col-xs-4" style="padding-left: 0"> <a href="#" class="btn btn-primary">查询</a> </li>
                            </ul>
                        </div>

                    </form>

                    <%--                        来一个空行--%>
                    <div class="line"></div>

                    <table class="table m-t-20">
                        <thead>
                        <tr>

                            <th>订单ID</th>
                            <th>发布经销商信息</th>
                            <th>产品名</th>
                            <th>订购数量</th>
                            <th>交付日期</th>
                            <th>投标截止日期</th>
                            <th>收货人</th>
                            <th>收货地址</th>
                            <th>联系方式</th>
                            <th>订单状态</th>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${agencyOrderList}" var="order">
                            <tr>
                                <td>${order.orderID}</td>
                                <td>${order.belongAgencyAccount}</td>
                                <td>${order.productName}</td>
                                <td>${order.orderQuantity}</td>
                                <td>${order.deliveryDate}</td>
                                <td>${order.bidDeadline}</td>
                                <td>${order.receivePeople}</td>
                                <td>${order.receiveAddress}</td>
                                <td>${order.recevieContact}</td>
                                <td>${order.orderState}</td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>


                </div>
            </div>
        </div>
    </div>
</section>



<script src="js/bootstrap.js"></script>
<script src="js/echarts.min.js"></script>
<script src="js/scripts.js"></script>
<script src="laydate/laydate.js"></script>
<script>
    lay('#version').html('-v'+ laydate.v);
    laydate.render({
        elem: '#test1'
        ,range: true
        ,theme: '#1890ff'
    });
</script>

<script>


</script>
<div
        style="text-align: center; position: fixed; bottom: 0; width: 100%; line-height: 150%; background: #f5f5f5; border-top: 1px solid #ddd; z-index:10000; font-size: 12px;">
</div>
</body>
</html>

