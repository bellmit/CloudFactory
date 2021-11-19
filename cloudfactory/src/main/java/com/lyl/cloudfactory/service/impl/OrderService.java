package com.lyl.cloudfactory.service.impl;

import com.lyl.cloudfactory.entity.Order;

import java.util.List;

public interface OrderService {
    Order getOrderByID(String OrderID);
    List<Order> getOrderListByBelongAgencyAccount(String agencyAccount);
    List<Order> getOrderListByOrderState(String orderState);
    List<Order> getOrderList();
    int deleteOrderByOrderID(String orderID);
    int updateOrder(Order order);
    int addOrder(Order order);
}
