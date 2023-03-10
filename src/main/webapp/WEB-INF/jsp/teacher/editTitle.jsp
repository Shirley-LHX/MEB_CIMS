tmp.jsp<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="baseUri" value="${pageContext.request.contextPath }" scope="request"/>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>某市教育局综合信息管理平台</title>
    <link rel="stylesheet" href="${baseUri}/static/layui/css/layui.css">
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">

    <!-- 引入头部导航 -->
    <c:import url="/WEB-INF/jsp/topnav.jsp"/>

    <!-- 引入左边导航 -->
    <c:import url="/WEB-INF/jsp/teacher/leftnav.jsp"/>

    <div class="layui-body" style="padding: 15px">
        <!-- 内容主体区域 -->
        <fieldset class="layui-elem-field layui-field-title"
                  style="margin-top: 20px;">
            <legend>修改职称工资</legend>
        </fieldset>

        <form class="layui-form" action="${baseUri}/teacher/change" method="post">
            <input type="hidden" value="${titleInfo.titleName}" name="titleName">
            <div class="layui-form-item">
                <label for="titleName" class="layui-form-label">职称名称</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="titleName"
                           placeholder="职称名称" name="TitleName" value="${titleInfo.titleName}">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="basicSalary" class="layui-form-label">基础工资</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="BasicSalary" value="${titleInfo.basicSalary}"
                           placeholder="基础工资" name="basicSalary">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="gradeSalary" class="layui-form-label">薪阶工资</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="GradeSalary" value="${titleInfo.gradeSalary}"
                           placeholder="薪阶工资" name="gradeSalary">
                </div>
            </div>
            <div class="layui-form-item">
                <label for="performanceSalary" class="layui-form-label">绩效工资</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="PerformanceSalary" value="${titleInfo.performanceSalary}"
                           placeholder="绩效工资" name="performanceSalary">
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button type="submit" class="layui-btn">提交</button>
                </div>
            </div>
        </form>

    </div>
</div>

<script src="${baseUri}/static/layui/layui.all.js"></script>
</body>
</html>
