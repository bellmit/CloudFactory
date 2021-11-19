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
public class Order {

    //    订单的基本信息包括：、订单编号（自动生成）产品名称、订购数量，交付日期，投标截止日期、收货人、收货人联系方式、收货地址、订单状态
    private String orderID;
    //    这里保存的是账号,发布订单用户
    private String belongAgencyAccount;

    private String productID;
    private String productName;
    private String orderQuantity;
    private String deliveryDate;
    private String bidDeadline;
    private String receivePeople;
    private String receiveAddress;
    private String recevieContact;
    private String orderState;


}
