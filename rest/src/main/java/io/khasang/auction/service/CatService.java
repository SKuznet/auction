package io.khasang.auction.service;

import io.khasang.auction.entity.Cat;

import java.util.List;

public interface CatService {

    /**
     * method for adding cat to DB
     *
     * @param cat - cat for adding
     * @return created cat
     */
    Cat add(Cat cat);

    /**
     * method for getting cat from DB by id
     *
     * @param id - cat's id
     * @return cat by id
     */
    Cat getById(long id);

    /**
     * method for getting all cat from DB
     *
     * @return all cat
     */
    List<Cat> getAll();

    /**
     * method for update cat
     *
     * @param cat - cat for update
     * @return updated cat
     */
    Cat update(Cat cat);

    /**
     * method for deletion cat from DB
     *
     * @param id - cat's if for delete
     * @return deleted cat
     */
    Cat delete(long id);
}
