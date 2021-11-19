package com.lyl.cloudfactory.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("test")
public class TestController {

    @RequestMapping("test")
    @ResponseBody
    public String test(){
        System.out.println("test method invoke");
        return "test method ok";
    }

}
