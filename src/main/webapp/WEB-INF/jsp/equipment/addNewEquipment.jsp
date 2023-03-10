<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="baseUri" value="${pageContext.request.contextPath }" scope="request"/>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>某市教育局综合信息管理平台</title>
    <link rel="stylesheet" href="${baseUri}/static/layui/css/layui.css">
    <script type="text/javascript">
      function showPreview(source) {
        var file = source.files[0];
        if (window.FileReader) {
          var fr = new FileReader();
          console.log(fr);
          var portrait = document.getElementById('portrait');
          fr.onloadend = function (e) {
            portrait.src = e.target.result;
          };
          fr.readAsDataURL(file);
          portrait.style.display = 'block';
        }
      }
    </script>
</head>

<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">

    <!-- 引入头部导航 -->
    <c:import url="/WEB-INF/jsp/topnav.jsp"/>

    <!-- 引入左边导航 -->
    <c:import url="/WEB-INF/jsp/equipment/leftnav.jsp"/>

    <div class="layui-body" style="padding: 15px">

        <fieldset class="layui-elem-field layui-field-title">
            <legend>上架新资源</legend>
        </fieldset>

        <form class="layui-form" action="${baseUri}/equipment/addNewEquipment" method="post"
              enctype="multipart/form-data">

            <!-- 设备名称 -->
            <div class="layui-form-item">
                <label class="layui-form-label">资源名称</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" name="title" lay-verify="required"
                           autocomplete="off" placeholder="请输入标题" class="layui-input">
                </div>
            </div>

            <!-- 设备编号 -->
            <div class="layui-form-item">
                <label class="layui-form-label">编号</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" name="isbn" lay-verify="required"
                           autocomplete="off" placeholder="请输入编号" class="layui-input">
                </div>
            </div>

            <!-- 设备负责人 -->
            <div class="layui-form-item">
                <label class="layui-form-label">负责人</label>
                <div class="layui-input-block" style="width: 400px;">
                    <input type="text" name="author" lay-verify="required"
                           autocomplete="off" placeholder="请输入负责人" class="layui-input">
                </div>
            </div>

            <!-- 设备价格 -->
            <div class="layui-form-item">
                <label class="layui-form-label">价格</label>
                <div class="layui-input-inline" style="width: 100px;">
                    <input type="text" name="price" placeholder="元" autocomplete="off"
                           class="layui-input">
                </div>
            </div>

            <!-- 上架时间 -->
            <div class="layui-form-item">
                <label class="layui-form-label">上架时间</label>
                <div class="layui-input-inline" style="width: 150px;">
                    <input type="date" name="publishTime" autocomplete="off"
                           class="layui-input">
                </div>
            </div>

            <!-- 设备分类 -->
            <div class="layui-form-item">
                <label class="layui-form-label">资源分类</label>
                <div class="layui-input-block" style="width: 300px;">
                    <select name="categoryId" lay-verify="required">
                        <option value="">请选择</option>
                        <option value="1">物理</option>
                        <option value="2">化学</option>
                        <option value="3">计算机</option>
                        <option value="4">体育</option>
                        <option value="5">生物</option>
                        <option value="6">其他</option>
                    </select>
                </div>
            </div>

            <!-- 资源简介 -->
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">资源简介</label>
                <div class="layui-input-block">
						<textarea name="introduction" placeholder="请输入内容" class="layui-textarea"
                                  style="width: 400px; height: 150px"></textarea>
                </div>
            </div>


            <div class="layui-form-item">
                <label class="layui-form-label">资源图片</label>
                <div class="layui-upload">
                    <input type="file" name="file" class="img_btn"
                           onchange="showPreview(this)"/>
                </div>
            </div>

            <!-- 资源图片 -->
            <div class="layui-form-item">
                <label class="layui-form-label">选择的图片</label>
                <div class="layui-upload">
                    <div class="layui-upload-list">
                        <img id="portrait" src=""
                             style="display: none; width: 100px; height: 140px;"/>
                    </div>
                </div>
            </div>

            <!-- 提交设备信息 -->
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
