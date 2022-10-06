package com.specialty.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/goods")
public class GoodsController {
    @RequestMapping("/toGoods")
    public String toGoods(){
        return "goods";
    }
    @RequestMapping("/toGoodsInfo")
    public String toGoodsInfo(){
        return "goodsInfo";
    }
    @RequestMapping("/toPublish")
    public String toPublish(){
        return "publish";
    }
}
