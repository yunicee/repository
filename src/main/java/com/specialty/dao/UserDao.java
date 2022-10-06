package com.specialty.dao;

import com.specialty.pojo.User;

import java.util.List;

public interface UserDao {
    int update(User user);
    User selectOneByid(int id);
}
