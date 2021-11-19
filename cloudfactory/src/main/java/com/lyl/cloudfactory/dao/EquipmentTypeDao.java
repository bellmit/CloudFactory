package com.lyl.cloudfactory.dao;

import com.lyl.cloudfactory.entity.EquipmentType;

import java.util.List;

public interface EquipmentTypeDao {
    List<EquipmentType> getEquipmentTypeList();
    EquipmentType getEquipmentTypeByEquipmentTypeID(String equipmentTypeID);
}
