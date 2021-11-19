package com.lyl.cloudfactory.service.impl;

import com.lyl.cloudfactory.entity.Schedule;

import java.util.List;

public interface ScheduleService {
    Schedule getScheduleByBidID(String bidID);
    Schedule getScheduleByEquipmentID(String BidEquipmentID);
    List<Schedule> getScheduleList();

    int addSchedule(Schedule schedule);
    int updateSchedule(Schedule schedule);
    int deleteScheduleBybidID(String bidID);
}
