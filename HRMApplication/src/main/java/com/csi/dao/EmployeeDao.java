package com.csi.dao;

import java.util.List;

import com.csi.model.Employee;

public interface EmployeeDao {

	public void save(Employee employee);

	public Employee findById(int empId);

	public List<Employee> findAll();

	public void deleteById(int empId);

}
