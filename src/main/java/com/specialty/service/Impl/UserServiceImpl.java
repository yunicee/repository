package com.specialty.service.Impl;

import com.specialty.dao.UserDao;
import com.specialty.pojo.User;
import com.specialty.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserDao userDao;

    @Override
    public Boolean update(User user) {
        if (user.getUserImg() != null || user.getEmail() != null || user.getUserName() != null || user.getSex() != null ||user.getPassword() != null || user.getPhone() != null){
            int flag = userDao.update(user);
            if (flag == 1){
                return true;
            }
        };
        return false;
    }

    @Override
    public User selectOneByid(int id) {
        return userDao.selectOneByid(id);
    }
}
