package io.khasang.auction.dao.impl;

import io.khasang.auction.dao.UsersDao;
import io.khasang.auction.entity.Users;

public class UsersDaoImpl extends BasicDaoImpl<Users> implements UsersDao {
    public UsersDaoImpl(Class<Users> entityClass) {
        super(entityClass);
    }
}
