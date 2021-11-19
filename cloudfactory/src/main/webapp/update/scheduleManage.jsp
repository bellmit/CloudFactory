<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单排产</title>
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
                                <h1>订单排产</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Form Panel    -->
                <div class="col-lg-6 bg-white">
                    <div class="form d-flex align-items-center">
                        <div class="content">
                            <form method="get" action="${pageContext.request.contextPath}/factory/scheduleManage">
                                <div class="form-group">
                                    <span style="font-size: 15px;font-family: 黑体;">选择设备&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                    <select name="equipmentID" id="equipmentID" style="font-family: 黑体;font-size: 15px" >
                                        <c:forEach items="${factoryEquipmentList}" var="factoryEquipment">
                                            <option value="${factoryEquipment.equipmentID}">${factoryEquipment.name}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <span style="font-size: 15px;font-family: 黑体;">开始时间</span>
                                    <input id="startTime"  name="startTime"  class="input-material" type="datetime-local"  >
                                </div>
                                <div class="form-group">
                                    <span style="font-size: 15px;font-family: 黑体;">结束时间</span>
                                    <input id="endTime"  name="endTime"  class="input-material" type="datetime-local" >
                                </div>
                                <div class="form-group">
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