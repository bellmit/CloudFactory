<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>设备信息修改</title>
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/style.default.css" id="theme-stylesheet">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                                <h1>修改设备信息</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Form Panel    -->
                <div class="col-lg-6 bg-white">
                    <div class="form d-flex align-items-center">
                        <div class="content">
                            <form method="get" action="${pageContext.request.contextPath}/factory/updateEquipment">
                                <input type="hidden" name="equipmentID" value="${factoryEquipment.equipmentID}">
                                <div class="form-group">
                                    <span style="font-size: 15px;font-family: 黑体;">设备名称&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                    <input id="name" class="input-material" type="text" name="name" value="${factoryEquipment.name}" >
                                </div>

                                <div class="form-group">
                                    <span style="font-size: 15px;font-family: 黑体;">设备类型&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                    <select name="type" id="type" style="font-family: 黑体;font-size: 15px" value="${factoryEquipment.type}">
                                        <c:forEach items="${equipmentTypeList}" var="equipmentType">
                                            <option value="${equipmentType.getEquipmentType()}">${equipmentType.getEquipmentType()}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <span style="font-size: 15px;font-family: 黑体;">设备规格&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                    <input id="specifications" class="input-material" type="text" name="specifications" value="${factoryEquipment.name}" >
                                </div>
                                <div class="form-group">
                                    <span style="font-size: 15px;font-family: 黑体;">设备描述&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                    <input id="detail" class="input-material" type="text" name="detail" value="${factoryEquipment.detail}" >
                                </div>

                                <div class="form-group">
                                    <span style="font-size: 15px;font-family: 黑体;">设备状态&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</span>
                                    <select name="equipmentState" id="equipmentState" style="font-family: 黑体;font-size: 15px" value="正常">
                                        <option value="正常">正常</option>
                                        <option value="异常">异常</option>
                                    </select>
                                </div>

                                <div class="form-group">
                                    <input  type="submit" class="btn btn-primary"  style="font-size: 15px;font-family: 黑体;position: relative;display: inline" />
                                    <input  type="reset" class="btn btn-primary" style="font-size: 15px;font-family: 黑体;position: relative;left:30px;display: inline" />
                                    <a href="empManage.jsp" style="font-size: 15px;font-family: 黑体;position: relative;top: 32px;left:60px;text-decoration: none">返回主页</a>
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