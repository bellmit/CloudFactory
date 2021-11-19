package com.lyl.cloudfactory.service;



import com.lyl.cloudfactory.dao.AgencyDao;
import com.lyl.cloudfactory.entity.Agency;
import com.lyl.cloudfactory.service.impl.AgencyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AgencyServiceImpl implements AgencyService {


    @Autowired
    private AgencyDao agencyDao;


    @Override
    public Agency getAgencyByID(String agencyID) {
        return agencyDao.getAgencyByID(agencyID);
    }

    @Override
    public Agency getAgencyByAccount(String agencyAccount) {
        return agencyDao.getAgencyByAccount(agencyAccount, agencyAccount);
    }

    @Override
    public Agency getAgencyByAccountAndPassword(String agencyAccount, String password) {
        return agencyDao.getAgencyByAccount(agencyAccount,password);
    }

    @Override
    public List<Agency> getAgencyList() {
        return agencyDao.getAgencyList();
    }

    @Override
    public int addAgency(Agency agency) {
        int result=0;
        return agencyDao.addAgency(agency);
    }

    @Override
    public int deleteAgencyByAccount(String account) {
        int result=0;
        return agencyDao.deleteAgencyByAccount(account);
    }

    @Override
    public int updateAgency(Agency agency) {
        int result=0;
        return agencyDao.updateAgency(agency);
    }
}
