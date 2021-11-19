package com.lyl.cloudfactory.dao;

import com.lyl.cloudfactory.entity.ProductType;

import java.util.List;

public interface ProductTypeDao {
    List<ProductType> getProductTypeList();
    ProductType getProductTypeByProductTypeID(String productTypeID);
}
