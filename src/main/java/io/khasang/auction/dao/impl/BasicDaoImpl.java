package io.khasang.auction.dao.impl;

import io.khasang.auction.dao.BasicDao;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import java.util.List;

@Transactional
public class BasicDaoImpl<T> implements BasicDao<T> {
    private final Class<T> entityClass;
    @Autowired
    protected SessionFactory sessionFactory;

    public BasicDaoImpl(Class<T> entityClass) {
        this.entityClass = entityClass;
    }

    @Override
    public T add(T entity) {
        getSessionFactory().save(entity);
        return entity;
    }

    @Override
    public T getById(long id) {
        return getSessionFactory().get(entityClass, id);
    }

    @Override
    public List<T> getAll() {
        CriteriaBuilder builder = sessionFactory.getCriteriaBuilder();
        CriteriaQuery<T> criteriaQuery = builder.createQuery(entityClass);
        Root<T> root = criteriaQuery.from(entityClass);

        criteriaQuery.select(root);
        return getSessionFactory().createQuery(criteriaQuery).list();
    }

    @Override
    public T update(T entity) {
        getSessionFactory().update(entity);
        return entity;
    }

    @Override
    public T delete(T entity) {
        getSessionFactory().delete(entity);
        return entity;
    }

    protected Session getSessionFactory() {
        return sessionFactory.getCurrentSession();
    }
}
