package io.khasang.auction.service;

import io.khasang.auction.entity.Product;

import java.util.List;

public interface ProductService {
    /**
     * method for adding entity to DB
     *
     * @param product - entity for adding
     * @return created product
     *
     *
     * */

    Product add(Product product);

    /**
     * method for getting product by id
     *
     * @param id - product's id for adding
     * @return products by id
     *
     * */
    Product getById(long id);

    /**
     * method for getting all products
     *
     *
     * @return all products
     *
     * */
    List<Product> getAll();

    /**
     * method for updating product in DB
     *
     * @param product - product for updating
     * @return updated product
     *
     * */

    Product update(Product product);

    /**
     * method for deletion product from DB
     *
     * @param id - product's id for deletion
     * @return deleted product
     *
     * */

    Product delete(long id);
}
