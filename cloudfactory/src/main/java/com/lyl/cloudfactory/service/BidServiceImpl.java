package com.lyl.cloudfactory.service;


import com.lyl.cloudfactory.dao.BidDao;
import com.lyl.cloudfactory.dao.UserDao;
import com.lyl.cloudfactory.entity.Bid;
import com.lyl.cloudfactory.service.impl.BidService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class BidServiceImpl implements BidService {

    @Autowired
    private BidDao bidDao;

    @Override
    public Bid getBidByBidID(String bidID) {
        return bidDao.getBidByBidID(bidID);
    }

    @Override
    public List<Bid> getBidByOrderID(String orderID) {
        return (List<Bid>) bidDao.getBidByOrderID(orderID);
    }

    @Override
    public List<Bid> getBidList() {
        return bidDao.getBidList();
    }

    @Override
    public List<Bid> getBidListByFactoryAccount(String factoryAccount) {
        return bidDao.getBidListByFactoryAccount(factoryAccount);
    }

    @Override
    public List<Bid> getBidListByHadBidden(String hadBidden) {
        return bidDao.getBidListByHadBidden(hadBidden);
    }

    @Override
    public int addBid(Bid bid) {
        return bidDao.addBid(bid);
    }

    @Override
    public int updateBid(Bid bid) {

        return bidDao.updateBid(bid);
    }

    @Override
    public int deleteBid(String bidID) {

        return bidDao.deleteBid(bidID);
    }
}
