package io.khasang.auction.controller;

import io.khasang.auction.entity.Car;
import io.khasang.auction.entity.Employee;
import org.junit.Test;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.*;
import org.springframework.web.client.RestTemplate;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

public class EmployeeControllerIntegrationTest {
    private static final String ROOT = "http://localhost:8080/employee";
    private static final String ADD = "/add";
    private static final String ALL = "/all";
    private static final String GET_BY_ID = "/get";

    @Test
    public void addEmployee() {
        Employee employee = createdEmployee();

        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<Employee> responseEntity = restTemplate.exchange(
                ROOT + GET_BY_ID + "/{id}",
                HttpMethod.GET,
                null,
                Employee.class,
                employee.getId()
        );

        assertEquals("OK", responseEntity.getStatusCode().getReasonPhrase());
        assertNotNull(responseEntity.getBody());
    }

    @Test
    public void checkGetAllEmployees() {
        createdEmployee();
        createdEmployee();

        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<List<Employee>> responseEntity = restTemplate.exchange(
                ROOT + ALL,
                HttpMethod.GET,
                null,
                new ParameterizedTypeReference<List<Employee>>() {
                }
        );

        List<Employee> employees = responseEntity.getBody();
        assertNotNull(employees.get(0));
        assertNotNull(employees.get(1));
    }

    private Employee createdEmployee() {
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON_UTF8);

        Employee employee = prefillEmployee();
        HttpEntity<Employee> entity = new HttpEntity<>(employee, headers);

        RestTemplate restTemplate = new RestTemplate();
        Employee createdEmployee = restTemplate.exchange(
                ROOT + ADD,
                HttpMethod.POST,
                entity,
                Employee.class
        ).getBody();

        assertNotNull(createdEmployee);
        assertNotNull(createdEmployee.getName());
        return createdEmployee;
    }

    private Employee prefillEmployee() {
        Employee employee = new Employee();
        employee.setName("Barsik");
        employee.setDescription("Happy");

        Car volga = new Car();
        volga.setModel("volga");
        volga.setYear(LocalDate.of(1992, 11, 12));
        Car bmw = new Car();
        bmw.setModel("bmw");
        bmw.setYear(LocalDate.of(2017, 3, 5));

        List<Car> carList = new ArrayList<>();
        carList.add(volga);
        carList.add(bmw);
        employee.setCarList(carList);

        return employee;
    }
}
