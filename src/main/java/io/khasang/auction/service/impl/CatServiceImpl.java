package io.khasang.auction.service.impl;

import io.khasang.auction.dao.CatDao;
import io.khasang.auction.entity.Cat;
import io.khasang.auction.service.CatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CatServiceImpl implements CatService{
    @Autowired
    private CatDao catDao;

    @Override
    public Cat add(Cat cat) {
        return catDao.add(cat);
    }

    @Override
    public Cat getById(long id) {
        return catDao.getById(id);
    }

    @Override
    public List<Cat> getAll() {
        return catDao.getAll();
    }

    @Override
    public Cat update(Cat cat) {
        return catDao.update(cat);
    }

    @Override
    public Cat delete(long id) {
        return catDao.delete(getById(id));
    }
}
