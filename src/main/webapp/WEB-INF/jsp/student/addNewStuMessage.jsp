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
    <c:import url="/WEB-INF/jsp/student/leftnav.jsp"/>

    <div class="layui-body" style="padding: 15px">
        <!-- 内容主体区域 -->
        <fieldset class="layui-elem-field layui-field-title">
            <legend>添加学籍信息</legend>
        </fieldset>

        <form class="layui-form" action="${baseUri}/student/addNewStuMessage" method="POST"
              enctype="multipart/form-data">

            <!-- 图书标题 -->
            <div class="layui-form-item">
                <label class="layui-form-label">学生姓名</label>
                <div class="layui-input-block" style="width: 200px;">
                    <input type="text" name="name_stu" lay-verify="required"
                           autocomplete="off" placeholder="请输入姓名" class="layui-input">
                </div>
            </div>

            <!-- 学生学号 -->
            <div class="layui-form-item">
                <label class="layui-form-label">学号</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" name="id_stu" lay-verify="required"
                           autocomplete="off" placeholder="请输入学号" class="layui-input">
                </div>
            </div>

            <!-- 身份证号 -->
            <div class="layui-form-item">
                <label class="layui-form-label">身份证号</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" name="IDcard_stu" lay-verify="required"
                           autocomplete="off" placeholder="请输入身份证号" class="layui-input">
                </div>
            </div>

            <!-- 所在班级 -->
            <div class="layui-form-item">
                <label class="layui-form-label">所在班级</label>
                <div class="layui-input-block" style="width: 100px;">
                    <input type="text" name="classNum_stu" lay-verify="required"
                           autocomplete="off" placeholder="请输入班级号" class="layui-input">
                </div>
            </div>

            <!-- 学校 -->
            <div class="layui-form-item">
                <label class="layui-form-label">就读学校</label>
                <div class="layui-input-inline" style="width: 400px;">
                    <input type="text" name="school" lay-verify="required"
                           placeholder="请输入在读学校" autocomplete="off" class="layui-input">
                </div>
            </div>

            <!-- 学生电话 -->
            <div class="layui-form-item">
                <label class="layui-form-label">学生电话</label>
                <div class="layui-input-inline" style="width: 400px;">
                    <input type="text" name="phone_stu" placeholder="请输入电话号码" lay-verify="required"
                           autocomplete="off" class="layui-input">
                </div>
            </div>

            <!-- 入学日期 -->
            <div class="layui-form-item">
                <label class="layui-form-label">入学日期</label>
                <div class="layui-input-inline" style="width: 150px;">
                    <input type="date" name="enterdate_stu" placeholder="元" autocomplete="off" pattern = "yyyy年-MM月-DD日"
                           class="layui-input">
                </div>
            </div>

            <!-- 毕业日期 -->
            <div class="layui-form-item">
                <label class="layui-form-label">毕业日期</label>
                <div class="layui-input-inline" style="width: 150px;">
                    <input type="date" name="gradate" placeholder="元" autocomplete="off" pattern = "yyyy年-MM月-DD日"
                           class="layui-input">
                </div>
            </div>

            <!-- 提交学籍信息 -->
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button type="submit" class="layui-btn" lay-filter="demo1">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>

        </form>
    </div>
</div>

<script src="${baseUri}/static/layui/layui.all.js"></script>
</body>
</html>
