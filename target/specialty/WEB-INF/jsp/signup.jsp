<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/9/29
  Time: 20:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="../static/libs/bootstrap/css/bootstrap.min.css">
    <!-- Custom styles for this template -->
    <link href="../static/css/sign.css" rel="stylesheet">
    <link href="../static/css/back.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../static/libs/iconfont/iconfont.css">
</head>
<body>
<div class="back"><a href="#" onclick="back()"><<返回</a></div>
<div class="page">
    <div class="content">
        <div class="container form-wrap">
            <div class="js-alert">
                <!-- 成功alert-success 失败:alert-warning 替换即可 -->
                <div class="alert alert-success alert-dismissible hidden" id="registerMessage" role="alert">
                    <button type="button" class="close" data-dismiss="alert"><span aria-hidden="true">&times;</span><span
                            class="sr-only">Close</span></button>
                    <div id="regMessage">注册成功，请<strong><a href="/sign/toSignIn">点击登录</a></strong>。</div>
                </div>
            </div>
            <!-- #############################这里变了#############################-->
            <h2 class="form-signin-heading">用户注册</h2>

            <div class="form-group">
                <div class="radio">
                    <label for="email"><input class="" id="email" type="radio" name="usertype" value="0" checked>邮箱注册</label>
                    <label for="phone"><input class="" id="phone" type="radio" name="usertype" value="1" >手机注册</label>
                </div>

            </div>

<%--            邮箱注册页面--%>

            <form class="form-signin" role="form" id="signforNomal" action="" method="post">
                <div class="form-group">
                    <label for="nEmail">邮箱</label>
                    <input type="email" id="nEmail" name="email" class="form-control" placeholder="邮箱"  >
                </div>
                <div class="form-group">
                    <label for="nUsername">用户名</label>
                    <input type="text" id="nUsername" name="userName" class="form-control" placeholder="用户名" >
                </div>
                <div class="form-group">
                    <label for="nPassword">密码</label>
                    <input type="password" id="nPassword" name="password" class="form-control" placeholder="密码" >
                </div>
                <div class="form-group">
                    <label for="nRePaw">重复密码</label>
                    <input type="password" id="nRePaw"  class="form-control" placeholder="重复密码" >
                </div>
                <button class="btn btn-warning btn-lg btn-block" type="button" onclick="register('signforNomal')">注册</button>
                <button class="btn btn-default btn-lg btn-block" type="reset">重置</button>
            </form>

<%--            手机注册页面--%>

            <form class="form-signin hidden" id="signforPhone" role="form" action="" method="post">
                <div class="form-group">
                    <label for="pPhone">手机号</label>
                    <input type="tel" id="pPhone" name="phone" class="form-control" placeholder="手机号"  >
                </div>
                <div class="form-group">
                    <label for="pUsername">用户名</label>
                    <input type="text" id="pUsername" name="username" class="form-control" placeholder="用户名" >
                </div>
                <div class="form-group">
                    <label for="pPassword">密码</label>
                    <input type="password" id="pPassword" name="password" class="form-control" placeholder="密码" >
                </div>
                <div class="form-group">
                    <label for="pRePaw">重复密码</label>
                    <input type="password" id="pRePaw" name="confirm_password" class="form-control" placeholder="重复密码" >
                </div>
                <button class="btn btn-warning btn-lg btn-block" type="button" onclick="register('signforPhone')">注册</button>
                <button class="btn btn-default btn-lg btn-block" type="reset">重置</button>
            </form>
            <p class="signTip">已有帐号，<a href="/sign/toSignIn">点击登录</a></p>
            <!-- #############################这里变了END#############################-->
        </div> <!-- /container -->
    </div>
</div>
<script src="../static/js/jquery.min.js"></script>
<script src="../static/libs/bootstrap/js/bootstrap.min.js"></script>
<script src="../static/js/jquery.validate.min.js"></script>
<script src="../static/js/additional-methods.js"></script>
<!-- #############################这里变了#############################-->
<script src="../static/js/signup.js"></script>
<script src="../static/js/message.js"></script>
<script>
   function register(var1) {
     $.ajax({
       url:"${pageContext.request.contextPath}/sign/signUp",
       dataType:"json",
       data:$("#"+var1).serialize(),
       method:"post",
       success:function (data) {
         if (data.message == 1){
           regSuccess()
         }else{
           regFalut(data.message)
         }
       }
     })
   }

</script>
</body>
</html>
