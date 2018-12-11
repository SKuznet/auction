package io.khasang.auction.dao;

import java.util.List;

public interface BasicDao<T> {

    /**
     * method for adding entity to DB
     *
     * @param entity - enetity for adding
     * @return created entity
     */
    T add(T entity);

    /**
     * method for getting entity from DB by id
     *
     * @param id - enetity's id
     * @return entity by entity
     */
    T getById(long id);

    /**
     * method for getting all entities from DB
     *
     * @return all entities
     */
    List<T> getAll();

    /**
     * method for update entity
     *
     * @param entity - entity for update
     * @return updated entity
     */
    T update(T entity);

    /**
     * method for deletion entity from DB
     *
     * @param entity - entity for delete
     * @return deleted entity
     */
    T delete(T entity);
}
