package io.khasang.auction.service.impl;

import io.khasang.auction.dao.ProductDao;
import io.khasang.auction.entity.Product;
import io.khasang.auction.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductDao productDao;

    @Override
    public Product add(Product product) {
        return productDao.add(product);
    }

    @Override
    public Product getById(long id) {
        return productDao.getById(id);
    }

    @Override
    public List<Product> getAll() {
        return productDao.getAll();
    }

    @Override
    public Product update(Product product) {
        return productDao.update(product);
    }

    @Override
    public Product delete(long id) {
        return productDao.delete(getById(id));
    }
}