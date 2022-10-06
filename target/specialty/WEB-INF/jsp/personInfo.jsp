<%@ page import="com.specialty.pojo.User" %><%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/9/29
  Time: 20:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="../static/libs/bootstrap/css/bootstrap.min.css">
    <!-- Custom styles for this template -->
    <link href="../static/css/person.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../static/libs/iconfont/iconfont.css">
</head>
<body>
<jsp:include page="top.jsp"/>
<div class="page">
    <div class="content">

        <div class="content person cf">
            <jsp:include page="left.jsp"/>
            <div class="main-content forms">
                <div class="person-info">
                    <h2 class="page-header">个人信息维护</h2>
                    <p class="userId">用户id: <span>${user.userId}</span></p>
                    <form role="form" id="infoForm" action="#" method="post">
                        <input  type="text" name="userId" value="10008" hidden/>
                        <div class="form-group">
                            <label for="username">昵称</label>
                            <input type="text" id="username" name="userName" class="form-control" value="${user.userName}" placeholder="输入昵称">
                        </div>
                        <div class="form-group">
                            <p>性别</p>
                            <select name="sex" class="form-control">
                                <option value="">请选择性别</option>
                                <option value="1"
                                <%
                                    if (session.getAttribute("user") != null){
                                        User user = (User) session.getAttribute("user");
                                        if (user.getSex() != null && user.getSex() == 1){
                                            %>
                                        selected="1"
                                <%
                                        }
                                    }
                                %>
                                >男</option>
                                <option value="0"
                                        <%
                                            if (session.getAttribute("user") != null){
                                                User user = (User) session.getAttribute("user");
                                                if (user.getSex() != null && user.getSex() == 0){
                                        %>
                                        selected="0"
                                        <%
                                                }
                                            }
                                        %>
                                >女</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="phone">手机</label>
                            <input type="text" name="phone" id="phone" class="form-control" value="${user.phone}" placeholder="请填写手机号">
                        </div>
                        <div class="form-group">
                            <label for="email">邮箱</label>
                            <input type="email" name="email" id="email" class="form-control" value="${user.email}"  placeholder="填写邮箱地址">
                        </div>
                        <button type="button" class="btn btn-default" onclick="updateInfo()">提交</button>
                        <button type="button" class="btn btn-default" onclick="changeForm('pwdForm')">修改密码</button>
                    </form>

                    <form role="form" id="pwdForm" action="#" class="hidden" method="post">
                        <input  type="text" name="userId" value="10008" hidden/>
                        <div class="form-group">
                            <label for="oldpwd">旧密码</label>
                            <input type="text" id="oldpwd" name="oldpwd" class="form-control" placeholder="请输入旧密码">
                        </div>
                        <div class="form-group">
                            <label for="newpwd">新密码</label>
                            <input type="text" id="newpwd" name="newpwd" class="form-control" placeholder="请输入新密码">
                        </div>
                        <div class="form-group">
                            <label for="confirmpwd">重复密码</label>
                            <input type="text" id="confirmpwd" name="confirmpwd" class="form-control" placeholder="请确认新密码">
                        </div>
                        <button type="button" class="btn btn-default" onclick="updatePwd()">提交</button>
                        <button type="button" class="btn btn-default" onclick="changeForm('infoForm')">修改信息</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>
<script src="../static/js/jquery.min.js"></script>
<script src="../static/libs/bootstrap/js/bootstrap.min.js"></script>
<script src="../static/js/jquery.validate.min.js"></script>
<script src="../static/js/additional-methods.js"></script>
<script src="../static/js/publish.js"></script>
<script>
  function updateInfo() {
    $.ajax({
      url:"${pageContext.request.contextPath}/user/toUpdateInfo",
      dataType:"json",
      data:$("#infoForm").serialize(),
      method:"post",
      success:function (data) {
        console.log(data)
        if (data.flag){
          alert("修改成功")
        }else{
          alert("修改失败")
        }
      }
    })
  }
  function updatePwd() {
    $.ajax({
      url:"${pageContext.request.contextPath}/user/toUpdatePwd",
      dataType:"json",
      data:$("#pwdForm").serialize(),
      method:"post",
      success:function (data) {
        if (data.message)
          alert(data.message)
        else if (data.flag)
          alert("修改成功")
        else
          alert("修改失败")
      }
    })
  }
</script>
</body>
</html>
