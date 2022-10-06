<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/9/28
  Time: 22:20
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
    <link rel="stylesheet" type="text/css" href="../static/libs/iconfont/iconfont.css">
    <link rel="stylesheet" href="../static/css/details.css">

</head>
<body>
<jsp:include page="top.jsp"/>
<div class="page cf">
    <div class="banner_in">
        <ul class="username">
            <li>
                <p class="p1">用户名</p>
                <p>hdy</p>
            </li>
            <li>
                <p class="p1">宝贝浏览次数</p>
                <p>106</p>
            </li>
            <li>
                <p class="p1">最近编辑</p>
                <p>2016-12-04 17：09</p>
            </li>
            <!-- new -->
            <div class="goods-del fr">
                <button type="button" class="btn btn-warning">删除商品</button>
            </div>
            <!-- new -->
        </ul>
    </div>
    <div class="show">
        <div class="show_left">
            <div class="show_pic">
                <div class="slider">
                    <ul class="slider-main">
                        <li class="slider-panel">
                            <a href="http://www.jb51.net" target="_blank"><img alt="" title="" src="img/1.jpg"></a>
                        </li>
                        <li class="slider-panel">
                            <a href="http://www.jb51.net" target="_blank"><img alt="" title="" src="img/2.jpg"></a>
                        </li>
                        <li class="slider-panel">
                            <a href="http://www.jb51.net" target="_blank"><img alt="" title="" src="img/3.jpg"></a>
                        </li>
                        <li class="slider-panel">
                            <a href="http://www.jb51.net" target="_blank"><img alt="" title="" src="img/4.jpg"></a>
                        </li>
                    </ul>
                    <div class="slider-extra">

                        <div class="slider-page">


                        </div>
                    </div>
                    <ul class="slider-nav">
                        <a class="slider-pre" href="javascript:;;">
                            <</a>
                        <li class="slider-item">
                            <a href="" target="_blank"><img alt="" title="" src="img/1_thumb.jpg"></a>
                        </li>
                        <li class="slider-item">
                            <a href="" target="_blank"><img alt="" title="" src="img/2_thumb.jpg"></a>
                        </li>
                        <li class="slider-item">
                            <a href="" target="_blank"><img alt="" title="" src="img/3_thumb.jpg"></a>
                        </li>
                        <li class="slider-item">
                            <a href="" target="_blank"><img alt="" title="" src="img/4_thumb.jpg"></a>
                        </li>
                        <a class="slider-next" href="javascript:;;">></a>
                    </ul>
                </div>
            </div>
            <div class="show_dsc">
                <div class="dsc_bt">
                    <a href="##" target="_blank" class="active" id="tag1" onmouseover="showTag(1)">宝贝介绍</a>
                    <a href="##" target="_blank" id="tag2" onmouseover="showTag(2)">留言</a>
                    <a href="##" target="_blank" id="tag3" onmouseover="showTag(3)">安全保障</a>
                </div>
                <div class="container">
                    <div class="active cf" id="div1">
                        <h5>如遇到以下情况可能是诈骗行为：1.宝贝价格异常低；2.卖家要求QQ沟通；3.卖家要求直接汇款。</h5>
                        <div class="dsc_bt_in">
                            宝贝介绍
                        </div>
                        <div class="dsc_zw">
                            有保护套的缘故无任何划伤，屏幕有钢化膜，16G版的，有32G的内存卡，买来过后发现没啥用，一直放在那里，偶尔开机听听歌，发票什么的都齐全支持快充有华为商城买的12v充电器，四个扬声器两个低音两个高音，音质画质没得说，限新余本地1400
                        </div>
                    </div>
                    <div id="div2" class="cf" style="display:none">
                        <h5>如遇到以下情况可能是诈骗行为：1.宝贝价格异常低；2.卖家要求QQ沟通；3.卖家要求直接汇款。</h5>
                        <div class="dsc_bt_in">
                            留言
                        </div>
                        <!-- #############################这里变了#############################-->
                        <div class="dsc_zw cf">
                            <!-- #############################这里变了END#############################-->
                            <div class="message">
                                <img src="img/tx.jpg" alt="" class="tx">
                                <ul>
                                    <li class="message_1">hyd回复@楼主：</li>
                                    <li class="message_2">
                                        楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！楼主沙比！
                                    </li>
                                    <li class="message_3">
                                        <p>2016-12-05 11:34</p>
                                    </li>
                                </ul>
                                <button type="button" class="btn btn-danger btn-xs message-btn">删除</button>
                            </div>

                        </div>
                        <div class="recover">
                            <form action="">
                                <div class="recover_in">
                                    <textarea name="comments" id="" cols="30" rows="10"></textarea>
                                    <input type="submit" value="提交">
                                </div>
                            </form>
                        </div>
                    </div>
                    <div id="div3" class="cf" style="display:none">
                        <h5>如遇到以下情况可能是诈骗行为：1.宝贝价格异常低；2.卖家图片及描述不清；3.卖家要求直接汇款。</h5>
                        <div class="dsc_bt_in">
                            安全保障
                        </div>
                        <div class="dsc_zw">
                            该平台仅限校园内交易,不涉及在线支付及网银转账,并有专人维护,保障安全。
                        </div>
                    </div>
                </div>


            </div>
        </div>
        <div class="show_right">
            <div class="show_r_t">
                <p>2014macbook pro 13.3 全闪存</p>
                <ul class="show_mes">
                    <!-- #############################这里变了#############################-->
                    <li>转 卖 价：<span style="font-size: 24px; color: #666;padding-right: 5px">$</span><span
                            style="font-size: 24px; color:#f40;">9999.99</span></li>

                    <li class="li_two">原 &nbsp;&nbsp;&nbsp; 价：$9999.99</li>
                    <li class="li_three">成 &nbsp;&nbsp;&nbsp; 价：$9999.99</li>
                    <li>所 在 地：火星</li>
                    <li>联系方式：<a href="#" target="_blank" class="talk">与他对话</a></li>
                    <li>交易方式：<a href="#" target="_blank" class="change">与他联系</a></li>
                    <li>
                        <button type="button" class="btn btn-warning buy" data-toggle="modal" data-target="#contact">
                            与他联系
                        </button>
                    </li>
                    <li><span class="tips">交易流程:</span>
                        <p>买家通过上方“与他联系”与卖家取得联系,并与卖家经过协商,最终卖家同意交易,即交易成功。</p></li>

                </ul>
                <!-- Modal -->
                <div class="modal fade" id="contact" tabindex="-1" role="dialog" aria-labelledby="contactLabel"
                     aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal"><span
                                        aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                <h4 class="modal-title" id="contactLabel">提交购买请求</h4>
                            </div>
                            <form method="post">
                                <div class="modal-body">

                                    <div class="form-group">
                                        <label for="">联系方式</label>
                                        <input name="contact" type="tel" class="form-control"
                                               placeholder="务必填写真实有效的手机号码">
                                        <br>
                                        <code>务必填写真实有效的手机号码</code>
                                    </div>
                                    <div class="form-group">
                                        <label for="">购买意向</label>
                                        <textarea name="message" class="form-control" cols="30" rows="10" placeholder="填写格式请参照下方（包括成交价格,联系方式,交易地点,其他留言）"></textarea>
                                        <br>
                                        <code>1.成交价格:</code><br>
                                        <code>2.联系方式:</code><br>
                                        <code>3.交易地点:</code><br>
                                        <code>4.其他留言</code><br>

                                    </div>
                                    <h5>用户提交购买需求后,可以主动与卖家联系,也可等待卖家与您联系协商。</h5>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                    <button type="submit" class="btn btn-primary">确认提交</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

                <!-- #############################这里变了END#############################-->
            </div>
        </div>
    </div>


</div>
<jsp:include page="footer.jsp"/>
<script src="../static/js/jquery.min.js"></script>
<script src="../static/libs/bootstrap/js/bootstrap.min.js"></script>
<script src="../static/js/show.js"></script>

</body>
</html>
