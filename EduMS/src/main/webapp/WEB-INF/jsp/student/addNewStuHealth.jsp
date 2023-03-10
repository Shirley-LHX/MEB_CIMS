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
            <legend>添加新身心健康信息</legend>
        </fieldset>

        <form class="layui-form" action="${baseUri}/student/addNewStuHealth" method="POST"
              enctype="multipart/form-data">

            <!-- ID号 -->
            <div class="layui-form-item">
                <label class="layui-form-label">学生ID号</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" name="stuId" lay-verify="required"
                           autocomplete="off" placeholder="请输入ID号" class="layui-input">
                </div>
            </div>

            <!-- 身高 -->
            <div class="layui-form-item">
                <label class="layui-form-label">身高</label>
                <div class="layui-input-block" style="width: 150px;">
                    <input type="text" name="height" lay-verify="required"
                           autocomplete="off" placeholder="请输入身高" class="layui-input">
                </div>
            </div>

            <!-- 体重 -->
            <div class="layui-form-item">
                <label class="layui-form-label">体重</label>
                <div class="layui-input-block" style="width: 150px;">
                    <input type="text" name="weight" lay-verify="required"
                           autocomplete="off" placeholder="请输入体重" class="layui-input">
                </div>
            </div>

            <!-- 患病信息 -->
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">患病信息</label>
                <div class="layui-input-block">
						<textarea name="disease" placeholder="请输入患病信息" class="layui-textarea"
                                  style="width: 400px; height: 150px"></textarea>
                </div>
            </div>


            <!-- 提交信息 -->
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
