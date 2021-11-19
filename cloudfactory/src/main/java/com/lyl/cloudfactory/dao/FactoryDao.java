package com.lyl.cloudfactory.dao;

import com.lyl.cloudfactory.entity.Factory;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FactoryDao {
    Factory getFactoryByID(String factoryID) ;
    Factory getFactoryByAccount(String account, String factoryAccount) ;
    Factory getFactoryByAccountAndPassword(@Param("factoryAccount")String factoryAccount,@Param("password") String password) ;
    List<Factory> getFactoryList() ;

    int addFactory(Factory factory);
    int deleteFactoryByAccount(String account);
    int updateFactory(Factory factory);
    List<Factory> getFactoryListByAccount(String account);

}
