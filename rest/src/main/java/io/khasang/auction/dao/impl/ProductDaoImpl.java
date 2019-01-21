package io.khasang.auction.dao.impl;

import io.khasang.auction.dao.ProductDao;
import io.khasang.auction.entity.Product;

public class ProductDaoImpl extends BasicDaoImpl<Product> implements ProductDao {
    public ProductDaoImpl(Class<Product> entityClass) {
        super(entityClass);
    }
}
