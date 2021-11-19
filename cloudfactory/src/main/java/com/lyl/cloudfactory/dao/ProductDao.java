package com.lyl.cloudfactory.dao;

import com.lyl.cloudfactory.entity.Product;

import java.util.List;

public interface ProductDao {
    Product getProductByProductID(String productID);
    List<Product> getProductByProductName(String productName);
    List<Product> getProductList();

    int addProduct(Product product);
    int updateProduct(Product product);
    int deleteProductByProductID(String productID);
}
