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
<style>
    * {
        margin: 0;
        padding: 0;
    }

    .searchBar {
        height: 100px;
        background-color: #99cc33;
    }

    .hBar {
        height: 50px;
        line-height: 50px;
        position: relative;
        top: 25px;
        left: 100px;
    }

    label, input, button {
        font-size: 25px;
        font-family: "楷体";
    }
</style>
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
            <legend>学籍查询</legend>
        </fieldset>


        <!-- 模糊查询字段-->
        <div class="searchBar">
            <div class="hBar">
                <form action="${baseUri}/student/searchStuMessage" method="get">
                    <label class="">学号</label>
                    <input type="text" name="id" class="" style="width: 200px;">
                    <button type="submit" class="">搜索</button>
                </form>
            </div>
        </div>
        <div class="layui-form">
            <table class="layui-table">
                <colgroup>
                    <col width="130">
                    <col width="130">
                    <col width="130">
                    <col width="130">
                    <col width="130">
                    <col width="130">
                    <col width="130">
                    <col width="130">
                    <col width="50">
                    <col width="50">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>学生ID</th>
                    <th>学生姓名</th>
                    <th>班级</th>
                    <th>身份证号</th>
                    <th>在读学校</th>
                    <th>手机号</th>
                    <th>入学日期</th>
                    <th>毕业日期</th>
                    <th>编辑</th>
                    <th>删除</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>${stuMessage.id_stu }</td>
                    <td>${stuMessage.name_stu }</td>
                    <td>${stuMessage.classNum_stu }</td>
                    <td>${stuMessage.IDcard_stu }</td>
                    <td>${stuMessage.school }</td>
                    <td>${stuMessage.phone_stu }</td>
                    <td>${stuMessage.enterdate_stu }</td>
                    <td>${stuMessage.gradate }</td>
                    <td><a class="layui-btn"
                           style="background-color: rgb(204, 139, 41)" href="${baseUri}/student/toUpdateStuMessage?id=${stuMessage.id_stu }">编辑</a></td>
                    <td><a class="layui-btn"
                           style="background-color: rgb(211, 26, 81)" href="${baseUri}/student/deleteStuMessage?id=${stuMessage.id_stu }">删除</a></td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="${baseUri}/static/layui/layui.all.js"></script>
</body>
</html>
