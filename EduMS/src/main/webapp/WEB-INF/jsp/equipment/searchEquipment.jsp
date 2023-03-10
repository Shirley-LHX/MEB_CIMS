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
<style>
    * {
        margin: 0;
        padding: 0;
    }

    .searchBar {
        height: 100px;
        background-color: #99cc33;
    }

    .hBar {
        height: 50px;
        line-height: 50px;
        position: relative;
        top: 25px;
        left: 100px;
    }

    label, input, button {
        font-size: 25px;
        font-family: "楷体";
    }
</style>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">

    <!-- 引入头部导航 -->
    <c:import url="/WEB-INF/jsp/topnav.jsp"/>

    <!-- 引入左边导航 -->
    <c:import url="/WEB-INF/jsp/equipment/leftnav.jsp"/>

    <div class="layui-body" style="padding: 15px">

        <fieldset class="layui-elem-field layui-field-title">
            <legend>查询资源</legend>
        </fieldset>

        <!-- 模糊查询字段-->
        <div class="searchBar">
            <div class="hBar">
                <form action="${baseUri}/equipment/searchEquipmentPage" method="get">
                    <label class="">名称</label>
                    <input type="text" name="title" class="" style="width: 200px;">
                    <label class="">负责人</label>
                    <input type="text" name="author" class="" style="width: 200px;">
                    <button type="submit" class="">搜索</button>
                </form>
            </div>
        </div>

        <div class="layui-form">
            <table class="layui-table">
                <colgroup>
                    <col width="150">
                    <col width="150">
                    <col width="150">
                    <col width="80">
                    <col width="80">
                    <col width="350">
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
                    <th>简介</th>
                    <th>查看</th>
                    <th>编辑</th>
                    <th>维修</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${pageMsg.lists}" var="Equipment">
                    <tr>
                        <td>${Equipment.isbn }</td>
                        <td>${Equipment.title }</td>
                        <td>${Equipment.author }</td>
                        <td><c:if test="${Equipment.categoryId==1 }">物理</c:if> <c:if
                                test="${Equipment.categoryId==2 }">化学</c:if> <c:if
                                test="${Equipment.categoryId==3 }">计算机</c:if> <c:if
                                test="${Equipment.categoryId==4 }">体育</c:if> <c:if
                                test="${Equipment.categoryId==5 }">生物</c:if> <c:if
                                test="${Equipment.categoryId==6 }">其他</c:if></td>
                        <td>${Equipment.price }</td>
                        <td>${Equipment.introduction }</td>
                        <td><a class="layui-btn"
                               style="background-color: cadetblue"
                               href="${baseUri}/equipment/equipmentDetail?id=${Equipment.id }">查看</a>
                        </td>
                        <td><a class="layui-btn"
                               style="background-color: rgb(204, 139, 41)"
                               href="${baseUri}/equipment/toUpdateEquipment?id=${Equipment.id }">编辑</a>
                        </td>
                        <td><a class="layui-btn"
                               style="background-color: rgb(211, 26, 81)"
                               href="${baseUri}/equipment/deleteSearchEquipment?id=${Equipment.id }">维修</a></td>
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
