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
public class Agency extends User{
    private String agencyID;
    private String account;
    private String password;
    private String name;
    private String type;
    private String contact;

    public Agency(String agencyID, String account, String password, String name, String type,String contact) {
        this.agencyID = agencyID;
        this.account = account;
        this.password = password;
        this.name = name;
        this.contact = contact;
        this.type = "经销商";
    }


}
