<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
            <ul class="layui-tab-title">
                <li><a href="${baseUri}/teacher/titlePage">职称工资管理</a></li>
                <li class="layui-this">教师工资查询</li>
            </ul>
            <div class="layui-tab-content"></div>
        </div>

        <fieldset class="layui-elem-field layui-field-title"
                  style="margin-top: 20px;">
            <legend>所有教师信息</legend>
        </fieldset>

        <div class="layui-form">
            <table class="layui-table">
                <colgroup>
                    <col width="180">
                    <col width="180">
                    <col width="180">
                    <col width="180">
                    <col width="180">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>教师ID</th>
                    <th>教师姓名</th>
                    <th>职称名称</th>
                    <th>基础工资</th>
                    <th>薪阶工资</th>
                    <th>绩效工资</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach  items="${list}" var="item">
                    <tr>
                        <td>${item.teacherId}</td>
                        <td>${item.teacherName}</td>
                        <td>${item.titleName}</td>
                        <td>${item.basicSalary}</td>
                        <td>${item.gradeSalary}</td>
                        <td>${item.performanceSalary}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="${baseUri}/static/layui/layui.all.js"></script>
</body>
</html>
