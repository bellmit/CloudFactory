package com.lyl.cloudfactory.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

@Data
@ToString
@NoArgsConstructor
@Accessors(chain = true)
public class Factory extends User{
    //    云工厂用户ID
    private String factoryID;
    //    云工厂账号
    private String account;
    //    云工厂密码
    private String password;
    //    用户类型
    private String type;
    //    云工厂负责人名字
    private String principal;
    //    联系方式
    private String contact;
    //    云工厂名称
    private String factoryName;
    //    云工厂简介
    private String detail;
    //    云工厂状态
    private String state;

    public Factory(String factoryID, String account, String password, String type, String principal, String contact, String factoryName, String detail, String state) {

        this.factoryID = factoryID;
        this.account = account;
        this.password = password;
        this.type = "云工厂";
        this.principal = principal;
        this.contact = contact;
        this.factoryName = factoryName;
        this.detail = detail;
        this.state = state;
    }


}
