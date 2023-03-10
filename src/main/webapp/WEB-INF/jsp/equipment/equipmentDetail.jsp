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
    <c:import url="/WEB-INF/jsp/equipment/leftnav.jsp"/>

    <div class="layui-body" style="padding: 15px">

        <fieldset class="layui-elem-field layui-field-title">
            <legend>资源信息</legend>
        </fieldset>

        <!-- 图书标题 -->
        <div class="layui-form-item">
            <label class="layui-form-label">名称</label>
            <div class="layui-input-block" style="width: 400px;">
                <input type="text" name="title" lay-verify="required"
                       autocomplete="off" value="${equipment.title }" class="layui-input" disabled>
            </div>
        </div>

        <!-- 图书编号 -->
        <div class="layui-form-item">
            <label class="layui-form-label">编号</label>
            <div class="layui-input-block" style="width: 400px;">
                <input type="text" name="isbn" lay-verify="required"
                       autocomplete="off" value="${equipment.isbn }" class="layui-input" disabled>
            </div>
        </div>

        <!-- 图书作者 -->
        <div class="layui-form-item">
            <label class="layui-form-label">负责人</label>
            <div class="layui-input-block" style="width: 400px;">
                <input type="text" name="author" lay-verify="required"
                       autocomplete="off" value="${equipment.author }" class="layui-input" disabled>
            </div>
        </div>

        <!-- 图书价格 -->
        <div class="layui-form-item">
            <label class="layui-form-label">价格</label>
            <div class="layui-input-inline" style="width: 100px;">
                <input type="text" name="price" value="${equipment.price}" autocomplete="off"
                       class="layui-input" disabled>
            </div>
        </div>

        <!-- 图书分类 -->
        <div class="layui-form-item">
            <label class="layui-form-label">类型</label>
            <div class="layui-input-inline" style="width: 100px;">
                <input type="text" name="publishTime" value="${cate.categoryName }" autocomplete="off"
                       class="layui-input" disabled>
            </div>
        </div>

        <!-- 出版时间 -->
        <div class="layui-form-item">
            <label class="layui-form-label">购入时间</label>
            <div class="layui-input-inline" style="width: 100px;">
                <input type="text" name="publishTime" value="${equipment.publishTime}" autocomplete="off"
                       class="layui-input" disabled>
            </div>
        </div>

        <!-- 上架时间 -->
        <div class="layui-form-item">
            <label class="layui-form-label">上架时间</label>
            <div class="layui-input-inline" style="width: 100px;">
                <input type="text" name="createTime"
                       value="<fmt:formatDate value="${equipment.createTime}" pattern="yyyy年MM月" />"
                       autocomplete="off" class="layui-input" disabled>
            </div>
        </div>

        <!-- 上架管理员 -->
        <div class="layui-form-item">
            <label class="layui-form-label">最初负责人</label>
            <div class="layui-input-inline" style="width: 100px;">
                <input type="text" name="createTime" value="${equipment.createAdmin}" autocomplete="off"
                       class="layui-input" disabled>
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">最近一次修改负责人</label>
            <div class="layui-input-inline" style="width: 100px;">
                <input type="text" name="updatePreAdmin" value="${equipment.updatePreAdmin}" autocomplete="off"
                       class="layui-input" disabled>
            </div>
        </div>


        <!-- 图书简介 -->
        <div class="layui-form-item layui-form-text">
            <label class="layui-form-label">资源简介</label>
            <div class="layui-input-block">
						<textarea placeholder="${equipment.introduction}" class="layui-textarea"
                                  style="width: 400px; height: 150px" disabled></textarea>
            </div>
        </div>

        <!-- 图书的封面图片 -->
        <div class="layui-form-item">
            <label class="layui-form-label">资源图片</label>
            <div class="layui-upload">
                <div class="layui-upload-list">
                    <c:if test="${equipment.image==null}">
                        <img src="${baseUri}/static/images/equipment.jpg" width="80px" height="100px;">
                    </c:if>
                    <c:if test="${equipment.image !=null }">
                        <c:if test="${equipment.image=='' }">
                            <img src="${baseUri}/static/images/equipment.jpg" width="80px" height="100px;">
                        </c:if>
                        <c:if test="${equipment.image !='' }">
                            <img src="${baseUri}${sessionScope.imgPath}/${equipment.image}" alt="" width="80px" height="100px;">
                        </c:if>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${baseUri}/static/layui/layui.all.js"></script>
</body>
</html>
