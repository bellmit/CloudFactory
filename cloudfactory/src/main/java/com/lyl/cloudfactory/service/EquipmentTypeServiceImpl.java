package com.lyl.cloudfactory.service;


import com.lyl.cloudfactory.dao.EquipmentTypeDao;
import com.lyl.cloudfactory.dao.UserDao;
import com.lyl.cloudfactory.entity.EquipmentType;
import com.lyl.cloudfactory.service.impl.EquipmentTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class EquipmentTypeServiceImpl implements EquipmentTypeService {

    @Autowired
    private EquipmentTypeDao equipmentTypeDao;
    @Override
    public List<EquipmentType> getEquipmentTypeList() {
        return equipmentTypeDao.getEquipmentTypeList();
    }

    @Override
    public EquipmentType getEquipmentTypeByEquipmentTypeID(String equipmentTypeID) {
        return equipmentTypeDao.getEquipmentTypeByEquipmentTypeID(equipmentTypeID);
    }
}
