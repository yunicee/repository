<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/9/29
  Time: 20:40
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
<div class="back"><a href="#"><<返回</a></div>
<div class="page">
    <div class="content">
        <div class="container form-wrap">
            <div class="js-alert">
                <!-- 成功alert-success 失败:alert-warning 替换即可 -->
                <div class="alert alert-success alert-dismissible  hidden" id="registerMessage" role="alert">
                    <button type="button" class="close" data-dismiss="alert"><span
                            aria-hidden="true">&times;</span><span
                            class="sr-only">Close</span></button>
                    <div id="regMessage">登录成功，请<strong><a href="#">点击跳转</a></strong>。</div>
                </div>
            </div>
            <form class="form-signin" id="loginForm" role="form" action="" method="post">
                <h2 class="form-signin-heading">用户登录</h2>
                <div class="form-group">
                    <label for="username">用户名</label>
                    <input type="text" name="username" id="username" class="form-control" placeholder="邮箱或手机" required autofocus>
                </div>
                <div class="form-group">
                    <label for="password">密码</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="密码" required>
                </div>
                <button class="btn btn-warning btn-lg btn-block" type="button" onclick="login()">立即登录</button>
                <button class="btn btn-default btn-lg btn-block" data-toggle="modal" data-target="#findPwd">忘记密码</button>
            </form>
            <p class="signTip">还没有帐号？<a href="/sign/toSignUp">点击注册</a></p>


            <!-- 找回密码 -->
            <div class="modal fade" id="findPwd" tabindex="-1" role="dialog" aria-labelledby="forgotPwd" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                            <h4 class="modal-title" id="forgotPwd">忘记密码</h4>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <h5>请联系管理员进行重置。</h5>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- /container -->
    </div>
</div>
<script src="../static/js/jquery.min.js"></script>
<script src="../static/libs/bootstrap/js/bootstrap.min.js"></script>
<script src="../static/js/jquery.validate.min.js"></script>
<script src="../static/js/signin.js"></script>
<script src="../static/js/message.js"></script>
<script>
  function login() {
    $.ajax({
      url:"${pageContext.request.contextPath}/sign/signIn",
      dataType:"json",
      data:$("#loginForm").serialize(),
      type:"post",
      success:function (data) {
        console.log(data)
        if (data != null){
          if (data.message != "登录成功"){
            regFalut(data.message)
          }else{
            window.location.href = "${pageContext.request.contextPath}/toIndex"
          }
        }
      }
    })
  }

</script>
</body>
</html>
