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
    <c:import url="/WEB-INF/jsp/student/leftnav.jsp"/>

    <div class="layui-body" style="padding: 15px">

        <fieldset class="layui-elem-field layui-field-title"
                  style="margin-top: 20px;">
            <legend>所有成绩信息</legend>
        </fieldset>

        <div class="layui-form">
            <table class="layui-table">
                <colgroup>
                    <col width="150" align="center">
                    <col width="50">
                    <col width="94">
                    <col width="94">
                    <col width="94">
                    <col width="94">
                    <col width="94">
                    <col width="94">
                    <col width="94">
                    <col width="94">
                    <col width="94">
                    <col width="94">
                    <col width="50">
                    <col width="50">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>学生ID</th>
                    <th>学期</th>
                    <th>语文</th>
                    <th>数学</th>
                    <th>英语</th>
                    <th>物理</th>
                    <th>化学</th>
                    <th>生物</th>
                    <th>历史</th>
                    <th>政治</th>
                    <th>地理</th>
                    <th>体育</th>
                    <th>修改</th>
                    <th>删除</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${list}" var="stuScore">
                    <tr>
                        <td>${stuScore.stuId }</td>
                        <td>${stuScore.term }</td>
                        <td>${stuScore.chinese }</td>
                        <td>${stuScore.math}</td>
                        <td>${stuScore.english}</td>
                        <td>${stuScore.physical}</td>
                        <td>${stuScore.chemical}</td>
                        <td>${stuScore.biology}</td>
                        <td>${stuScore.history}</td>
                        <td>${stuScore.policy}</td>
                        <td>${stuScore.geography}</td>
                        <td>${stuScore.gym}</td>
                        <td><a class="layui-btn"
                               style="background-color: rgb(204, 139, 41)"
                               href="${baseUri}/student/toUpdateStuScr?id=${stuScore.stuId}&t=${stuScore.term}">修改</a></td>
                        <td><a class="layui-btn" id="soldEquipment"
                               style="background-color: rgb(211, 26, 81)"
                               href="${baseUri}/student/deleteStuScore?id=${stuScore.stuId}&t=${stuScore.term}">删除</a></td>
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
