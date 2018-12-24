package io.khasang.auction.dto;

import io.khasang.auction.entity.Car;
import io.khasang.auction.entity.Employee;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class EmployeeDTO {
    private Long id;
    private String name;
    private String description;
    private List<CarDTO> carDTOList = new ArrayList<>();

    public EmployeeDTO getEmployeeDTO(Employee employee) {
        List<CarDTO> carDTOS = new ArrayList<>();
        EmployeeDTO employeeDTO = new EmployeeDTO();
        employeeDTO.setName(employee.getName());
        employeeDTO.setDescription(employee.getDescription());
        employeeDTO.setId(employee.getId());

        getCarDTOFromCar(employee, carDTOS);

        employeeDTO.setCarDTOList(carDTOS);
        return employeeDTO;
    }

    private void getCarDTOFromCar(Employee employee, List<CarDTO> carDTOS) {
        for (Car car : employee.getCarList()) {
            CarDTO carDTO = new CarDTO();
            carDTO.setId(car.getId());
            carDTO.setModel(car.getModel());
            carDTO.setYear(car.getYear());

            carDTOS.add(carDTO);
        }
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<CarDTO> getCarDTOList() {
        return carDTOList;
    }

    public void setCarDTOList(List<CarDTO> carDTOList) {
        this.carDTOList = carDTOList;
    }
}
