package com.specialty.service.Impl;

import com.specialty.dao.LoginDao;
import com.specialty.pojo.User;
import com.specialty.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.util.DigestUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 用于处理登录注册的业务逻辑
 */
@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginDao loginDao;

    /**
     * 事务操作
     * @param var 用户名
     * @return list
     */
    @Override
    public List<User> selectOne(String var) {
        return loginDao.selectOne(var);
    }

    /**
     * 事务操作
     * @param user 用户信息
     * @return int
     */
    @Override
    public int insert(User user) {
        return loginDao.insert(user);
    }

    /**
     * 登录业务，先判断用户名是否为空，返回错误信息
     * 在判断密码是否正确，返回错误信息
     * 如果都正确，返回实体类
     * @param name 用户名
     * @param password 密码
     * @return map
     */
    public Map login(String name, String password){
        Map map = new HashMap();
        if (name != null){
            List<User> users = selectOne(name);
            if (users.size()==0){
                map.put("message","用户名密码不正确");
            }else{
                User user = users.get(0);
                if (DigestUtils.md5DigestAsHex(password.getBytes()).equals(user.getPassword())){
                    if (user.getUserImg() == null){
                        user.setUserImg("2.jpg");
                    }
                    user.setPassword(null);
                    map.put("user",user);
                }else {
                    map.put("message","用户名密码不正确");
                }
            }
        }else
            map.put("message","用户名不能为空");
        return map;
    }

    /**
     * 注册业务
     * 判断传参，参数不能为空
     * 进行用户查询，判断是否存在
     * 最后进行数据库写入
     * @param user 注册信息
     * @return String
     */
    public String register(User user){
        List list = new ArrayList();
        if (user != null){
            if(user.getEmail() == null){
                 list = selectOne(user.getPhone());
            }else{
                 list = selectOne(user.getEmail());
            }
            if (list.size() > 0 ){
                return "用户已存在，请更换邮箱或手机";
            }else{
                user.setPassword(DigestUtils.md5DigestAsHex(user.getPassword().getBytes()));
                int flag = insert(user);
                if (flag == 1)
                    return "注册成功";
                else
                    return "注册失败";
            }
        }else
            return "空值";
    }
}
