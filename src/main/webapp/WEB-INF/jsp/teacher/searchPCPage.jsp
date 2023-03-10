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
        <div class="layui-tab layui-tab-brief" lay-filter="docDemoTabBrief">
            <ul class="layui-tab-title">
                <li ><a href="${baseUri}/teacher/personnelPage">异动信息</a></li>
                <li ><a href="${baseUri}/teacher/addPersonnel">新增异动记录</a></li>
                <li class="layui-this">查询异动记录</li>
            </ul>
            <div class="layui-tab-content"></div>
        </div>

        <fieldset class="layui-elem-field layui-field-title"
                  style="margin-top: 20px;">
            <legend>查询异动信息</legend>
        </fieldset>

        <form class="layui-form" action="${baseUri}/teacher/searchPCPage" method="get" >
            <div class="layui-form-item">
                <label class="layui-form-label">教师编号</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input class="layui-input" type="text" name="teacherId" id="teacherId"/>
                </div>
                <div class="layui-input-block">
                    <button type="submit" class="layui-btn">查询</button>
                </div>
            </div>
        </form>

        <div class="layui-form">
            <table class="layui-table">
                <colgroup>
                    <col width="150">
                    <col width="150">
                    <col width="150">
                    <col width="150">
                    <col width="150">
                    <col width="150">
                    <col width="150">
                    <col width="150">
                    <col width="150">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>教师编号</th>
                    <th>异动类型</th>
                    <th>前职称</th>
                    <th>前工作单位</th>
                    <th>现职称</th>
                    <th>现工作单位</th>
                    <th>操作时间</th>
                    <th>修改</th>
                    <th>编辑</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="item" items="${changePC}">
                    <tr >
                        <td>${item.teacherID}</td>
                        <td>${item.type}</td>
                        <td>${item.previousTitle}</td>
                        <td>${item.previousWorkplace}</td>
                        <td>${item.currentTitle}</td>
                        <td>${item.currentWorkplace}</td>
                        <td>${item.createTime}</td>
                        <td><a class="layui-btn"
                               style="background-color: rgb(62,199,204)" href="${baseUri}/teacher/editPersonnel?Id=${item.id}">修改</a></td>
                        <td><a class="layui-btn" id="deteteTeacher"
                               style="background-color: rgb(211,77,80)"
                               href="${baseUri}/teacher/deletePersonnel?Id=${item.id}">删除</a></td>
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
