package io.khasang.auction.service.impl;

import io.khasang.auction.dao.EmployeeDao;
import io.khasang.auction.dto.EmployeeDTO;
import io.khasang.auction.entity.Employee;
import io.khasang.auction.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {
    @Autowired
    private EmployeeDao employeeDao;
    @Autowired
    private EmployeeDTO employeeDTO;

    @Override
    public Employee add(Employee employee) {
        return employeeDao.add(employee);
    }

    @Override
    public Employee getById(long id) {
        return employeeDao.getById(id);
    }

    @Override
    public List<EmployeeDTO> getAll() {
        List<Employee> employees = employeeDao.getAll();
        List<EmployeeDTO> employeeDTOS = new ArrayList<>();

        for (Employee employee: employees) {
            employeeDTOS.add(employeeDTO.getEmployeeDTO(employee));
        }

        return employeeDTOS;
    }

    @Override
    public Employee update(Employee employee) {
        return employeeDao.update(employee);
    }

    @Override
    public Employee delete(long id) {
        return employeeDao.delete(getById(id));
    }
}
