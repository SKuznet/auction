package io.khasang.auction.service;

import io.khasang.auction.dto.EmployeeDTO;
import io.khasang.auction.entity.Employee;

import java.util.List;

public interface EmployeeService {

    /**
     * method for adding employee to DB
     *
     * @param employee - employee for adding
     * @return created employee
     */
    Employee add(Employee employee);

    /**
     * method for getting employee from DB by id
     *
     * @param id - employee's id
     * @return employee by id
     */
    Employee getById(long id);

    /**
     * method for getting all employee from DB
     *
     * @return all employee
     */
    List<EmployeeDTO> getAll();

    /**
     * method for update employee
     *
     * @param employee - employee for update
     * @return updated employee
     */
    Employee update(Employee employee);

    /**
     * method for deletion employee from DB
     *
     * @param id - employee's if for delete
     * @return deleted employee
     */
    Employee delete(long id);
}
