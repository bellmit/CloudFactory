package com.lyl.cloudfactory.service.impl;

import com.lyl.cloudfactory.entity.EquipmentType;

import java.util.List;

public interface EquipmentTypeService {
    List<EquipmentType> getEquipmentTypeList();
    EquipmentType getEquipmentTypeByEquipmentTypeID(String equipmentTypeID);

}
