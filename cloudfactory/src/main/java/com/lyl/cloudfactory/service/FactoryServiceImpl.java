package com.lyl.cloudfactory.service;


import com.lyl.cloudfactory.dao.FactoryDao;
import com.lyl.cloudfactory.entity.Factory;
import com.lyl.cloudfactory.service.impl.FactoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class FactoryServiceImpl implements FactoryService {

    @Autowired
    private FactoryDao factoryDao;
    @Override
    public Factory getFactoryByID(String factoryID) {
        return factoryDao.getFactoryByID(factoryID);
    }

    @Override
    public Factory getFactoryByAccount(String factoryAccount) {
        return factoryDao.getFactoryByAccount(factoryAccount, factoryAccount);
    }

    @Override
    public Factory getFactoryByAccountAndPassword(String factoryAccount, String password) {
        return factoryDao.getFactoryByAccount(factoryAccount,password);
    }

    @Override
    public List<Factory> getFactoryList() {
        return factoryDao.getFactoryList();
    }

    @Override
    public int addFactory(Factory factory) {
        return factoryDao.addFactory(factory);
    }

    @Override
    public int deleteFactoryByAccount(String account) {
        return factoryDao.deleteFactoryByAccount(account);
    }

    @Override
    public int updateFactory(Factory factory) {
        return factoryDao.updateFactory(factory);
    }

    @Override
    public List<Factory> getFactoryListByAccount(String account) {
        return factoryDao.getFactoryListByAccount(account);
    }
}
