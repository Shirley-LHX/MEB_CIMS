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
            <legend>编辑综合评价信息</legend>
        </fieldset>

        <form class="layui-form" action="${baseUri}/student/updateStuEval" method="POST"
              enctype="multipart/form-data">
            <input type="hidden" name="id_stu" value="${stuEval.id_stu }"  >

            <!-- 道德品质 -->
            <div class="layui-form-item">
                <label class="layui-form-label">道德品质</label>
                <div class="layui-input-block" style="width: 250px;">
                    <input type="text" name="virtue_stu" lay-verify="required"
                           autocomplete="off" value="${stuEval.virtue_stu }" class="layui-input" >
                </div>
            </div>

            <!-- 公民素质 -->
            <div class="layui-form-item">
                <label class="layui-form-label">公民素质</label>
                <div class="layui-input-block" style="width: 250px;">
                    <input type="text" name="civicliteracy_stu" lay-verify="required"
                           autocomplete="off" value="${stuEval.civicliteracy_stu }" autocomplete="off" class="layui-input" >
                </div>
            </div>

            <!-- 学习能力 -->
            <div class="layui-form-item">
                <label class="layui-form-label">学习能力</label>
                <div class="layui-input-inline" style="width: 250px;">
                    <input type="text" name="learning_stu" value="${stuEval.learning_stu}" autocomplete="off"
                           class="layui-input" >
                </div>
            </div>

            <!-- 交流能力 -->
            <div class="layui-form-item">
                <label class="layui-form-label">交流能力</label>
                <div class="layui-input-inline" style="width: 250px;">
                    <input type="text" name="communicate_stu" value="${stuEval.communicate_stu}" autocomplete="off"
                           class="layui-input" >
                </div>
            </div>

            <!-- 课堂出勤 -->
            <div class="layui-form-item">
                <label class="layui-form-label">课堂出勤</label>
                <div class="layui-input-inline" style="width: 250px;">
                    <input type="text" name="attend_stu" value="${stuEval.attend_stu}" autocomplete="off"
                           class="layui-input" >
                </div>
            </div>

            <!-- 课堂表现 -->
            <div class="layui-form-item">
                <label class="layui-form-label">课堂表现</label>
                <div class="layui-input-inline" style="width: 250px;">
                    <input type="text" name="classbehavior_stu" value="${stuEval.classbehavior_stu}" autocomplete="off"
                           class="layui-input" >
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
