package com.lyl.cloudfactory.service;


import com.lyl.cloudfactory.dao.ProductDao;
import com.lyl.cloudfactory.dao.ScheduleDao;
import com.lyl.cloudfactory.entity.Schedule;
import com.lyl.cloudfactory.service.impl.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ScheduleServiceImpl implements ScheduleService {



    @Autowired
    private ScheduleDao scheduleDao;

    @Override
    public Schedule getScheduleByBidID(String bidID) {
        return scheduleDao.getScheduleByBidID(bidID);
    }

    @Override
    public Schedule getScheduleByEquipmentID(String BidEquipmentID) {
        return scheduleDao.getScheduleByEquipmentID(BidEquipmentID);
    }

    @Override
    public List<Schedule> getScheduleList() {
        return scheduleDao.getScheduleList();
    }

    @Override
    public int addSchedule(Schedule schedule) {
        return scheduleDao.addSchedule(schedule);
    }

    @Override
    public int updateSchedule(Schedule schedule) {
        return scheduleDao.updateSchedule(schedule);
    }

    @Override
    public int deleteScheduleBybidID(String bidID) {
        return scheduleDao.deleteScheduleBybidID(bidID);
    }
}
