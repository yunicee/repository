<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/9/29
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="../static/libs/bootstrap/css/bootstrap.min.css">
    <!-- Custom styles for this template -->
    <link href="../static/css/publish.css" rel="stylesheet">
    <link href="../static/css/back.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../static/libs/iconfont/iconfont.css">
</head>
<body>
<div class="back"><a href="#"><<返回</a></div>
<div class="page">
    <div class="content publish">
        <h2 class="page-header">发布商品</h2>
        <div class="publish-main">
            <form role="form" method="post">
                <div class="form-group">
                    <label for="">商品名称</label>
                    <input type="text" name="goods_name" class="form-control" placeholder="">
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="">原价</label>
                            <input type="text" name="source_price" class="form-control" placeholder="">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="">卖价</label>
                            <input type="text" name="goods_price" class="form-control" placeholder="">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label for="">商品分类</label>
                    <select class="form-control"  name="goods_type">
                        <option value="1">闲置数码</option>
                        <option value="2">家具日用</option>
                        <option value="3">影音家电</option>
                        <option value="4">鞋服配饰</option>
                        <option value="5">闲置图书</option>
                        <option value="6">手表配饰</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="">商品类型</label>
                    <select class="form-control"  name="goods_quality">
                        <option value="1">全新</option>
                        <option value="2">二手</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="">联系方式</label>
                    <input type="text" name="contact" class="form-control" placeholder="">
                </div>
                <div class="form-group">
                    <label for="">商品图片</label>
                    <input type="file" accept="image/png,image/gif,image/jpeg" name="upload" id="fileupload">
                    <p class="help-block">请选择图片格式文件上传,支持文件类型（jpg,png,gif）</p>
                </div>
                <div class="form-group">
                    <label for="">商品描述</label>
                    <textarea class="form-control" name="goods_desc" rows="3"></textarea>
                </div>
                <button type="submit" class="btn btn-default">提交</button>
            </form>
        </div>
    </div>
</div>

<script src="../static/js/jquery.min.js"></script>
<script src="../static/libs/bootstrap/js/bootstrap.min.js"></script>
<script src="../static/js/publish.js"></script>
</body>
</html>
