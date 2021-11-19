package com.lyl.cloudfactory.entity;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.Accessors;

@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
public class Bid {
    private String bidID;
    private String orderID;
    private String bidFactroyAccount;
    private int bidPrice;
    //    是否已经结束竞标了
    private String hadBidden;
    private String factoryPrincipal;
    private String factoryContact;



}


