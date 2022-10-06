package com.specialty.dao;

import com.specialty.pojo.User;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

public interface LoginDao {
    List<User> selectOne(String var);
    int insert(User user);
}
