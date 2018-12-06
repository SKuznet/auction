package io.khasang.auction.dao.impl;

import io.khasang.auction.dao.CatDao;
import io.khasang.auction.entity.Cat;

public class CatDaoImpl extends BasicDaoImpl<Cat> implements CatDao {
    public CatDaoImpl(Class<Cat> entityClass) {
        super(entityClass);
    }
}
