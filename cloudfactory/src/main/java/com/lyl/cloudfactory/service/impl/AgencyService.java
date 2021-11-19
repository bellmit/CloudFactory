package com.lyl.cloudfactory.service.impl;

import com.lyl.cloudfactory.entity.Agency;

import java.util.List;

public interface AgencyService {
    Agency getAgencyByID(String agencyID) ;
    Agency getAgencyByAccount(String agencyAccount) ;
    Agency getAgencyByAccountAndPassword(String agencyAccount,String password) ;
    List<Agency> getAgencyList() ;
    int addAgency(Agency agency);
    int deleteAgencyByAccount(String account);
    int updateAgency(Agency agency);
}
