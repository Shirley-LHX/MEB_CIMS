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
    <c:import url="/WEB-INF/jsp/equipment/leftnav.jsp"/>

    <div class="layui-body" style="padding: 15px">

        <fieldset class="layui-elem-field layui-field-title">
            <legend>最近添加的资源列表</legend>
        </fieldset>

        <div class="layui-form">
            <table class="layui-table">
                <colgroup>
                    <col width="150">
                    <col width="150">
                    <col width="100">
                    <col width="80">
                    <col width="80">
                    <col width="350">
                    <col width="130">
                    <col width="60">
                    <col width="50">
                    <col width="50">
                    <col width="50">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>编号</th>
                    <th>名称</th>
                    <th>负责人</th>
                    <th>类型</th>
                    <th>价格(元)</th>
                    <th>上架时间</th>
                    <th>查看</th>
                    <th>编辑</th>
                    <th>维修</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${newEquipmentList}" var="Equipment">
                    <tr>
                        <td>${Equipment.isbn }</td>
                        <td>${Equipment.title }</td>
                        <td>${Equipment.author }</td>
                        <td>${Equipment.categoryId }</td>
                        <td>${Equipment.price }</td>
                        <td>
                            <fmt:formatDate value="${Equipment.createTime }" pattern="yyyy年MM月"/>
                        </td>
                        <td><a class="layui-btn"
                               style="background-color: cadetblue" href="${baseUri}/equipment/equipmentDetail?id=${Equipment.id }">查看</a></td>
                        <td><a class="layui-btn"
                               style="background-color: rgb(204, 139, 41)" href="${baseUri}/equipment/toUpdateEquipment?id=${Equipment.id }">编辑</a></td>
                        <td><a class="layui-btn"
                               style="background-color: rgb(211, 26, 81)" href="${baseUri}/equipment/deleteEquipmentNewList?id=${Equipment.id }">维修</a></td>
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
