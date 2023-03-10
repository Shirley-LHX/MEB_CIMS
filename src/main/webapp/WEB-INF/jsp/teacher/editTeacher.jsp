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
                <li ><a href="${baseUri}/teacher/teacherPage">教师信息</a></li>
                <li class="layui-this">新增教师</li>
            </ul>
            <div class="layui-tab-content"></div>
        </div>

        <fieldset class="layui-elem-field layui-field-title"
                  style="margin-top: 20px;">
            <legend>修改或新增教师信息</legend>
        </fieldset>

        <form class="layui-form" action="${baseUri}/teacher/add" method="post">
            <input type="hidden" value="${teacherInformation.teacherId}" name="teacherId">

            <div class="layui-form-item">
                <label for="TeacherName" class="layui-form-label">教师姓名</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="TeacherName"
                           placeholder="教师姓名" name="teacherName" value="${teacherInformation.teacherName}">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="TeacherGender" class="layui-form-label">教师性别</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="TeacherGender" value="${teacherInformation.teacherGender}"
                           placeholder="教师性别" name="teacherGender">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="TeacherAge" class="layui-form-label">教师年龄</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="TeacherAge" value="${teacherInformation.teacherAge}"
                           placeholder="教师年龄" name="teacherAge">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="TeacherIDNumber" class="layui-form-label">身份证号</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="TeacherIDNumber"
                           placeholder="身份证号" name="teacherIDNumber" value="${teacherInformation.teacherIDNumber}">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="TeacherEducation" class="layui-form-label">学历</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="TeacherEducation" value="${teacherInformation.teacherEducation}"
                           placeholder="学历" name="teacherEducation">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="TeacherTeachAge" class="layui-form-label">教龄</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="TeacherTeachAge" value="${teacherInformation.teacherTeachAge}"
                           placeholder="教龄" name="teacherTeachAge">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="TeachUnit" class="layui-form-label">所在单位</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="TeachUnit"
                           placeholder="所在单位" name="teachUnit" value="${teacherInformation.teachUnit}">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="TeachSubject" class="layui-form-label">授课学科</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="TeachSubject" value="${teacherInformation.teachSubject}"
                           placeholder="授课学科" name="teachSubject">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="Achievement" class="layui-form-label">科研成果</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="Achievement" value="${teacherInformation.achievement}"
                           placeholder="科研成果" name="achievement">
                </div>
            </div>

            <div class="layui-form-item">
                <label for="TitleName" class="layui-form-label">教师职称</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" class="layui-input" id="TitleName" value="${teacherInformation.titleName}"
                           placeholder="教师职称" name="titleName">
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
