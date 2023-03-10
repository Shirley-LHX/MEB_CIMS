<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="baseUri" value="${pageContext.request.contextPath }" scope="request"/>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <ul class="layui-nav layui-nav-tree" lay-filter="test">
            <li class="layui-nav-item layui-nav-itemed">
                <a>用户管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${baseUri}/user/add">用户添加</a></dd>
                    <dd><a href="${baseUri}/user/list">用户列表</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a>学生管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${baseUri}/student/showAllMessage">所有学籍</a></dd>
                    <dd><a href="${baseUri}/student/toSearchStuMessage">查询学籍</a></dd>
                    <dd><a href="${baseUri}/student/toAddNewStuMessage">添加新学籍</a></dd>
                    <dd><a href="${baseUri}/student/showAllEvaluation">所有综合评价信息</a></dd>
                    <dd><a href="${baseUri}/student/toSearchStuEval">查询综合评价信息</a></dd>
                    <dd><a href="${baseUri}/student/toAddNewStuEval">添加新综合评价信息</a></dd>
                    <dd><a href="${baseUri}/student/showAllScore">所有成绩</a></dd>
                    <dd><a href="${baseUri}/student/toSearchStuScore">查询成绩</a></dd>
                    <dd><a href="${baseUri}/student/toAddPageScr">添加成绩</a></dd>
                    <dd><a href="${baseUri}/student/showAllHealth">所有身心健康表</a></dd>
                    <dd><a href="${baseUri}/student/toSearchStuHealth">查询身心健康表</a></dd>
                    <dd><a href="${baseUri}/student/toAddPageHe">添加身心健康表</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a>教师管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${baseUri}/teacher/teacherPage">教师信息管理</a></dd>
                    <dd><a href="${baseUri}/teacher/titlePage">职称工资管理</a></dd>
                    <dd><a href="${baseUri}/teacher/personnelPage">异动管理</a></dd>
                    <dd><a href="${baseUri}/teacher/searchPage">人事信息查询</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item">
                <a>校产资源管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="${baseUri}/equipment/showEquipment">所有资源</a></dd>
                    <dd><a href="${baseUri}/equipment/searchEquipment">查询资源</a></dd>
                    <dd><a href="${baseUri}/equipment/toAddNewEquipment">添加资源</a></dd>
                    <dd><a href="${baseUri}/equipment/newEquipmentList">最新资源列表</a></dd>
                    <dd><a href="${baseUri}/equipment/deleteEquipmentList">维护资源列表</a></dd>
                </dl>
            </li>
        </ul>
    </div>
</div>
