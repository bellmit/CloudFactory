package com.lyl.cloudfactory.controller;


import com.lyl.cloudfactory.entity.Bid;
import com.lyl.cloudfactory.entity.Order;
import com.lyl.cloudfactory.service.impl.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("agency")
public class AgencyController {
    @Autowired
    private AgencyService agencyService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private BidService bidService;
    @Autowired
    private ProductService productService;
    @Autowired
    private ProductTypeService productTypeService;

    @RequestMapping("confirm")
    public String confirm(String orderID, HttpSession session){

        Order order= orderService.getOrderByID(orderID);
//        确认收货就把订单设置成已完成就行了，okk
        order.setOrderState("已完成");
        orderService.updateOrder(order);
        List<Order> agencyOrderList=null;
        agencyOrderList=orderService.getOrderListByBelongAgencyAccount((String) session.getAttribute("account"));

        session.setAttribute("agencyOrderList",agencyOrderList);

        return "redirect:/pages/AgencyOrderManage.jsp";
    }
    @RequestMapping("chooseBid")
    public String chooseBid(String bidID,HttpSession session){
        Bid bid=bidService.getBidByBidID(bidID);
        bid.setHadBidden("已中标");
        bidService.updateBid(bid);
        List<Bid> agencyBidList=new ArrayList<>();
        agencyBidList=bidService.getBidList();
        session.setAttribute("agencyBidList",agencyBidList);
        return "redirect:/pages/AgencyBidManage.jsp";

    }
    @RequestMapping("addOrder")
    public String addOrder(String productID,String orderQuantity,String deliveryDate,String bidDeadline,String receivePeople,String receiveAddress,String receiveContact,String orderState,HttpSession session){


        String productName=productService.getProductByProductID(productID).getProductName();
        String orderID="O"+ UUID.randomUUID().toString();
        String belongAgencyAccount= (String) session.getAttribute("account");
        Order order=new Order(orderID,belongAgencyAccount,productID,productName,orderQuantity,deliveryDate,bidDeadline,receivePeople,receiveAddress,receiveContact,orderState);
        orderService.addOrder(order);


        List<Order> agencyOrderList=null;
        agencyOrderList=orderService.getOrderListByBelongAgencyAccount(belongAgencyAccount);
        session.setAttribute("agencyOrderList",agencyOrderList);

        return "redirect:/pages/AgencyOrderManage.jsp";

    }



}
