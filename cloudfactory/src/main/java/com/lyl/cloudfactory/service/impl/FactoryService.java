package com.lyl.cloudfactory.service.impl;

import com.lyl.cloudfactory.entity.Factory;

import java.util.List;

public interface FactoryService {
    Factory getFactoryByID(String factoryID) ;
    Factory getFactoryByAccount(String factoryAccount) ;
    Factory getFactoryByAccountAndPassword(String factoryAccount,String password) ;
    List<Factory> getFactoryList() ;

    int addFactory(Factory factory);
    int deleteFactoryByAccount(String account);
    int updateFactory(Factory factory);
    List<Factory> getFactoryListByAccount(String account);

}
