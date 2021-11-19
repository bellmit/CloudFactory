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
                        <li ><a href="AgencyOrderList.jsp">我的订单信息</a></li>
                        <li class="active"><a href="AgencyOrderManage.jsp">订单管理</a></li>
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

                                <li class="col-xs-4" style="padding-left: 0"> <a href="#" class="btn btn-primary">查询</a> </li>
                            </ul>
                        </div>

                    </form>
                    <div class="line"></div>

                    <div class="clearfix">
                        <div class="pull-left">

                            <a data-toggle="modal" data-target="#myModal2" class="btn btn-primary" >发布订单</a>

                        </div>
                        <div class="pull-right"></div>
                    </div>

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
                            <th bgcolor="#00bfff">确认收货</th>

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
                                <td>
                                    <div>
                                        <form hidden method="get" action="${pageContext.request.contextPath}/agency/confirm" style="display: inline-block">
                                            <input type="hidden" value="${order.orderID}" name="orderID">
                                            <input  type="image" src="img/operation.png" style="display:inline-block;width: 15px;height: 15px;position: relative; left:-5px;">
                                        </form>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </div>
</section>



<!-- Modal -->
<form action="${pageContext.request.contextPath}/agency/addOrder" method="post" >
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
        <div class="modal-dialog" role="document" style="width: 500px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel2">发布订单</h4>
                </div>
                <div class="modal-body">
                    <div class="form1">
                        <ul class="row">
                            <li class="col-xs-12"> <span>产品名称：</span> <select class="form-control" name="productID">
                                <c:forEach items="${productList}" var="product">
                                    <option value="${product.productID}">${product.productName}</option>
                                </c:forEach>

                            </select></li>

                            <li class="col-xs-12"> <span>订单数量：</span> <input type="text" class="form-control"  name="orderQuantity"></li>
                            <div class="form-group">
                                <span style="font-size: 15px;font-family: 黑体;">订单交付日期：</span>
                                <input id="deliveryDate"  name="deliveryDate"  class="input-material" type="datetime-local"  >
                            </div>
                            <div class="form-group">
                                <span style="font-size: 15px;font-family: 黑体;">竞标截止时间：</span>
                                <input id="bidDeadline"  name="bidDeadline"  class="input-material" type="datetime-local" >
                            </div>

                            <li class="col-xs-12"> <span>收货人：</span> <input type="text" class="form-control"  name="receivePeople"></li>
                            <li class="col-xs-12"> <span>收货地址：</span> <input type="text" class="form-control"  name="receiveAddress"></li>
                            <li class="col-xs-12"> <span>联系方式：</span> <input type="text" class="form-control"  name="receiveContact"></li>
                            <input type="hidden" value="已发布" name="orderState">

                        </ul>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="submit" class="btn btn-primary" >新增</button>
                </div>


            </div>
        </div>
    </div>
</form>


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

