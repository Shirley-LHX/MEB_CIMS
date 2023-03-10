<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <legend>编辑资源</legend>
        </fieldset>

        <form class="layui-form" action="${baseUri}/equipment/updateEquipment" method="post"
              enctype="multipart/form-data">
            <input type="hidden" name="id" value="${equipment.id }">

            <!-- 图书标题 -->
            <div class="layui-form-item">
                <label class="layui-form-label">名称</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" name="title" lay-verify="required"
                           autocomplete="off" value="${equipment.title }" class="layui-input">
                </div>
            </div>

            <!-- 图书编号 -->
            <div class="layui-form-item">
                <label class="layui-form-label">编号</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" name="isbn" lay-verify="required"
                           autocomplete="off" value="${equipment.isbn }" class="layui-input">
                </div>
            </div>

            <!-- 图书作者 -->
            <div class="layui-form-item">
                <label class="layui-form-label">负责人</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" name="author" lay-verify="required"
                           autocomplete="off" value="${equipment.author }" class="layui-input">
                </div>
            </div>

            <!-- 图书价格 -->
            <div class="layui-form-item">
                <label class="layui-form-label">价格</label>
                <div class="layui-input-inline" style="width: 100px;">
                    <input type="text" name="price" value="${equipment.price}" autocomplete="off"
                           class="layui-input">
                </div>
            </div>

            <!-- 图书分类 -->
            <div class="layui-form-item">
                <label class="layui-form-label">类型</label>
                <div class="layui-input-block" style="width: 300px;">
                    <select name="categoryId" lay-verify="required">
                        <option value="${cate.categoryId}">${cate.categoryName }</option>
                        <option value="1">物理</option>
                        <option value="2">化学</option>
                        <option value="3">计算机</option>
                        <option value="4">体育</option>
                        <option value="5">生物</option>
                        <option value="6">其他</option>
                    </select>
                </div>
            </div>


            <!-- 出版时间 -->
            <div class="layui-form-item">
                <label class="layui-form-label">上架时间</label>
                <div class="layui-input-inline" style="width: 200px;">
                    <input type="text" name="publishTime1" value="${equipment.publishTime}" pattern="yyyy年MM月"
                           autocomplete="off" class="layui-input" disabled>
                </div>
            </div>

            <!-- 出版时间 -->
            <div class="layui-form-item">
                <label class="layui-form-label">重新选择上架时间</label>
                <div class="layui-input-inline" style="width: 200px;">
                    <input type="date" name="publishTime" pattern="yyyy年MM月"
                           autocomplete="off" class="layui-input">
                </div>
            </div>

            <!-- 图书简介 -->
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">资源简介</label>
                <div class="layui-input-block">
						<textarea name="introduction" class="layui-textarea"
                                  style="width: 400px; height: 150px">${equipment.introduction}</textarea>
                </div>
            </div>

            <!-- 图书的封面图片 -->
            <div class="layui-form-item">
                <label class="layui-form-label">原资源图片</label>
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

            <!-- 图书的封面图片按钮 -->
            <div class="layui-form-item">
                <label class="layui-form-label">上传新图片</label>
                <div class="layui-upload">
                    <input type="file" name="file" class="img_btn"
                           onchange="showPreview(this)"/>
                </div>
            </div>

            <!-- 图书的封面图片 -->
            <div class="layui-form-item">
                <label class="layui-form-label"></label>
                <div class="layui-upload">
                    <div class="layui-upload-list">
                        <img id="portrait" src=""
                             style="display: none; width: 100px; height: 140px;"/>
                    </div>
                </div>
            </div>

            <!-- 提交图书信息 -->
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
