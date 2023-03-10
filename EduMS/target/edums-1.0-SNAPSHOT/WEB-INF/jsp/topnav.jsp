<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="baseUri" value="${pageContext.request.contextPath }" scope="request"/>
<div class="layui-header">
    <div><a href="${baseUri}/index" class="layui-logo">教育局综合信息管理平台</a></div>

    <ul class="layui-nav layui-layout-right">
        <li class="layui-nav-item">
            <a href="javascript:void(0)">
                <img class="layui-nav-img" src="${baseUri}${sessionScope.imgPath}/${sessionScope.user.avatar}">
                ${sessionScope.user.username}
            </a>
        </li>
        <li class="layui-nav-item"><a href="${baseUri}/logout">退出</a></li>
    </ul>
</div>
