package com.specialty.controller;

import com.specialty.dao.LoginDao;
import com.specialty.pojo.User;
import com.specialty.service.UserService;
import com.specialty.util.LoadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * 用户控制器
 * 用来处理用户进行的相关操作
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 前往用户信息页面
     * @return String
     */
    @RequestMapping("/toPersonInfo")
    public String toPersonInfo(){
        return "personInfo";
    }

    /**
     * 前往用户图片上传页面
     * @return String
     */
    @RequestMapping("/toImgLoad")
    public String toimgLoad(){
        return "personUploadImg";
    }

    /**
     * 用于处理用户更新信息操作
     * @param user 用户信息
     * @return map
     */
    @RequestMapping("/toUpdateInfo")
    @ResponseBody
    public Map toUpdateInfo(User user){
        boolean flag = userService.update(user);
        Map map = new HashMap();
        map.put("flag",flag);
        return map;
    }

    /**
     * 用于处理用户更换密码操作
     * @param userId 用户ID
     * @param oldpwd 旧密码
     * @param newpwd 新密码
     * @return map
     */
    @RequestMapping("/toUpdatePwd")
    @ResponseBody
    public Map toUpdatePwd(int userId,String oldpwd,String newpwd){
        Map map = new HashMap();
      if (oldpwd != null && newpwd != null){
          if (DigestUtils.md5DigestAsHex(oldpwd.getBytes()).equals(userService.selectOneByid(userId).getPassword())){
              User user = new User();
              user.setPassword(DigestUtils.md5DigestAsHex(newpwd.getBytes()));
              user.setUserId(userId);
              Boolean flag = userService.update(user);
              map.put("flag",flag);
          }else
              map.put("message","旧密码不正确");
      }else
          map.put("message","不能为空");
      return map;
    }

    /**
     * 用于处理用户更新头像操作
     * @param file 图片
     * @param request
     * @param session
     * @return String 视图
     */
    @RequestMapping("/toUpload")
    public String toUploadImg(@RequestParam("file") MultipartFile file, HttpServletRequest request, HttpSession session){
        if (file != null){
            String userImg = LoadUtil.getPath(request, file);
            User user = (User) session.getAttribute("user");
            user.setUserImg(userImg);
            userService.update(user);
            session.setAttribute("user",user);
        }
        return "personUploadImg";
    }
}
