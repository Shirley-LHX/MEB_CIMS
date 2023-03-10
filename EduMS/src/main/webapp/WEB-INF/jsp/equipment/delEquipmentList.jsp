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
            <legend>删除资源</legend>
        </fieldset>

        <div class="layui-form">
            <table class="layui-table">
                <colgroup>
                    <col width="150">
                    <col width="150">
                    <col width="150">
                    <col width="80">
                    <col width="80">
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

                    <th>重新上架</th>
                    <th>彻底删除</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${EquipmentList}" var="Equipment">
                    <tr>
                        <td>${Equipment.isbn }</td>
                        <td>${Equipment.title }</td>
                        <td>${Equipment.author }</td>
                        <td>
                            <c:if test="${Equipment.categoryId==1 }">物理</c:if>
                            <c:if test="${Equipment.categoryId==2 }">化学</c:if>
                            <c:if test="${Equipment.categoryId==3 }">计算机</c:if>
                            <c:if test="${Equipment.categoryId==4 }">体育</c:if>
                            <c:if test="${Equipment.categoryId==5 }">生物</c:if>
                            <c:if test="${Equipment.categoryId==6 }">其他</c:if>
                        </td>
                        <td>${Equipment.price }</td>
                        <td>
                            <a class="layui-btn"
                               style="background-color: #33cc00" href="${baseUri}/equipment/updateBackEquipment?id=${Equipment.id }">重新上架</a>
                        </td>
                        <td>
                            <a class="layui-btn"
                               style="background-color: #ff0000" href="${baseUri}/equipment/deleteEquipmentReal?id=${Equipment.id }"
                               onclick="return confirm('确认彻底删除该图书:《${Equipment.title }》？')">彻底删除</a>
                        </td>
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
