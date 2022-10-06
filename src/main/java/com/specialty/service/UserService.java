package com.specialty.service;

import com.specialty.pojo.User;

public interface UserService {
    Boolean update(User user);
    User selectOneByid(int id);
}
