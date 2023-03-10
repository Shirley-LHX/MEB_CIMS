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
                <li class="layui-this">教师信息</li>
                <li ><a href="${baseUri}/teacher/addPage">新增教师</a></li>
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
                    <col width="50">
                    <col width="80">
                    <col width="80">
                    <col width="80">
                    <col width="80">
                    <col width="80">
                    <col width="80">
                    <col width="80">
                    <col width="80">
                    <col width="80">
                    <col width="80">
                    <col width="50">
                    <col width="50">
                </colgroup>
                <thead>
                <tr>
                    <th>编号</th>
                    <th>姓名</th>
                    <th>性别</th>
                    <th>年龄</th>
                    <th>身份证号</th>
                    <th>学历</th>
                    <th>教龄</th>
                    <th>所在单位</th>
                    <th>授课科目</th>
                    <th>科研成果</th>
                    <th>职称</th>
                    <th>修改</th>
                    <th>删除</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach  items="${list}" var="item">
                    <tr>
                        <td>${item.teacherId}</td>
                        <td>${item.teacherName}</td>
                        <td>${item.teacherGender}</td>
                        <td>${item.teacherAge}</td>
                        <td>${item.teacherIDNumber}</td>
                        <td>${item.teacherEducation}</td>
                        <td>${item.teacherTeachAge}</td>
                        <td>${item.teachUnit}</td>
                        <td>${item.teachSubject}</td>
                        <td>${item.achievement}</td>
                        <td>${item.titleName}</td>
                        <td><a class="layui-btn"
                               style="background-color: rgb(62,199,204)" href="${baseUri}/teacher/addPage?teacherId=${item.teacherId}">修改</a></td>
                        <td><a class="layui-btn" id="deteteTeacher"
                               style="background-color: rgb(211,77,80)"
                               href="${baseUri}/teacher/deleteTeacher?teacherId=${item.teacherId}">删除</a></td>
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
