<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <c:import url="/WEB-INF/jsp/user/leftnav.jsp"/>

    <div class="layui-body" style="padding: 15px">

        <fieldset class="layui-elem-field layui-field-title">
            <legend>用户列表</legend>
        </fieldset>

        <!-- 展示用户列表，并提供编辑/删除功能 -->
        <table class="layui-table">
            <colgroup>
                <col width="200"/>
                <col width="400"/>
                <col width="400"/>
                <col width="60"/>
                <col width="80"/>
                <col width="80"/>
            </colgroup>
            <thead>
            <tr>
                <th>ID</th>
                <th>用户名</th>
                <th>邮箱</th>
                <th>头像</th>
                <th>编辑</th>
                <th>删除</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td>${user.ID}</td>
                    <td>${user.username}</td>
                    <td>${user.email}</td>
                    <td style="text-align: center"><img src="${baseUri}${sessionScope.imgPath}/${user.avatar}" style="width: 48px; height: 48px" alt="头像"></td>
                    <td style="text-align: center"><a href="update/${user.ID}" class="layui-btn">编辑</a></td>
                    <td style="text-align: center"><a href="delete/${user.ID}" class="layui-btn layui-btn-danger">删除</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script src="${baseUri}/static/layui/layui.all.js"></script>
</body>
</html>
