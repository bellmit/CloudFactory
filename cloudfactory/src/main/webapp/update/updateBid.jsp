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
                                <h1>修改职位信息</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Form Panel    -->
                <div class="col-lg-6 bg-white">
                    <div class="form d-flex align-items-center">
                        <div class="content">
                            <form method="get" action="/HRsystem_war_exploded/job">
                                <div class="form-group">
                                    <span style="font-size: 15px;font-family: 黑体;">职位名称</span>
                                    <input id="jobname" class="input-material" type="text" name="jobname" value="${job.jobname}">
                                </div>
                                <div class="form-group">
                                    <span style="font-size: 15px;font-family: 黑体;">薪水</span>
                                    <input id="salary"  name="salary"  class="input-material" type="number" value="${job.salary}" >
                                </div>
                                <div class="form-group">
                                    <span style="font-size: 15px;font-family: 黑体;">职位id</span>
                                    <input id="jobid"  name="jobid"  class="input-material" type="number" value="${job.jobid}" >
                                </div>
                                <div class="form-group">
                                    <span style="font-size: 15px;font-family: 黑体;">权限</span>
                                    <input id="authority"  name="authority"  class="input-material" type="number" value="${job.authority}" >
                                </div>
                                <div class="form-group">
                                    <input type="hidden" name="updateId" value="${job.jobid}">
                                    <input type="hidden" name="function" value="updateJob">
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