package com.lyl.cloudfactory.service;

import com.lyl.cloudfactory.dao.ProductDao;
import com.lyl.cloudfactory.entity.Product;
import com.lyl.cloudfactory.service.impl.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;
    @Override
    public Product getProductByProductID(String productID) {
        return productDao.getProductByProductID(productID);
    }

    @Override
    public List<Product> getProductByProductName(String productName) {
        return productDao.getProductByProductName(productName);
    }

    @Override
    public List<Product> getProductList() {
        return productDao.getProductList();
    }

    @Override
    public int addProduct(Product product) {
        return productDao.addProduct(product);
    }

    @Override
    public int updateProduct(Product product) {
        return productDao.updateProduct(product);
    }

    @Override
    public int deleteProductByProductID(String productID) {
        return productDao.deleteProductByProductID(productID);
    }
}
