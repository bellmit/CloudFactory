package com.lyl.cloudfactory.dao;

import com.lyl.cloudfactory.entity.Equipment;

import java.util.List;

public interface EquipmentDao {
    Equipment getEquipmentByEquipmentID(String equipmentID);
    Equipment getEquipmentByName(String equipmentName);
    Equipment getEquipmentByType(String equipmentType);
    List<Equipment> getEquipmentByEquipmentState(String equipmentState);
    List<Equipment> getEquipmentByHireState(String equipmentHireState);
    List<Equipment> getEquipmentListByFactoryAccount(String factoryAccount);
    List<Equipment> getEquipmentList();

    int addEquipment(Equipment equipment);
    int deleteEquipment(String equipmentID);
    int updateEquipment(Equipment equipment);

}
