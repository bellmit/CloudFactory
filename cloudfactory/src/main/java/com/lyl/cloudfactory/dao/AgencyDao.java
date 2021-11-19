package com.lyl.cloudfactory.dao;

import com.lyl.cloudfactory.entity.Agency;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AgencyDao {
    Agency getAgencyByID(String agencyID) ;
    Agency getAgencyByAccount(String account, String agencyAccount) ;
    Agency getAgencyByAccountAndPassword(@Param("agencyAccount")String agencyAccount, @Param("password")String password) ;
    List<Agency> getAgencyList() ;
    int addAgency(Agency agency);
    int deleteAgencyByAccount(String account);
    int updateAgency(Agency agency);

}
