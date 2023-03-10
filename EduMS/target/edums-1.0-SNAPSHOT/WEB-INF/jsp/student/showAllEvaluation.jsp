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
        <!-- 内容主体区域 -->
        <fieldset class="layui-elem-field layui-field-title"
                  style="margin-top: 20px;">
            <legend>所有综合评价信息</legend>
        </fieldset>

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
                    <col width="50">
                    <col width="50">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>学生ID</th>
                    <th>道德品质</th>
                    <th>公民素质</th>
                    <th>学习能力</th>
                    <th>交流能力</th>
                    <th>课堂出勤</th>
                    <th>课堂表现</th>
                    <th>编辑</th>
                    <th>删除</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${stuEvalList}" var="stuEval">
                    <tr>
                        <td>${stuEval.id_stu }</td>
                        <td>${stuEval.virtue_stu }</td>
                        <td>${stuEval.civicliteracy_stu }</td>
                        <td>${stuEval.learning_stu }</td>
                        <td>${stuEval.communicate_stu }</td>
                        <td>${stuEval.attend_stu }</td>
                        <td>${stuEval.classbehavior_stu }</td>
                        <td><a class="layui-btn"
                               style="background-color: rgb(204, 139, 41)" href="${baseUri}/student/toUpdateStuEval?id=${stuEval.id_stu }">编辑</a></td>
                        <td><a class="layui-btn" id="deleteMessage"
                               style="background-color: rgb(211, 26, 81)"
                               href="${baseUri}/student/deleteStuEval?id=${stuEval.id_stu }">删除</a></td>
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
