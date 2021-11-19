package com.lyl.cloudfactory.service.impl;

import com.lyl.cloudfactory.entity.Bid;

import java.util.List;

public interface BidService {
    Bid getBidByBidID(String bidID);
    List<Bid> getBidByOrderID(String orderID);
    List<Bid> getBidList();
    List<Bid> getBidListByFactoryAccount(String factoryAccount);
    List<Bid> getBidListByHadBidden(String hadBidden);

    int addBid(Bid bid);
    int updateBid(Bid bid);
    int deleteBid(String bidID);
}
