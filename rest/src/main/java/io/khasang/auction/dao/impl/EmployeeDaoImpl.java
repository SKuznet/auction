package io.khasang.auction.dao.impl;

import io.khasang.auction.dao.EmployeeDao;
import io.khasang.auction.entity.Employee;

public class EmployeeDaoImpl extends BasicDaoImpl<Employee> implements EmployeeDao {
    public EmployeeDaoImpl(Class<Employee> entityClass) {
        super(entityClass);
    }
}
