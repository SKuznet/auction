package io.khasang.auction.service.impl;

import io.khasang.auction.dao.UsersDao;
import io.khasang.auction.entity.Users;
import io.khasang.auction.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UsersServiceImpl implements UsersService {

    @Autowired
    private UsersDao usersDao;

    @Override
    public Users add(Users users) {
        return usersDao.add(users);
    }

    @Override
    public Users getById(long id) {
        return usersDao.getById(id);
    }

    @Override
    public List<Users> getAll() {
        return usersDao.getAll();
    }

    @Override
    public Users update(Users users) {
        return usersDao.update(users);
    }

    @Override
    public Users delete(long id) {
        return usersDao.delete(getById(id));
    }
}
