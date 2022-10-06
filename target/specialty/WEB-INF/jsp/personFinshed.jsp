<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/9/29
  Time: 20:26
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
            <!--当里面没内容的时候,将class hidden去掉,在下面resell-list里加入hidden-->
            <div class="empty-page no-orders hidden">
                <p class="tips-title">亲,这里似乎什么东西都没有哦</p>
                <a href="#" type="button" class="btn btn-success btn-block btn-publish">发布宝贝</a>
            </div>
            <div id="resell-list" class="">
                <!-- 列表头 -->
                <div class="hd">
                    <table>
                        <thead>
                        <tr>
                            <th class="item-info">宝贝</th>
                            <th class="unit">原价（元）</th>
                            <th class="amount">数量</th>
                            <th class="pay">成交价（元）</th>
                            <th class="operation">操作</th>
                        </tr>
                        </thead>
                    </table>
                </div>

                <!-- 列表主体 -->
                <div class="bd ">
                    <ul>

                        <li class="selected">
                            <table>
                                <tbody>
                                <tr>
                                    <td colspan="5" class="deal-date">时间：2016-11-24 13:07
                                        &nbsp;&nbsp;订单号：1111111111111
                                    </td>
                                </tr>
                                <tr>
                                    <td class="item-info">
                                        <a href="//trade.taobao.com/trade/detail/tradeSnap.htm?tradeID=2724287502365181"
                                           target="_blank"><img alt="查看宝贝详情"
                                                                src=""></a>
                                        <p class="title">
                                            <a href="//trade.taobao.com/trade/detail/tradeSnap.htm?tradeID=2724287502365181"
                                               target="_blank">绿联HDMI转VGA转换器带音频高清转vga接口头视频线电脑盒子投影仪</a>
                                        </p>
                                        <p class="attr"></p>
                                        <p class="attr">类型:全新宝贝</p>
                                        <p></p>
                                    </td>
                                    <td class="unit">68.01</td>
                                    <td class="amount">1</td>
                                    <td rowspan="1" class="pay">
                                        <p>67.78</p>
                                        <p class="sub">
                                        </p>
                                    </td>
                                    <td class="operation">
                                        <a href="#" type="button" class="btn btn-info btn-block btn-delete">查看宝贝</a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </li>
                        <li class="selected">
                            <table>
                                <tbody>
                                <tr>
                                    <td colspan="5" class="deal-date">时间：2016-11-24 13:07
                                        &nbsp;&nbsp;订单号：1111111111111
                                    </td>
                                </tr>
                                <tr>
                                    <td class="item-info">
                                        <a href="//trade.taobao.com/trade/detail/tradeSnap.htm?tradeID=2724287502365181"
                                           target="_blank"><img alt="查看宝贝详情"
                                                                src=""></a>
                                        <p class="title">
                                            <a href="//trade.taobao.com/trade/detail/tradeSnap.htm?tradeID=2724287502365181"
                                               target="_blank">绿联HDMI转VGA转换器带音频高清转vga接口头视频线电脑盒子投影仪</a>
                                        </p>
                                        <p class="attr"></p>
                                        <p class="attr">类型:全新宝贝</p>
                                        <p></p>
                                    </td>
                                    <td class="unit">68.01</td>
                                    <td class="amount">1</td>
                                    <td rowspan="1" class="pay">
                                        <p>67.78</p>
                                        <p class="sub">
                                        </p>
                                    </td>
                                    <td class="operation">
                                        <a href="#" type="button" class="btn btn-info btn-block btn-delete">查看宝贝</a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </li>
                        <li class="selected">
                            <table>
                                <tbody>
                                <tr>
                                    <td colspan="5" class="deal-date">时间：2016-11-24 13:07
                                        &nbsp;&nbsp;订单号：1111111111111
                                    </td>
                                </tr>
                                <tr>
                                    <td class="item-info">
                                        <a href="//trade.taobao.com/trade/detail/tradeSnap.htm?tradeID=2724287502365181"
                                           target="_blank"><img alt="查看宝贝详情"
                                                                src=""></a>
                                        <p class="title">
                                            <a href="//trade.taobao.com/trade/detail/tradeSnap.htm?tradeID=2724287502365181"
                                               target="_blank">绿联HDMI转VGA转换器带音频高清转vga接口头视频线电脑盒子投影仪</a>
                                        </p>
                                        <p class="attr"></p>
                                        <p class="attr">类型:全新宝贝</p>
                                        <p></p>
                                    </td>
                                    <td class="unit">68.01</td>
                                    <td class="amount">1</td>
                                    <td rowspan="1" class="pay">
                                        <p>67.78</p>
                                        <p class="sub">
                                        </p>
                                    </td>
                                    <td class="operation">
                                        <a href="#" type="button" class="btn btn-info btn-block btn-delete">查看宝贝</a>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </li>


                    </ul>
                </div>

                <div class="page-nav">
                    <nav>
                        <ul class="pagination">
                            <li><a href="#">&laquo;</a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li class="#"><a href="#">&raquo;</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>


    </div>
</div>
<jsp:include page="footer.jsp"/>
<script src="../static/js/jquery.min.js"></script>
<script src="../static/libs/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
