package com.lyl.cloudfactory.dao;

import com.lyl.cloudfactory.entity.Schedule;

import java.util.List;

public interface ScheduleDao {
    Schedule getScheduleByBidID(String bidID);
    Schedule getScheduleByEquipmentID(String BidEquipmentID);
    List<Schedule> getScheduleList();

    int addSchedule(Schedule schedule);
    int updateSchedule(Schedule schedule);
    int deleteScheduleBybidID(String bidID);
}
