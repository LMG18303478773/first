package com.liu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by LMG on 2018/1/21.
 */
@Controller
public class HelloController {
    @RequestMapping("/bbs")
    public ModelAndView hello(){
        ModelAndView mv = new ModelAndView("hello");
        return mv;
    }
}
