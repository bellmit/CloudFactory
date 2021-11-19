<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>职位信息修改</title>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/style.default.css" id="theme-stylesheet">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <script src="/js/md5.js"></script>
</head>
<body>
<div class="page login-page">
    <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow" style="width: 800px;margin: 0 auto;">
            <div class="row" style="height: 500px">
                <!-- Logo & Information Panel-->
                <div class="col-lg-6">
                    <div class="info d-flex align-items-center">
                        <div class="content">
                            <div class="logo">
                                <h1>投标</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Form Panel    -->
                <div class="col-lg-6 bg-white">
                    <div class="form d-flex align-items-center">
                        <div class="content">
                            <form method="get" action="${pageContext.request.contextPath}/factory/orderBid">
                                <div class="form-group">
                                    <span style="font-size: 15px;font-family: 黑体;">竞标价格(¥)</span>
                                    <input id="bidPrice"  name="bidPrice"  class="input-material" type="number"  >
                                </div>
                                <div class="form-group">
<%--                                    这里传输一个bidID--%>
                                    <input  type="submit" class="btn btn-primary"  style="font-size: 15px;font-family: 黑体;position: relative;top: 30px;display: inline" />
                                    <input  type="reset" class="btn btn-primary" style="font-size: 15px;font-family: 黑体;position: relative;top: 30px;left:30px;display: inline" />
                                    <a href="jobManage.jsp" style="font-size: 15px;font-family: 黑体;position: relative;top: 32px;left:60px;text-decoration: none">返回主页面</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>