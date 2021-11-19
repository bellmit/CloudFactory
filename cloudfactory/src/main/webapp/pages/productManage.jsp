<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: liuyunlong
  Date: 2021/6/30
  Time: 8:15 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>产品管理</title>
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


                <li class="menu-list nav-active"><a href=""><i class="fa fa-shopping-cart"></i> <span>产品管理</span></a>
                    <ul class="child-list">
                        <li  class="active"><a href="productManage.jsp">产品信息</a></li>
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
                <li><a href="#">产品管理</a></li>
                <li  class="active">产品列表</li>
            </ol>
            <h3>产品列表</h3>
        </div>
        <div class="wrapper">
            <div class="panel">
                <div class="panel-body">
                    <form action="${pageContext.request.contextPath}/user/" method="post" >

                        <div class="form1 searchbox">
                            <ul class="row">
                                <li class="col-xs-3"> <span>产品名称：</span>
                                    <input type="text" class="form-control">
                                </li>
                                <li class="col-xs-4" style="padding-left: 0"> <a href="#" class="btn btn-primary">查询</a> </li>
                            </ul>
                        </div>

                    </form>

                    <%--                        来一个空行--%>
                    <div class="line"></div>
                    <div class="clearfix">
                        <div class="pull-left">
<%--                            解决他！！！！！！！！！！！！！！！--%>
<%--                                                        <a href="../agencyRegister.jsp" class="btn btn-primary" >新增产品</a>--%>
    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#myModal2">新增产品</a>


                        </div>
                        <div class="pull-right"></div>
                    </div>
                    <table class="table m-t-20">
                        <thead>
                        <tr>
                            <th>产品ID</th>
                            <th>产品名</th>
                            <th>产品类型</th>
                            <th>产品规格</th>
                            <th>产品简介</th>
                            <th>更新</th>
                            <th>删除</th>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach items="${productList}" var="product">
                            <tr>
                                <td>${product.productID}</td>
                                <td>${product.productName}</td>
                                <td>${product.productType}</td>
                                <td>${product.productSpecifications}</td>
                                <td>${product.productDetail}</td>
                                <td>
                                    <div>
                                        <form hidden method="get" action="${pageContext.request.contextPath}/user/updateProductPage" style="display: inline-block">
<%--                                            <input type="hidden" value="updateProduct" name="function">--%>
                                            <input type="hidden" value="${product.productID}" name="productID">
                                            <input  type="image" src="img/operation.png" style="display:inline-block;width: 15px;height: 15px;position: relative; left:-5px;">
                                        </form>
                                    </div>
                                </td>
                                <td>
                                    <div>
                                        <form hidden method="get" action="${pageContext.request.contextPath}/user/deleteProduct" style="display: inline-block">
<%--                                            <input type="hidden" value="deleteProduct" name="function">--%>
                                            <input type="hidden" value="${product.productID}" name="deleteID">
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



<form action="${pageContext.request.contextPath}/user/addProduct" method="post" >
<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2">
    <div class="modal-dialog" role="document" style="width: 500px;">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel2">新增产品</h4>
            </div>
<%--                <input type="hidden" name="function" value="addProduct">--%>
            <div class="modal-body">
                <div class="form1">
                    <ul class="row">
                        <li class="col-xs-12"> <span>产品名称：</span><input type="text" class="form-control"  name="productName"></li>
                        <li class="col-xs-12"> <span>产品类型：</span> <select class="form-control" name="productType">
                            <c:forEach items="${productTypeList}" var="productType">
                                <option value="${productType.productType}">${productType.productType}</option>
                            </c:forEach>

                        </select></li>
                        <li class="col-xs-12"> <span>产品规格：</span> <input type="text" class="form-control"  name="productSpecifications"></li>
                        <li class="col-xs-12"> <span>产品简介：</span> <input type="text" class="form-control"  name="productDetail"></li>
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
