package com.lyl.cloudfactory.service.impl;

import com.lyl.cloudfactory.entity.ProductType;

import java.util.List;

public interface ProductTypeService {
    List<ProductType> getProductList();
    ProductType getProductTypeByProductTypeID(String productTypeID);


}
