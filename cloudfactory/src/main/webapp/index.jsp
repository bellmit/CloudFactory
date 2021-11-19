<%--
  Created by IntelliJ IDEA.
  User: liuyunlong
  Date: 2021/7/5
  Time: 3:20 下午
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en" class="no-js">
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>login</title>
    <script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css" href="pages/login/css/normalize.css">
    <link rel="stylesheet" type="text/css" href="pages/login/css/demo.css">
    <!--必要样式-->
    <link rel="stylesheet" type="text/css" href="pages/login/css/component.css">
    <!--[if IE]>
    <script src="js/html5.js"></script>
    <![endif]-->

    <script type="text/javascript">
        function login() {
            var testform=document.getElementById("login-form");
            testform.action="${pageContext.request.contextPath}/user/login";
            testform.submit();
        }
        function registerFactory() {
            var testform=document.getElementById("register-factory-form");
            testform.action="${pageContext.request.contextPath}/register/factoryRegister";
            testform.submit();
        }
        function registerAgency() {
            var testform=document.getElementById("register-agency-form");
            testform.action="${pageContext.request.contextPath}/register/agencyRegister";
            testform.submit();
        }
            function logincehck() {
            $.ajax({
                type: "POST",
                dataType: "json",
                url: "/login",
                data: {
                    loginCode: $("#account").val(),
                    password: $("#password").val()
                },
                success: function (dataResult) {
                    if (!dataResult.success){
                        alert(dataResult.message);
                        return false;
                    }
                    alert("登录成功");
                    window.location.href = "/toAdminPage";
                },
                error: function (XMLHttpResponse) {

                }
            });
        }

    </script>




</head>
<body>
<div class="container demo-1">
    <div class="content">
        <div id="large-header" class="large-header">
            <canvas id="demo-canvas"></canvas>
            <div class="logo_box">
                <form action="${pageContext.request.contextPath}/user/login"  name="f" method="get" id="login-form">
                    <h2>智能云工厂平台登录</h2>
                    <div class="input_outer">
                        <span class="u_user"></span>
                        <input name="account" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账号">
                    </div>
                    <div class="input_outer">
                        <span class="us_uer"></span>
                        <input name="password" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;" value="" type="password" placeholder="请输入密码">
                    </div>
                    <div class="mb2"><a onclick="login()" class="act-but submit" href="javascript:;" style="color: #FFFFFF" >登录</a></div>

                    <a href="" onclick="$('form').slideUp(500,function(){
								$('#register-factory-form').delay(500).slideDown();
							});event.stopPropagation();return false;">注册云工厂账号        </a>

                    <a href="" onclick="$('form').slideUp(500,function(){
								$('#register-agency-form').delay(500).slideDown();
							});event.stopPropagation();return false;">注册经销商账号</a>


                </form>

                <form action="${pageContext.request.contextPath}/register/agencyRegister" name="f" method="get" id="register-agency-form" style="display: none;">
                    <h2>经销商注册</h2>
                    <div class="input_outer">
                        <span class="u_user"></span>
                        <input name="account" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入您的账号">
                    </div>
                    <div class="input_outer">
                        <span class="us_uer"></span>
                        <input name="password" class="text" style="color: #FFFFFF !important" type="password" placeholder="请输入您的用户密码">
                    </div>
                    <div class="input_outer">
                        <span class="u_user"></span>
                        <input name="name" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"  type="text" placeholder="请输入您的用户名">
                    </div>
                    <div class="input_outer">
                        <span class="u_email"></span>
                        <input name="contact" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"  type="text" placeholder="请输入您的联系方式">
                    </div>

                    <div class="mb2"><a onclick="registerAgency()" class="act-but submit" href="javascript:;" style="color: #FFFFFF">注册</a></div>
                    <a href="" onclick="$('form').slideUp(500,function(){
								$('#login-form').delay(500).slideDown();
							});event.stopPropagation();return false;">已有账号?登录</a>
                </form>


                <form action="${pageContext.request.contextPath}/register/factoryRegister" name="f" method="get" id="register-factory-form" style="display: none;">
                    <h2>云工厂注册</h2>
                    <div class="input_outer">
                        <span class="u_user"></span>
                        <input name="account" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入云工厂账号">
                    </div>

                    <div class="input_outer">
                        <span class="us_uer"></span>
                        <input name="password" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"  type="password" placeholder="请输入密码">
                    </div>

                    <div class="input_outer">
                        <span class="u_email"></span>
                        <input name="contact" class="text" style="color: #FFFFFF !important" type="email" placeholder="请输入您的联系方式">
                    </div>
                    <div class="input_outer">
                        <span class="u_email"></span>
                        <input name="principal" class="text" style="color: #FFFFFF !important" type="email" placeholder="请输入云工厂负责人">
                    </div>

                    <div class="input_outer">
                        <span class="u_email"></span>
                        <input name="factoryName" class="text" style="color: #FFFFFF !important" type="email" placeholder="请输入工厂名称">
                    </div>
                    <div class="input_outer">
                        <span class="u_email"></span>
                        <input name="detail" class="text" style="color: #FFFFFF !important" type="email" placeholder="请输入工厂简介">
                    </div>


                    <div class="mb2"><a onclick="registerFactory()" class="act-but submit" href="javascript:;" style="color: #FFFFFF">注册</a></div>
                    <a href="" onclick="$('form').slideUp(500,function(){
								$('#login-form').delay(500).slideDown();
							});event.stopPropagation();return false;">已有账号?登录</a>
                </form>

            </div>
        </div>
    </div>
</div><!-- /container -->
<script src="pages/login/js/TweenLite.min.js"></script>
<script src="pages/login/js/EasePack.min.js"></script>
<script src="pages/login/js/rAF.js"></script>
<script src="pages/login/js/demo-1.js"></script>
<script src="pages/login/js/my.js"></script>
</body>
</html>
