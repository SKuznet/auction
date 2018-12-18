package io.khasang.auction.service;

import io.khasang.auction.entity.Users;

import java.util.List;

public interface UsersService {
    /**
     * method for adding users to DB
     *
     * @param users - users for adding
     * @return created users
     */
    Users add(Users users);

    /**
     * method for getting users from DB by id
     *
     * @param id - user's id
     * @return users by id
     */
    Users getById(long id);

    /**
     * method for getting all users from DB
     *
     * @return all users
     */
    List<Users> getAll();

    /**
     * method for update users
     *
     * @param users - users for update
     * @return updated users
     */
    Users update(Users users);

    /**
     * method for deletion users from DB
     *
     * @param id - user's if for delete
     * @return deleted users
     */
    Users delete(long id);
}
