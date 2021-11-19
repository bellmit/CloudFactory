package com.lyl.cloudfactory.service;


import com.lyl.cloudfactory.dao.OrderDao;
import com.lyl.cloudfactory.entity.Order;
import com.lyl.cloudfactory.service.impl.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderDao orderDao;
    @Override
    public Order getOrderByID(String OrderID) {
        return orderDao.getOrderByID(OrderID);
    }

    @Override
    public List<Order> getOrderListByBelongAgencyAccount(String agencyAccount) {
        return orderDao.getOrderListByBelongAgencyAccount(agencyAccount);
    }

    @Override
    public List<Order> getOrderListByOrderState(String orderState) {
        return orderDao.getOrderListByOrderState(orderState);
    }

    @Override
    public List<Order> getOrderList() {
        return orderDao.getOrderList();
    }

    @Override
    public int deleteOrderByOrderID(String orderID) {
        return orderDao.deleteOrderByOrderID(orderID);
    }

    @Override
    public int updateOrder(Order order) {
        return orderDao.updateOrder(order);
    }

    @Override
    public int addOrder(Order order) {
        return orderDao.addOrder(order);
    }
}
