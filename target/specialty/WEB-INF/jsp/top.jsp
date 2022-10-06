<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/9/28
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="../static/css/top.css"/>
</head>
<body>
<div class="top-nav cf">
    <div class="top-nav-inner">
        <div class="top-nav-l fl">
            土特产平台
        </div>
        <div class="top-nav-r fr re">
            <%
                if (session.getAttribute("user") != null){
            %>
            <div class="log-in">
                <div class="user" onmousemove="showList()" onmouseout="closeList()">
                    <img src="../static/img/${user.userImg}" alt="">
                    <a href="${pageContext.request.contextPath}/user/toPersonInfo">${user.userName}</a>
                </div>
            </div>
            <%
                }else{
            %>
                <div class="not-login ">
                    <a class="active" href="${pageContext.request.contextPath}/sign/toSignIn">亲,请<span style="color: blue">登录</span></a>
                </div>
            <%
                }
            %>
                <div class="user_list" onmousemove="showList()" onmouseout="closeList()">
                    <ul>
                        <a href="${pageContext.request.contextPath}/user/toPersonInfo" class="l"><li>个人中心</li></a>
                        <a href="${pageContext.request.contextPath}/sign/signOut" class="l"><li>注销</li></a>
                    </ul>
                </div>
        </div>
    </div>
</div>
<div class="header-nav">
    <ul class="header-menu cf">
        <li class="x"><a href="${pageContext.request.contextPath}/toIndex">首页</a></li>
        <li class=""><a href="#">二手商品</a></li>
        <li class=""><a href="#">个人中心</a></li>
        <li class=""><a href="#">发布商品</a></li>
    </ul>
    <div class="header-search fr">
        <form method="get" action="" name="search">
            <input class="input-search" id="HeaderSearchQuery" name="q" type="text" value="" placeholder="搜宝贝"
                   autocomplete="off">
            <button class="btn-search" type="submit"><i class="iconfont icon-sousuo"></i><span
                    class="search-img"></span></button>
        </form>
    </div>
</div>

<script src="../static/js/top.js"></script>
</body>
</html>
