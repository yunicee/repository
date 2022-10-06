<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/9/29
  Time: 20:20
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
    <div class="content person cf">
        <jsp:include page="left.jsp"/>
        <div class="main-content">

            <!-- Nav tabs -->
            <ul class="nav nav-tabs" role="tablist">
                <li role="presentation" class="active"><a href="#user" role="tab" data-toggle="tab">用户管理</a></li>
                <!-- <li role="presentation" class=""><a href="#student" role="tab" data-toggle="tab">学生管理</a></li> -->
                <li role="presentation"><a href="#index" role="tab" data-toggle="tab">首页Banner管理</a></li>
            </ul>

            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="user">
                    <div class="user-list">
                        <div class="filter">
                            <form method="get" action="" name="filteuser">
                                <div class="row row_width">
                                    <div class="col-md-6 col_width"><select class="form-control">
                                        <option value="1">全部用户</option>
                                        <option value="2">普通用户</option>
                                        <option value="3">管理员</option>
                                        <!-- <option value="3">待审核</option> -->
                                    </select></div>
                                    <div class="col-md-6 col_width">
                                        <input class="form-control" id="personSearch" name="q" type="text" value="" placeholder="用户姓名"
                                               autocomplete="off">
                                    </div>
                                    <div class="col-md-6 col_width ">
                                        <button class="btn btn-default" type="submit">筛选
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <table class="table table-striped text-center ">
                            <thead>
                            <tr>
                                <th>#</th>
                                <th>用户名</th>
                                <th>注册时间</th>
                                <th>用户状态</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>1</td>
                                <td>Mark</td>
                                <td>2015-11-11</td>
                                <td><span class="label label-success">普通用户</span></td>
                                <td>
                                    <button type="button" class="btn btn-warning btn-xs js-band">禁止用户</button>
                                    <button type="button" class="btn btn-danger btn-xs js-del">删除</button>
                                    <!-- <button type="button" class="btn btn-success btn-xs disabled">审核</button> -->
                                    <button type="button" class="btn btn-primary btn-xs">设为管理员</button>
                                    <!-- <button type="button" class="btn btn-primary btn-xs">重置密码</button><code>新密码:sdada34234sf</code> -->
                                </td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Jacob</td>
                                <td>2015-11-11</td>
                                <td><span class="label label-success">普通用户</span></td>
                                <td>
                                    <button type="button" class="btn btn-warning btn-xs js-band">禁止用户</button>
                                    <button type="button" class="btn btn-danger btn-xs js-del">删除</button>
                                    <!-- <button type="button" class="btn btn-success btn-xs">审核</button> -->
                                    <button type="button" class="btn btn-primary btn-xs">设为管理员</button>
                                    <!-- <button type="button" class="btn btn-primary btn-xs">重置密码</button><code>新密码:sdada34234sf</code> -->
                                </td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Larry</td>
                                <td>2015-11-11</td>
                                <td><span class="label label-danger">管理员</span></td>
                                <td>
                                    <button type="button" class="btn btn-warning btn-xs js-band">禁止用户</button>
                                    <button type="button" class="btn btn-danger btn-xs js-del">删除</button>
                                    <!-- <button type="button" class="btn btn-success btn-xs disabled">审核</button> -->
                                    <button type="button" class="btn btn-primary btn-xs disabled">设为管理员</button>
                                    <!-- <button type="button" class="btn btn-primary btn-xs">重置密码</button><code>新密码:sdada34234sf</code> -->
                                </td>
                            </tr>

                            </tbody>
                        </table>
                        <div class="page-nav">
                            <nav>
                                <ul class="pagination">
                                    <li><a href="#">«</a></li>
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li class="disabled"><a href="#">»</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="index">
                    <h3 class="page-header">管理图片</h3>
                    <table class="table table-striped text-center">
                        <thead>
                        <tr>
                            <th>#</th>
                            <th>图片1</th>
                            <th>预览图</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>1</td>
                            <td>Mark</td>
                            <td><img src="img/banner_1.jpg" alt="" height="40"></td>
                            <td>
                                <button type="button" class="btn btn-danger btn-xs">删除</button>
                            </td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Jacob</td>
                            <td><img src="img/banner_1.jpg" alt="" height="40"></td>
                            <td>
                                <button type="button" class="btn btn-danger btn-xs">删除</button>
                            </td>
                        </tr>
                        <tr>
                            <td>3</td>
                            <td>Larry</td>
                            <td><img src="img/banner_1.jpg" alt="" height="40"></td>
                            <td>
                                <button type="button" class="btn btn-danger btn-xs">删除</button>
                            </td>
                        </tr>
                        </tbody>
                    </table>

                    <div class="upload-banner">
                        <h3 class="page-header">上传图片</h3>
                        <form role="form" method="post">
                            <div class="form-group">
                                <input type="file" accept="image/png,image/gif,image/jpeg" name="upload"
                                       id="fileupload">
                                <p class="help-block">请选择图片格式文件上传,支持文件类型（jpg,png,gif）</p>
                            </div>
                            <button type="submit" class="btn btn-primary">上传图片</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!--封禁用户-->
        <div class="modal fade" id="confirmBand">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span
                                class="sr-only">Close</span></button>
                        <h4 class="modal-title">封禁用户</h4>
                    </div>
                    <div class="modal-body">
                        <p>当前封禁用户为: ,你确认要执行此操作吗?</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary">确认封禁</button>
                    </div>
                </div><!-- /.modal-content -->
            </div><!-- /.modal-dialog -->
        </div><!-- /.modal -->
    </div>
    <!--删除用户-->
    <div class="modal fade" id="confirmDel">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span
                            aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                    <h4 class="modal-title">删除用户</h4>
                </div>
                <div class="modal-body">
                    <p>当前删除用户为: ,你确认要执行此操作吗?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary">确认删除</button>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
</div>


</div>
</div>
<jsp:include page="footer.jsp"/>
<script src="../static/js/jquery.min.js"></script>
<script src="../static/libs/bootstrap/js/bootstrap.min.js"></script>
<script src="../static/js/jquery.validate.min.js"></script>
<script src="../static/js/additional-methods.js"></script>
<script src="../static/js/person-admin.js"></script>
</body>
</html>
