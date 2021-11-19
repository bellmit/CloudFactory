<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: liuyunlong
  Date: 2021/6/30
  Time: 8:15 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>订单管理</title>
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

                <li class="menu-list "><a href=""><i class="fa fa-users"></i> <span>用户管理</span></a>
                    <ul class="child-list">
                        <li ><a href="userManage.jsp">用户列表</a></li>
                        <li><a href="factoryManage.jsp">云工厂管理</a></li>
                        <li><a href="agencyManage.jsp">经销商管理</a></li>
                    </ul>
                </li>


                <li class="menu-list nav-active"> <a href=""><i class="fa fa-drivers-license"></i> <span>订单管理</span></a>
                    <ul class="child-list">
                        <li  class="active"><a href="orderList.jsp">订单信息</a></li>
                    </ul>
                </li>
                <li class="menu-list "> <a href=""><i class="fa fa-file-text"></i> <span>设备管理</span></a>
                    <ul class="child-list">
                        <li><a href="hireEquipmentManage.jsp">租用设备管理</a></li>
                        <li><a href="EquipmentList.jsp">设备信息</a></li>
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-shopping-cart"></i> <span>投标管理</span></a>
                    <ul class="child-list">
                        <li><a href="bidList.jsp">投标信息</a></li>
                    </ul>
                </li>
                <li class="menu-list"><a href=""><i class="fa fa-shopping-cart"></i> <span>产品管理</span></a>
                    <ul class="child-list">
                        <li><a href="productManage.jsp">产品信息</a></li>
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
                        <li> <a href="javascript:;" class="btn btn-default  dropdown-toggle"> <i class="fa  fa-cogs"></i>账号设置 </a> </li>
                        <li> <a href="javascript:;" class="btn btn-default  dropdown-toggle"> <i class="fa fa-sign-out"></i>退出登录 </a> </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="page-head">
            <ol class="breadcrumb">
                <li><a href="#">订单管理</a></li>
                <li  class="active">订单列表</li>
            </ol>
            <h3>订单列表</h3>
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
                    <div class="clearfix">
                        <div class="pull-left">
<%--                            <a href="../agencyRegister.jsp" class="btn btn-primary" >新增云工厂</a>--%>


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
                        </tr>
                     </thead>

                        <tbody>
                        <c:forEach items="${orderList}" var="order">
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




<%--                    <div class="page clearfix">--%>
<%--                        <div class="pull-left">共 400 条记录 第 1 / 80 页</div>--%>
<%--                        <div class="pull-right">--%>
<%--                            <nav aria-label="..." class="pull-left">--%>
<%--                                <ul class="pagination">--%>
<%--                                    <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>--%>
<%--                                    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>--%>
<%--                                    <li><a href="#">2</a></li>--%>
<%--                                    <li><a href="#">3</a></li>--%>
<%--                                    <li><a href="#">4</a></li>--%>
<%--                                    <li><a href="#">5</a></li>--%>
<%--                                    <li><a href="#" aria-label="Next"><span aria-hidden="true">»</span></a></li>--%>
<%--                                </ul>--%>
<%--                            </nav>--%>
<%--                            <div class="pull-left p-r-20  p-l-20">--%>
<%--                                <select class="form-control">--%>
<%--                                    <option>10条每页</option>--%>
<%--                                </select>--%>
<%--                            </div>--%>
<%--                            <div class="pull-left">跳至--%>
<%--                                <input type="text" value="5" class="form-control">--%>
<%--                                页</div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
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
        // ,range: true
        ,theme: '#1890ff'
    });
</script>
</body>
</html>
