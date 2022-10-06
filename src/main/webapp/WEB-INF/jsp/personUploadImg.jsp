<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/9/29
  Time: 20:33
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
            <div class="main-content">
                <div class="person-info">
                    <h2 class="page-header">更换头像</h2>
                    <form role="form" method="post" action="${pageContext.request.contextPath}/user/toUpload" id="imgUpload" enctype="multipart/form-data">
                        <input id="userId" name="userId" type="text" hidden value="${user.userId}"/>
                        <div class="form-group">
                            <label for="fileupload">
                                <div class="imgBox">
                                    <img src="../static/img/upload_img.png" alt="">
                                    <p>请添加图片</p>
                                </div>
                            </label>
                            <input type="file" accept="image/png,image/gif,image/jpeg" name="file" id="fileupload" style="display: none;">
                            <p class="help-block">请选择图片格式文件上传,支持文件类型（jpg,png,gif）</p>
                        </div>
                        <button type="submit" class="btn btn-default">上传图片</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<%--<script>
  function uploadImg() {
    var paramValue = $("#userId").val()
    var formData = new FormData($("#imgUpload"))
    formData.append("userId",paramValue)

    $.ajax({
      url:"${pageContext.request.contextPath}/user/toUpload",
      dataType:"json",
      data:formData,
      type:"post",
      success:function (data) {
        alert(data)
      }
    })
  }
</script>--%>
<jsp:include page="footer.jsp"/>
<script src="../static/js/jquery.min.js"></script>
<script src="../static/libs/bootstrap/js/bootstrap.min.js"></script>
<script src="../static/js/publish.js"></script>
</body>
</html>
