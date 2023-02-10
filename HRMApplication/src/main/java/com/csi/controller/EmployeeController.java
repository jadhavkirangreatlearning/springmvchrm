package com.csi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.csi.model.Employee;
import com.csi.service.EmployeeService;




@Controller
@RequestMapping("/employee")

public class EmployeeController {

	@Autowired
	EmployeeService employeeServiceImpl;

	@RequestMapping("/list")
	public String listEmployee(Model model) {

		List<Employee> empList = employeeServiceImpl.findAll();

		
		model.addAttribute("empList", empList);

		return "employeeList";
	}

	@RequestMapping("/showFormForAdd")
	public String showFormForAdd(Model model) {

		Employee employee = new Employee();
		model.addAttribute("employee", employee);

		return "employeeForm";
	}

	@RequestMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("empId") int empId, Model model) {

		Employee employee = employeeServiceImpl.findById(empId);

		model.addAttribute("employee", employee);

		return "employeeForm";
	}

	@PostMapping("/save")
	public String saveData(@RequestParam("empId") int empId, @RequestParam("empName") String empName,
			@RequestParam("empAddress") String empAddress, @RequestParam("empContactNumber") long empContactNumber,
			@RequestParam("empSalary") double empSalary) {

		Employee employee = null;

		if (empId != 0) {

			employee = employeeServiceImpl.findById(empId);
			employee.setEmpName(empName);
			employee.setEmpAddress(empAddress);
			employee.setEmpContactNumber(empContactNumber);
			employee.setEmpSalary(empSalary);

		} else {
			employee = new Employee(empName, empAddress, empContactNumber, empSalary);
		}

		employeeServiceImpl.save(employee);
		return "redirect:/employee/list";
	}

	@RequestMapping("/delete")
	public String deleteData(@RequestParam("empId") int empId) {
		employeeServiceImpl.deleteById(empId);

		return "redirect:/employee/list";
	}

}
