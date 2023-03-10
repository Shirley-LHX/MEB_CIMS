tmp.jsp
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
        <fieldset class="layui-elem-field layui-field-title">
            <legend>添加综合评价信息</legend>
        </fieldset>

        <form class="layui-form" action="${baseUri}/student/addNewStuEval" method="POST"
              enctype="multipart/form-data">

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
                <label class="layui-form-label">道德品质</label>
                <div class="layui-input-block" style="width: 250px;">
                    <input type="text" name="virtue_stu"
                           autocomplete="off" placeholder="请输入道德品质等级" class="layui-input">
                </div>
            </div>

            <!-- 所在班级 -->
            <div class="layui-form-item">
                <label class="layui-form-label">公民素质</label>
                <div class="layui-input-block" style="width: 250px;">
                    <input type="text" name="civicliteracy_stu"
                           autocomplete="off" placeholder="请输入公民素质等级" class="layui-input">
                </div>
            </div>

            <!-- 学校 -->
            <div class="layui-form-item">
                <label class="layui-form-label">学习能力</label>
                <div class="layui-input-inline" style="width: 250px;">
                    <input type="text" name="learning_stu"
                           placeholder="请输入学习能力等级" autocomplete="off" class="layui-input">
                </div>
            </div>

            <!-- 学生电话 -->
            <div class="layui-form-item">
                <label class="layui-form-label">交流能力</label>
                <div class="layui-input-inline" style="width: 250px;">
                    <input type="text" name="communicate_stu" placeholder="请输入交流能力等级" autocomplete="off"
                           class="layui-input">
                </div>
            </div>

            <!-- 入学日期 -->
            <div class="layui-form-item">
                <label class="layui-form-label">课堂出勤</label>
                <div class="layui-input-inline" style="width: 250px;">
                    <input type="text" name="attend_stu" placeholder="请输入课堂出勤等级" autocomplete="off"
                           class="layui-input">
                </div>
            </div>

            <!-- 毕业日期 -->
            <div class="layui-form-item">
                <label class="layui-form-label">课堂表现</label>
                <div class="layui-input-inline" style="width: 250px;">
                    <input type="text" name="classbehavior_stu" placeholder="请输入课堂表现等级" autocomplete="off"
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
