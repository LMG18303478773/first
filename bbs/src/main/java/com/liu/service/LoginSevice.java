package com.liu.service;

import com.liu.bean.User;
import com.liu.mapper.LoginMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by LMG on 2018/1/30.
 */
@Service
public class LoginSevice {
    @Autowired
    LoginMapper loginMapper;
    public User login(String username, String password){
       return loginMapper.login(username, password);
    }
}
