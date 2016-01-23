package com.psl.dao;

import com.psl.Employee;

public interface EmployeeDao {

	//Create
	void createEmployee(Employee employee);
	//Update
	void updateEmployee(Employee employee);
	//Read
	Employee getemployee(int empID);
	//Delete
	void deleteEmployee(Employee employee);
	
}
