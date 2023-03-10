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
            <legend>所有资源</legend>
        </fieldset>

        <div class="layui-form">
            <table class="layui-table">
                <colgroup>
                    <col width="150">
                    <col width="150">
                    <col width="150">
                    <col width="80">
                    <col width="80">
                    <col width="350">
                    <col width="130">
                    <col width="50">
                    <col width="50">
                    <col width="50">
                    <col>
                </colgroup>
                <thead>
                <tr>
                    <th>编号</th>
                    <th>名称</th>
                    <th>负责人</th>
                    <th>类型</th>
                    <th>价格(元)</th>
                    <th>简介</th>
                    <th>图片</th>
                    <th>查看</th>
                    <th>编辑</th>
                    <th>维修</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${pageMsg.lists}" var="equipment">
                    <tr>
                        <td>${equipment.isbn }</td>
                        <td>${equipment.title }</td>
                        <td>${equipment.author }</td>
                        <td><c:if test="${equipment.categoryId==1 }">物理</c:if> <c:if
                                test="${equipment.categoryId==2 }">化学</c:if> <c:if
                                test="${equipment.categoryId==3 }">计算机</c:if> <c:if
                                test="${equipment.categoryId==4 }">体育</c:if> <c:if
                                test="${equipment.categoryId==5 }">生物</c:if> <c:if
                                test="${equipment.categoryId==6 }">其他</c:if></td>
                        <td>${equipment.price }</td>
                        <td>${equipment.introduction }</td>
                        <td>
                            <c:if test="${equipment.image==null}">
                                <img src="${baseUri}/static/images/equipment.jpg" width="80px" height="100px;">
                            </c:if>
                            <c:if test="${equipment.image !=null }">
                                <c:if test="${equipment.image=='' }">
                                    <img src="${baseUri}/static/images/equipment.jpg" width="80px" height="100px;">
                                </c:if>
                                <c:if test="${equipment.image !='' }">
                                    <img src="${baseUri}${sessionScope.imgPath}/${equipment.image}" alt="" width="80px"
                                         height="100px;">
                                </c:if>
                            </c:if>
                        </td>
                        <td>
                            <a class="layui-btn" style="background-color: cadetblue"
                               href="${baseUri}/equipment/equipmentDetail?id=${equipment.id }">查看</a>
                        </td>
                        <td>
                            <a class="layui-btn" style="background-color: rgb(204, 139, 41)"
                               href="${baseUri}/equipment/toUpdateEquipment?id=${equipment.id }">编辑</a>
                        </td>
                        <td>
                            <a class="layui-btn" id="soldEquipment" style="background-color: rgb(211, 26, 81)"
                               href="${baseUri}/equipment/deleteEquipment?id=${equipment.id }">维修</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>

        <!-- 页码显示 -->
        <div class="pageshow">
            <span> 第${pageMsg.currPage }/${pageMsg.totalPage}页</span>
            &nbsp;&nbsp;
            <span>总记录数：${pageMsg.totalCount }&nbsp;&nbsp;每页显示:${pageMsg.pageSize}</span>
            &nbsp;&nbsp;
            <span>
            <c:if test="${pageMsg.currPage != 1}">
                <a href="${baseUri}/equipment/showEquipment?currentPage=1">[首页]</a>&nbsp;&nbsp;
                <a href="${baseUri}/equipment/showEquipment?currentPage=${pageMsg.currPage-1}">[上一页]</a>&nbsp;&nbsp;
            </c:if>
            <c:if test="${pageMsg.currPage != pageMsg.totalPage}">
                <a href="${baseUri}/equipment/showEquipment?currentPage=${pageMsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
                <a href="${baseUri}/equipment/showEquipment?currentPage=${pageMsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
            </c:if>
            </span>
        </div>
    </div>
</div>

<script src="${baseUri}/static/layui/layui.all.js"></script>
</body>
</html>
