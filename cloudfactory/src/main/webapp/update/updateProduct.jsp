<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
  <meta charset="utf-8">
  <title>修改部门信息</title>
  <!-- Bootstrap CSS-->
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
                <h1>产品信息修改</h1>
              </div>
            </div>
          </div>
        </div>
        <!-- Form Panel    -->
        <div class="col-lg-6 bg-white">
          <div class="form d-flex align-items-center">
            <div class="content">
              <form method="get" action="${pageContext.request.contextPath}/user/updateProduct">
                <input type="hidden" name="productID" value="${product.productID}">
                <div class="form-group">
                  <span style="font-size: 15px;font-family: 黑体;">产品名称</span>
                  <input id="productName" class="input-material" type="text" name="productName" value="${product.productName}" >
                </div>
<%--                <div class="form-group">--%>
<%--                  <span style="font-size: 15px;font-family: 黑体;">产品类型</span>--%>
<%--                  <input id="productType" class="input-material" type="text" name="productType" value="${product.productType}" >--%>
<%--                </div>--%>

                  <div class="form-group">
                      <span style="font-size: 15px;font-family: 黑体;">产品类型&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</span>
                      <select name="productType" id="productType" style="font-family: 黑体;font-size: 15px" value="${product.productType}">
                          <c:forEach items="${productTypeList}" var="productType">
                              <option value="${productType.getProductType()}">${productType.getProductType()}</option>
                          </c:forEach>
                      </select>
                  </div>

                <div class="form-group">
                <span style="font-size: 15px;font-family: 黑体;">产品规格</span>
                <input id="productSpecifications" class="input-material" type="text" name="productSpecifications" value="${product.productSpecifications}" >
                </div>
            <div class="form-group">
              <span style="font-size: 15px;font-family: 黑体;">产品简介</span>
              <input id="productDetail" class="input-material" type="text" name="productDetail" value="${product.productDetail}" >
            </div>

                <div class="form-group">
<%--                  <input type="hidden" name="function" value="addDepartment">--%>
                  <input  type="submit" class="btn btn-primary" style="font-size: 15px;font-family: 黑体;position: relative;top: 30px;display: inline" />
                  <input  type="reset" class="btn btn-primary" style="font-size: 15px;font-family: 黑体;position: relative;top: 30px;left:30px;display: inline" />
                  <a href="deptManage.jsp" style="font-size: 15px;font-family: 黑体;position: relative;top: 32px;left:60px;text-decoration: none">返回主页面</a>
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