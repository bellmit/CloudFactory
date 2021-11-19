package com.lyl.cloudfactory.service;


import com.lyl.cloudfactory.dao.ProductDao;
import com.lyl.cloudfactory.dao.ProductTypeDao;
import com.lyl.cloudfactory.entity.ProductType;
import com.lyl.cloudfactory.service.impl.ProductTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ProductTypeServiceImpl implements ProductTypeService {

    @Autowired
    private ProductTypeDao productTypeDao;

    @Override
    public List<ProductType> getProductList() {
        return productTypeDao.getProductTypeList();
    }

    @Override
    public ProductType getProductTypeByProductTypeID(String productTypeID) {
        return productTypeDao.getProductTypeByProductTypeID(productTypeID);
    }
}
