package com.liu.mapper;

import com.liu.bean.User;
import org.apache.ibatis.annotations.Param;

/**
 * Created by LMG on 2018/1/30.
 */
public interface LoginMapper {
    User login(@Param("username") String username, @Param("password") String password);
}
