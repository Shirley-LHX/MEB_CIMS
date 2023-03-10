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
        <fieldset class="layui-elem-field layui-field-title"
                  style="margin-top: 20px;">
            <legend>新增异动记录</legend>
        </fieldset>

        <form class="layui-form" action="${baseUri}/teacher/editPC" method="post">
            <input type="hidden" value="${personnelChange.id}" name="Id">


            <div class="layui-form-item">
                <label for="teacherID" class="layui-form-label">教师编号</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="teacherID"
                           placeholder="请输入教师编号" name="TeacherID" value="${personnelChange.teacherID}">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="type" class="layui-form-label">异动类型</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="type"
                           placeholder="请输入异动类型" name="Type" value="${personnelChange.type}">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="previousTitle" class="layui-form-label">前职称</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="previousTitle"
                           placeholder="请输入前职称" name="PreviousTitle" value="${personnelChange.previousTitle}">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="previousWorkplace" class="layui-form-label">前工作单位</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="previousWorkplace"
                           placeholder="请输入前工作单位" name="PreviousWorkplace" value="${personnelChange.previousWorkplace}">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="currentTitle" class="layui-form-label">现职称</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="currentTitle"
                           placeholder="请输入现职称" name="CurrentTitle" value="${personnelChange.currentTitle}">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="currentWorkplace" class="layui-form-label">现工作单位</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="currentWorkplace"
                           placeholder="请输入现工作单位" name="CurrentWorkplace" value="${personnelChange.currentWorkplace}">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="create_time" class="layui-form-label">操作时间</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text"  class="layui-input" id="create_time"
                           placeholder="请输入操作时间" name="CreateTime" value="${personnelChange.createTime}">
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
