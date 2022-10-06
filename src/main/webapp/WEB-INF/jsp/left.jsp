<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/9/29
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="../static/css/person.css" rel="stylesheet">
</head>
<body>
<div class="leftside">
    <div class="user-info">
        <div class="user-avatar">
            <a href="${pageContext.request.contextPath}/user/toImgLoad"><img src="${pageContext.request.contextPath}/static/img/${user.userImg}" alt=""></a>
        </div>
        <a href="${pageContext.request.contextPath}/user/toPersonInfo" class="user-nick">${user.userName}</a>
    </div>
    <ul class="navigations">
        <li class="selected"><a href="${pageContext.request.contextPath}/user/toPersonInfo" onclick="select(1)">个人信息</a></li>
        <li class=""><a href="#" onclick="select(2)">我的宝贝</a></li>
        <li class=""><a href="#" onclick="select(3)">已售出的</a></li>
        <li class=""><a href="#" onclick="select(4)">已买到的</a></li>
        <li class=""><a href="#" onclick="select(5)">管理中心</a></li>
    </ul>
</div>
    <script src="../static/js/left.js"></script>
</body>
</html>
