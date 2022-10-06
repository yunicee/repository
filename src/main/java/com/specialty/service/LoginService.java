package com.specialty.service;

import com.specialty.pojo.User;

import java.util.List;
import java.util.Map;

public interface LoginService {
    List<User> selectOne(String var);
    int insert(User user);
    Map login(String name,String password);
    String register(User user);
}
