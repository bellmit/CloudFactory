package com.lyl.cloudfactory.dao;

import com.lyl.cloudfactory.entity.Order;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface OrderDao {
    Order getOrderByID(String OrderID);
    List<Order> getOrderListByBelongAgencyAccount(String agencyAccount);
    List<Order> getOrderListByOrderState(String orderState);
    List<Order> getOrderList();
    int deleteOrderByOrderID(String orderID);
    int updateOrder(Order order);
    int addOrder(Order order);

}
