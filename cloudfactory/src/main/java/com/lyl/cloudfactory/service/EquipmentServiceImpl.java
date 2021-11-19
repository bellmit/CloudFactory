package com.lyl.cloudfactory.service;


import com.lyl.cloudfactory.dao.EquipmentDao;
import com.lyl.cloudfactory.dao.UserDao;
import com.lyl.cloudfactory.entity.Equipment;
import com.lyl.cloudfactory.service.impl.EquipmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class EquipmentServiceImpl implements EquipmentService {

    @Autowired
    private EquipmentDao equipmentDao;

    @Override
    public Equipment getEquipmentByEquipmentID(String equipmentID) {
        return equipmentDao.getEquipmentByEquipmentID(equipmentID);
    }

    @Override
    public Equipment getEquipmentByName(String equipmentName) {
        return equipmentDao.getEquipmentByName(equipmentName);
    }

    @Override
    public Equipment getEquipmentByType(String equipmentType) {
        return equipmentDao.getEquipmentByType(equipmentType);
    }

    @Override
    public List<Equipment> getEquipmentByEquipmentState(String equipmentState) {
        return equipmentDao.getEquipmentByEquipmentState(equipmentState);
    }

    @Override
    public List<Equipment> getEquipmentByHireState(String equipmentHireState) {
        return equipmentDao.getEquipmentByHireState(equipmentHireState);
    }

    @Override
    public List<Equipment> getEquipmentListByFactoryAccount(String factoryAccount) {
        return equipmentDao.getEquipmentListByFactoryAccount(factoryAccount);
    }

    @Override
    public List<Equipment> getEquipmentList() {
        return equipmentDao.getEquipmentList();
    }

    @Override
    public int addEquipment(Equipment equipment) {
        return equipmentDao.addEquipment(equipment);
    }

    @Override
    public int deleteEquipment(String equipmentID) {
        return equipmentDao.deleteEquipment(equipmentID);
    }

    @Override
    public int updateEquipment(Equipment equipment) {
        return equipmentDao.updateEquipment(equipment);
    }
}
