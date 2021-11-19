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
    <title>租用设备管理</title>
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


                <li class="menu-list "> <a href=""><i class="fa fa-drivers-license"></i> <span>订单管理</span></a>
                    <ul class="child-list">
                        <li ><a href="orderList.jsp">订单信息</a></li>
                    </ul>
                </li>
                <li class="menu-list nav-active"> <a href=""><i class="fa fa-file-text"></i> <span>设备管理</span></a>
                    <ul class="child-list">
                        <li  class="active"><a href="hireEquipmentManage.jsp">租用设备管理</a></li>
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
                <li><a href="#">租用设备管理</a></li>
                <li  class="active">租用设备列表</li>
            </ol>
            <h3>租用设备列表</h3>
        </div>
        <div class="wrapper">
            <div class="panel">
                <div class="panel-body">
                    <form action="${pageContext.request.contextPath}/user/" method="post" >

                        <div class="form1 searchbox">
                            <ul class="row">
                                <li class="col-xs-3"> <span>设备名称：</span>
                                    <input type="text" class="form-control">
                                </li>
                                <li class="col-xs-4" style="padding-left: 0"> <a href="#" class="btn btn-primary">查询</a> </li>
                            </ul>
                        </div>

                    </form>


                    <div class="line"></div>

                    <div class="clearfix">
                        <div class="pull-left">

                            <a data-toggle="modal" data-target="#myModal2" class="btn btn-primary" >新增平台租用设备</a>

                        </div>
                        <div class="pull-right"></div>
                    </div>
                    <table class="table m-t-20">
                        <thead>
                        <tr>
                            <th>设备编号</th>
                            <th>设备名</th>
                            <th>设备类型</th>
                            <th>设备状态</th>
                            <th>租用状态</th>
                            <th>所属工厂账号</th>
                            <th>更新</th>
                            <th>删除</th>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach items="${hireEquipmentList}" var="hireEquipment">
                            <tr>
                                <td>${hireEquipment.equipmentID}</td>
                                <td>${hireEquipment.name}</td>
                                <td>${hireEquipment.type}</td>
                                <td>${hireEquipment.equipmentState}</td>
                                <td>${hireEquipment.hireState}</td>
                                <td>${hireEquipment.belongFactoryAccount}</td>
                                <td>
                                    <div>
                                        <form hidden method="get" action="${pageContext.request.contextPath}/user/updateHireEquipmentPage" style="display: inline-block">
<%--                                            <input type="hidden" value="updateHireEquipment" name="function">--%>
                                            <input type="hidden" value="${hireEquipment.equipmentID}" name="operateID">
                                            <input  type="image" src="img/operation.png" style="display:inline-block;width: 15px;height: 15px;position: relative; left:-5px;">
                                        </form>
                                    </div>
                                </td>

                                <td>

                            <%--这里得加入判断的是不是，就是如果你已经借出去了就不能再操作了是不是--%>
                                    <div>
                                        <form hidden method="get" action="${pageContext.request.contextPath}/user/deleteHireEquipment" style="display: inline-block">
<%--                                            <input type="hidden" value="deleteHireEquipment" name="function">--%>
                                            <input type="hidden" value="${hireEquipment.equipmentID}" name="deleteID">
                                            <input  type="image" src="img/delete.png" style="display:inline-block;width: 15px;height: 15px;position: relative; left:-5px;">
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
<form action="${pageContext.request.contextPath}/user/addHireEquipment" method="post" >
    <div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
        <div class="modal-dialog" role="document" style="width: 500px;">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel2">新增平台租用设备</h4>
                </div>
<%--                <input type="hidden" name="function" value="addHireEquipment">--%>
                <input type="hidden" name="type" class="type" id="type" value="经销商">
                <div class="modal-body">
                    <div class="form1">
                        <ul class="row">
                            <li class="col-xs-12"> <span>设备名称：</span><input type="text" class="form-control"  name="name"></li>
                            <li class="col-xs-12"> <span>设备类型：</span> <select class="form-control" name="productType">
                                <c:forEach items="${equipmentTypeList}" var="equipmentType">
                                    <option value="${equipmentType.equipmentType}">${equipmentType.equipmentType}</option>
                                </c:forEach>

                            </select></li>
                            <li class="col-xs-12"> <span>设备规格：</span> <input type="text" class="form-control"  name="specifications"></li>
                            <li class="col-xs-12"> <span>设备描述：</span> <input type="text" class="form-control"  name="detail"></li>
                            <li class="col-xs-12"> <span>设备状态：</span> <select class="form-control" name="equipmentState">
                                <option value="正常">正常</option>
                                <option value="异常">异常</option>
                            </select></li>
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
