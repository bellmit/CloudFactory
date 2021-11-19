package com.lyl.cloudfactory.controller;

import com.lyl.cloudfactory.entity.Agency;
import com.lyl.cloudfactory.entity.Factory;
import com.lyl.cloudfactory.entity.User;
import com.lyl.cloudfactory.service.impl.AgencyService;
import com.lyl.cloudfactory.service.impl.FactoryService;
import com.lyl.cloudfactory.service.impl.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.UUID;


//把注册写完了，挺好的
@Controller
@RequestMapping("register")
public class RegisterController {

    @Autowired
    private UserService userService;
    @Autowired
    private FactoryService factoryService;
    @Autowired
    private AgencyService agencyService;


    @RequestMapping("agencyRegister")
    public String agencyRegister(String account, String password,String name, String contact,HttpSession session){

        String agencyID = "A"+ UUID.randomUUID().toString();
        String type="经销商";

        System.out.println("名字是");

        System.out.println(account);
        System.out.println(password);
        System.out.println(name);
        System.out.println(contact);
        System.out.println("_____________");
        Agency newAgency=new Agency(agencyID,account,password,name,type,contact);
        User newUser=new User(agencyID,account,password,name,type);
        userService.addUser(newUser);
        int result=agencyService.addAgency(newAgency);
        if (result>0){
            System.out.println(newAgency);
            return "redirect:/index.jsp";
        }else {
            System.out.println("注册失败");
            return "redirect:/pages/exception/Error404.jsp";
        }

    }



    @RequestMapping("factoryRegister")
    public String agencyRegister(String account, String password,String principal, String contact,String factoryName, String detail,String state,HttpSession session){
        String factoryID = "F"+ UUID.randomUUID().toString();
        String type="云工厂";
        System.out.println(factoryName);
        User newUser=new User(factoryID,account,password,principal,type);
        userService.addUser(newUser);

        Factory newFactory=new Factory(factoryID,account,password,principal,type,contact,factoryName,detail,state);

        int result= factoryService.addFactory(newFactory);
        if (result>0){

            System.out.println(newFactory);
            return "redirect:/index.jsp";

        }else {

            System.out.println("注册失败");
            return "redirect:/pages/exception/Error404.jsp";
        }


    }



}
