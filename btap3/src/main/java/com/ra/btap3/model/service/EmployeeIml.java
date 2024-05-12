package com.ra.btap3.model.service;

import com.ra.btap3.model.entity.Employee;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
@Service
public class EmployeeIml implements IEmployee{
    private static final List<Employee> employeeList = new ArrayList<>();
    @Override
    public List<Employee> findAll() {
        return employeeList;
    }

    @Override
    public Employee findById(Integer id) {
        return employeeList.stream().filter(employee -> employee.getId().equals(id)).findFirst().orElse(null);
    }

    @Override
    public void save(Employee employee) {
          Integer id = employeeList.stream().map(Employee::getId).max(Integer::compareTo).orElse(0)+1;
          employee.setId(id);
        employeeList.add(employee);
    }

    @Override
    public void update(Employee employee) {
            employeeList.set(employeeList.indexOf(employeeList.
                    stream().
                    filter(employee1 -> employee1.getId().equals(employee.getId())).
                    findFirst().orElse(null)),employee );
    }

    @Override
    public void delete(Integer id) {
employeeList.remove(findById(id));
    }
}
