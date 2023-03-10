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

        <fieldset class="layui-elem-field layui-field-title">
            <legend>编辑学生成绩信息</legend>
        </fieldset>

        <form class="layui-form" action="${baseUri}/student/UpdateStuScr" method="POST"
              enctype="multipart/form-data">
            <!-- ID号 -->
            <div class="layui-form-item">
                <label class="layui-form-label">学生ID号</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" readonly="readonly" name="stuId" lay-verify="required"
                           autocomplete="off" value="${stuScore.stuId }" class="layui-input">
                </div>
            </div>

            <!-- 学期 -->
            <div class="layui-form-item">
                <label class="layui-form-label">学期</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" readonly="readonly" name="term" lay-verify="required"
                           autocomplete="off" value="${stuScore.term }" class="layui-input">
                </div>
            </div>

            <!-- 语文成绩 -->
            <div class="layui-form-item">
                <label class="layui-form-label">语文成绩</label>
                <div class="layui-input-block" style="width: 150px;">
                    <input type="text" name="chinese" lay-verify="required"
                           autocomplete="off" value="${stuScore.chinese }" class="layui-input">
                </div>
            </div>

            <!-- 数学成绩 -->
            <div class="layui-form-item">
                <label class="layui-form-label">数学成绩</label>
                <div class="layui-input-block" style="width: 150px;">
                    <input type="text" name="math" lay-verify="required"
                           autocomplete="off" value="${stuScore.math }" class="layui-input">
                </div>
            </div>

            <!-- 英语成绩 -->
            <div class="layui-form-item">
                <label class="layui-form-label">英语成绩</label>
                <div class="layui-input-block" style="width: 150px;">
                    <input type="text" name="english" lay-verify="required"
                           autocomplete="off" value="${stuScore.english }" class="layui-input">
                </div>
            </div>

            <!-- 物理成绩 -->
            <div class="layui-form-item">
                <label class="layui-form-label">物理成绩</label>
                <div class="layui-input-block" style="width: 150px;">
                    <input type="text" name="physical" lay-verify="required"
                           autocomplete="off" value="${stuScore.physical }" class="layui-input">
                </div>
            </div>

            <!-- 化学成绩 -->
            <div class="layui-form-item">
                <label class="layui-form-label">化学成绩</label>
                <div class="layui-input-block" style="width: 150px;">
                    <input type="text" name="chemical" lay-verify="required"
                           autocomplete="off" value="${stuScore.chemical }" class="layui-input">
                </div>
            </div>


            <!-- 生物成绩 -->
            <div class="layui-form-item">
                <label class="layui-form-label">生物成绩</label>
                <div class="layui-input-block" style="width: 150px;">
                    <input type="text" name="biology" lay-verify="required"
                           autocomplete="off" value="${stuScore.biology }" class="layui-input">
                </div>
            </div>

            <!-- 历史成绩 -->
            <div class="layui-form-item">
                <label class="layui-form-label">历史成绩</label>
                <div class="layui-input-block" style="width: 150px;">
                    <input type="text" name="history" lay-verify="required"
                           autocomplete="off" value="${stuScore.history }" class="layui-input">
                </div>
            </div>

            <!-- 政治成绩 -->
            <div class="layui-form-item">
                <label class="layui-form-label">政治成绩</label>
                <div class="layui-input-block" style="width: 150px;">
                    <input type="text" name="policy" lay-verify="required"
                           autocomplete="off" value="${stuScore.policy }" class="layui-input">
                </div>
            </div>

            <!-- 地理成绩 -->
            <div class="layui-form-item">
                <label class="layui-form-label">地理成绩</label>
                <div class="layui-input-block" style="width: 150px;">
                    <input type="text" name="geography" lay-verify="required"
                           autocomplete="off" value="${stuScore.geography }" class="layui-input">
                </div>
            </div>

            <!-- 体育成绩 -->
            <div class="layui-form-item">
                <label class="layui-form-label">体育成绩</label>
                <div class="layui-input-block" style="width: 150px;">
                    <input type="text" name="gym" lay-verify="required"
                           autocomplete="off" value="${stuScore.gym }" class="layui-input">
                </div>
            </div>

            <!-- 提交信息 -->
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button type="submit" class="layui-btn" lay-filter="demo1">立即提交</button>
                </div>
            </div>

        </form>
    </div>
</div>

<script src="${baseUri}/static/layui/layui.all.js"></script>
</body>
</html>
