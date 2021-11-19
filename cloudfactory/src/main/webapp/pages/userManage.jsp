<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: liuyunlong
  Date: 2021/6/30
  Time: 8:15 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户管理</title>
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

                <li class="menu-list nav-active"><a href=""><i class="fa fa-users"></i> <span>用户管理</span></a>
                    <ul class="child-list">
                        <li  class="active"><a href="userManage.jsp">用户列表</a></li>
                        <li><a href="factoryManage.jsp">云工厂管理</a></li>
                        <li><a href="agencyManage.jsp">经销商管理</a></li>
                    </ul>
                </li>


                <li class="menu-list "> <a href=""><i class="fa fa-drivers-license"></i> <span>订单管理</span></a>
                    <ul class="child-list">
                        <li ><a href="orderList.jsp">订单信息</a></li>
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
                <li><a href="#">用户管理</a></li>
                <li  class="active">用户列表</li>
            </ol>
            <h3>用户列表</h3>
        </div>
        <div class="wrapper">
            <div class="panel">
                <div class="panel-body">

                    <div class="clearfix">
                        <div class="pull-left">
                            <a data-toggle="modal" data-target="#myModal1" class="btn btn-primary" >新增云工厂</a>
                            <a data-toggle="modal" data-target="#myModal2" class="btn btn-primary" >新增经销商</a>

                        </div>
                        <div class="pull-right"></div>
                    </div>
                    <table class="table m-t-20">
                        <thead>
                        <tr>

                            <th>用户ID</th>
                            <th>用户账号</th>
                            <th>用户呢称</th>
                            <th>用户类型</th>
                            <%--                            <th>操作</th>--%>
                        </tr>
                        </thead>


                        <tbody>
                    <c:forEach items="${userList}" var="user">
                        <tr>
                        <td>${user.id}</td>
                        <td>${user.account}</td>
                        <td>${user.name}</td>
                        <td>${user.type}</td>
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




<form action="/untitled_war_exploded/register" method="post" >
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
        <div class="modal-dialog" role="document" style="width: 500px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel2">新增经销商</h4>
                </div>
                <input type="hidden" name="function" value="agencyRegister">
                <input type="hidden" name="type" class="type" id="type" value="经销商">
                <div class="modal-body">
                    <div class="form1">
                        <ul class="row">
                            <li class="col-xs-12"> <span>注册账号：</span><input type="text" class="form-control"  name="account"></li>
                            <li class="col-xs-12"> <span>密码：</span><input type="password" class="form-control"  name="password"></li>
                            <li class="col-xs-12"> <span>用户名：</span> <input type="text" class="form-control"  name="name"></li>
                            <li class="col-xs-12"> <span>联系方式：</span> <input type="text" class="form-control"  name="contact"></li>
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



<form action="/untitled_war_exploded/register" method="post" >
    <div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
        <div class="modal-dialog" role="document" style="width: 500px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel1">新增云工厂</h4>
                </div>
                <input type="hidden" name="function" value="factoryRegister">
                <input type="hidden" name="type" class="type"  value="云工厂">
                <div class="modal-body">
                    <div class="form1">
                        <ul class="row">
                            <li class="col-xs-12"> <span>注册账号：</span><input type="text" class="form-control"  name="account"></li>
                            <li class="col-xs-12"> <span>密码：</span><input type="password" class="form-control"  name="password"></li>
                            <li class="col-xs-12"> <span>工厂名：</span> <input type="text" class="form-control"  name="factoryName"></li>
                            <li class="col-xs-12"> <span>联系方式：</span> <input type="text" class="form-control"  name="contact"></li>
                            <li class="col-xs-12"> <span>负责人：</span> <input type="text" class="form-control"  name="principal"></li>
                            <li class="col-xs-12"> <span>工厂简介：</span> <input type="text" class="form-control"  name="detail"></li>
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
        // ,range: true
        ,theme: '#1890ff'
    });
</script>
</body>
</html>
