package com.specialty.controller;

import com.specialty.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
public class IndexController {
    @RequestMapping("/toIndex")
    public String toIndex(HttpSession session){
        User user = (User) session.getAttribute("user");
        System.out.println(user);
        return "index";
    }
}
