
package com.liu.controller;

import com.liu.bean.User;
import com.liu.service.LoginSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;


/**
 * Created by LMG on 2018/1/30.
 */

@Controller
public class LoginController {
    @Autowired
    LoginSevice loginSevice;

    @RequestMapping("login")
    public ModelAndView login(String username, String password, HttpSession session){
        ModelAndView mv = new ModelAndView("index");
        User user = loginSevice.login(username, password);
        session.setAttribute("user",user);
        mv.addObject("loginUser",user);
        return mv;
    }
}

