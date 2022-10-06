<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2022/9/28
  Time: 21:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="../static/libs/bootstrap/css/bootstrap.min.css">
    <!-- Custom styles for this template -->
    <link href="../static/css/index.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../static/libs/iconfont/iconfont.css">
</head>
<body>
<jsp:include page="top.jsp"/>
<div class="page">
    <div class="content">
        <div class="first-module cf">
            <div class="category">
                <ul class="category-list">
                    <li class="list-item">
                        <div class="main-cate digit">
                            <b></b>
                            <a href="#"
                               target="_blank">
                                闲置数码
                            </a>
                            <span class="main-link">
                                </span>
                        </div>
                    </li>
                    <li class="list-item">
                        <div class="main-cate daily">
                            <b></b>
                            <a href="#"
                               target="_blank">
                                家具日用
                            </a>
                            <span class="main-link">
                                </span>
                        </div>
                    </li>
                    <li class="list-item">
                        <div class="main-cate movie">
                            <b></b>
                            <a href="#"
                               target="_blank">
                                影音家电
                            </a>
                            <span class="main-link">
                                </span>
                        </div>
                    </li>
                    <li class="list-item">
                        <div class="main-cate shoes">
                            <b></b>
                            <a href="#"
                               target="_blank">
                                鞋服配饰
                            </a>
                            <span class="main-link">
                                </span>
                        </div>
                    </li>
                    <li class="list-item">
                        <div class="main-cate watch">
                            <b></b>
                            <a href="#"
                               target="_blank">
                                手表配饰
                            </a>
                            <span class="main-link">
                                </span>
                        </div>
                    </li>
                    <li class="list-item">
                        <div class="main-cate book">
                            <b></b>
                            <a href="#"
                               target="_blank">
                                闲置图书
                            </a>
                            <span class="main-link">
                                </span>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="index-slider">
                <div id="IndexSlider" class="carousel slide" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <!-- #############################这里变了#############################-->
                        <div class="item active">
                            <a href=""> <img src="img/banner_1.jpg" width="1190" height="410" alt="..."></a>
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <img src="img/banner_2.jpg" width="1190" height="410" alt="...">
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <div class="item">
                            <img src="img/banner_3.jpg" width="1190" height="410" alt="...">
                            <div class="carousel-caption">
                            </div>
                        </div>
                        <!-- #############################这里变了END#############################-->

                    </div>
                    <!-- #############################这里变了START#############################-->
                    </a>
                    <a class="right carousel-control" href="#IndexSlider"
                       role="button" data-slide="next"> <span
                            class="glyphicon glyphicon-chevron-right"></span> <span
                            class="sr-only">Next</span>
                    </a>
                    <!-- #############################这里变了END#############################-->
                </div>
            </div>
        </div>
        <div class="module second-module cf">
            <div class="head-title">
                <h2>全新闲置</h2>
            </div>
            <div class="inner-content">
                <div class="goods-list fl">
                    <ul class="item-list cf">
                        <li class="item">
                            <div class="item-pic sh-pic"><a href=""><img
                                    class="J_ItemPic"
                                    src="https://img.alicdn.com/bao/uploaded/i3/TB1M7nCHVXXXXcsXpXXXXXXXXXX_!!0-item_pic.jpg_250x250.jpg"
                                    title="23寸液晶显示器"></a>

                            </div>
                            <p class="title"><a href="">23寸液晶显示器</a></p>
                            <div class="price-block"><p class="price"><b>¥</b><em>320</em></p></div>
                        </li>
                        <li class="item">
                            <div class="item-pic sh-pic"><a href=""><img
                                    class="J_ItemPic"
                                    src="https://img.alicdn.com/bao/uploaded/i3/TB1M7nCHVXXXXcsXpXXXXXXXXXX_!!0-item_pic.jpg_250x250.jpg"
                                    title="23寸液晶显示器"></a></div>
                            <p class="title"><a href="">23寸液晶显示器</a></p>
                            <div class="price-block"><p class="price"><b>¥</b><em>320</em></p></div>
                        </li>
                        <li class="item">
                            <div class="item-pic sh-pic"><a href=""><img
                                    class="J_ItemPic"
                                    src="https://img.alicdn.com/bao/uploaded/i3/TB1M7nCHVXXXXcsXpXXXXXXXXXX_!!0-item_pic.jpg_250x250.jpg"
                                    title="23寸液晶显示器"></a></div>
                            <p class="title"><a href="">23寸液晶显示器</a></p>
                            <div class="price-block"><p class="price"><b>¥</b><em>320</em></p></div>
                        </li>
                        <li class="item">
                            <div class="item-pic sh-pic"><a href=""><img
                                    class="J_ItemPic"
                                    src="https://img.alicdn.com/bao/uploaded/i3/TB1M7nCHVXXXXcsXpXXXXXXXXXX_!!0-item_pic.jpg_250x250.jpg"
                                    title="23寸液晶显示器"></a></div>
                            <p class="title"><a href="">23寸液晶显示器</a></p>
                            <div class="price-block"><p class="price"><b>¥</b><em>320</em></p></div>
                        </li>
                        <li class="item">
                            <div class="item-pic sh-pic"><a href=""><img
                                    class="J_ItemPic"
                                    src="https://img.alicdn.com/bao/uploaded/i3/TB1M7nCHVXXXXcsXpXXXXXXXXXX_!!0-item_pic.jpg_250x250.jpg"
                                    title="23寸液晶显示器"></a></div>
                            <p class="title"><a href="">23寸液晶显示器</a></p>
                            <div class="price-block"><p class="price fl"><b>¥</b><em>320</em></p>
                            </div>
                        </li>
                    </ul>
                </div>

            </div>
        </div>
        <div class="module third-module cf">
            <!-- #############################这里变了#############################-->
            <div class="head-title">
                <h2>二手闲置</h2>
            </div>
            <!-- #############################这里变了END#############################-->
            <div class="inner-content">

                <div class="goods-list fl">
                    <ul class="item-list cf">
                        <li class="item">
                            <div class="item-pic sh-pic"><a href=""><img
                                    class="J_ItemPic"
                                    src="https://img.alicdn.com/bao/uploaded/i3/TB1M7nCHVXXXXcsXpXXXXXXXXXX_!!0-item_pic.jpg_250x250.jpg"
                                    title="23寸液晶显示器"></a></div>
                            <p class="title"><a href="">23寸液晶显示器</a></p>
                            <div class="price-block"><p class="price"><b>¥</b><em>320</em></p></div>
                        </li>

                        <li class="item">
                            <div class="item-pic sh-pic"><a href=""><img
                                    class="J_ItemPic"
                                    src="https://img.alicdn.com/bao/uploaded/i3/TB1M7nCHVXXXXcsXpXXXXXXXXXX_!!0-item_pic.jpg_250x250.jpg"
                                    title="23寸液晶显示器"></a></div>
                            <p class="title"><a href="">23寸液晶显示器</a></p>
                            <div class="price-block"><p class="price"><b>¥</b><em>320</em></p></div>
                        </li>
                        <li class="item">
                            <div class="item-pic sh-pic"><a href=""><img
                                    class="J_ItemPic"
                                    src="https://img.alicdn.com/bao/uploaded/i3/TB1M7nCHVXXXXcsXpXXXXXXXXXX_!!0-item_pic.jpg_250x250.jpg"
                                    title="23寸液晶显示器"></a></div>
                            <p class="title"><a href="">23寸液晶显示器</a></p>
                            <div class="price-block"><p class="price"><b>¥</b><em>320</em></p></div>
                        </li>
                        <li class="item">
                            <div class="item-pic sh-pic"><a href=""><img
                                    class="J_ItemPic"
                                    src="https://img.alicdn.com/bao/uploaded/i3/TB1M7nCHVXXXXcsXpXXXXXXXXXX_!!0-item_pic.jpg_250x250.jpg"
                                    title="23寸液晶显示器"></a></div>
                            <p class="title"><a href="">23寸液晶显示器</a></p>
                            <div class="price-block"><p class="price"><b>¥</b><em>320</em></p></div>
                        </li>
                        <li class="item">
                            <div class="item-pic sh-pic"><a href=""><img
                                    class="J_ItemPic"
                                    src="https://img.alicdn.com/bao/uploaded/i3/TB1M7nCHVXXXXcsXpXXXXXXXXXX_!!0-item_pic.jpg_250x250.jpg"
                                    title="23寸液晶显示器"></a></div>
                            <p class="title"><a href="">23寸液晶显示器</a></p>
                            <div class="price-block"><p class="price"><b>¥</b><em>320</em></p></div>
                        </li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</div>
<jsp:include page="footer.jsp"/>



<script src="../static/js/jquery.min.js"></script>
<script src="../static/libs/bootstrap/js/bootstrap.min.js"></script>
<script src="../static/js/index.js"></script>
</body>
</html>
