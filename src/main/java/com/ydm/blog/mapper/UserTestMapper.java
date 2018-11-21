package com.ydm.blog.mapper;

import com.ydm.blog.entity.UserTest;

public interface UserTestMapper {
    int insert(UserTest record);

    int insertSelective(UserTest record);
}