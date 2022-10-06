package com.specialty.controller;

import com.specialty.pojo.User;
import com.specialty.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * LoginController
 * 登录和注册控制器
 */
@Controller
@RequestMapping("/sign")
public class LoginController {
    @Autowired
    private LoginService loginService;

    /**
     * 前往注册页面
     * @return String
     */
    @RequestMapping("/toSignUp")
    public String toSignUp(){
        return "signup";
    }

    /**
     * 前往登录页面
     * @return String
     */
    @RequestMapping("/toSignIn")
    public String toSignIn(){
        return  "signin";
    }

    /**
     * 处理注册请求
     * 返回注册信息
     * @param user 用户信息
     * @return map
     */
    @PostMapping("/signUp")
    @ResponseBody
    public Map signUp(User user){
        String str = loginService.register(user);
        Map map = new HashMap();
        if (str.equals("注册成功"))
            map.put("message",1);
        else
            map.put("message",str);
        return map;
    }

    /**
     * 处理登录请求
     * 返回登录信息
     * @param username 用户名
     * @param password 用户密码
     * @param session
     * @return map
     */
    @RequestMapping("/signIn")
    @ResponseBody
    public Map signIn(String username, String password, HttpSession session){
        Map map = loginService.login(username,password);
        if (map.get("user") != null){
            session.setAttribute("user",map.get("user"));
            map.put("message","登录成功");
        }
        return map;
    }

    /**
     * 用于处理注销
     * @param session
     * @return String 视图
     */
    @RequestMapping("/signOut")
    public String signOut(HttpSession session){
        if (session != null){
            session.invalidate();
        }
        return "index";
    }
}
