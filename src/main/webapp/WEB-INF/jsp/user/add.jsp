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
    <c:import url="/WEB-INF/jsp/user/leftnav.jsp"/>

    <div class="layui-body" style="padding: 15px">

        <fieldset class="layui-elem-field layui-field-title">
            <legend>添加用户</legend>
        </fieldset>

        <form class="layui-form" style="width: 600px" action="${baseUri}/user/add" method="post"
              enctype="multipart/form-data">
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-block">
                    <input type="text" name="username" required lay-verify="required" placeholder="请输入用户名"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">密码</label>
                <div class="layui-input-block">
                    <input type="password" name="password" required lay-verify="required" placeholder="请输入密码"
                           autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">邮箱</label>
                <div class="layui-input-block">
                    <input type="text" name="email" required lay-verify="required" placeholder="请输入邮箱"
                           autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <label class="layui-form-label">头像</label>
                <div class="layui-input-block">
                    <input type="file" name="avatarFile"
                           onchange="showPreview(this)"/>
                </div>
            </div>

            <!-- 头像 -->
            <div class="layui-form-item">
                <label class="layui-form-label">选择的头像</label>
                <div class="layui-upload">
                    <div class="layui-upload-list">
                        <img id="portrait" src=""
                             style="display: none; width: 64px; height: 64px;"/>
                    </div>
                </div>
            </div>

            <c:if test="${error != null}">
                <p style="color: red">${error}</p>
            </c:if>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn">提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script src="${baseUri}/static/layui/layui.all.js"></script>
</body>
</html>
