package com.psl;

import java.util.Date;

public class Employee {

	@Override
	public String toString() {
		return "Employee [empID=" + empID + ", empName=" + empName
				+ ", salary=" + salary + ", dateOfBirth=" + dateOfBirth
				+ ", vehical=" + vehical + "]";
	}
	int empID;
	String empName;
	int salary;
	Date dateOfBirth;
	Vehical vehical;

	
	public Employee(int empID, String empName, int salary, Date dateOfBirth,
			Vehical vehical) {
		super();
		this.empID = empID;
		this.empName = empName;
		this.salary = salary;
		this.dateOfBirth = dateOfBirth;
		this.vehical = vehical;
	}



	public Vehical getVehical() {
		return vehical;
	}



	public void setVehical(Vehical vehical) {
		this.vehical = vehical;
	}



	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	

	public int getEmpID() {
		return empID;
	}
	public void setEmpID(int empID) {
		this.empID = empID;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public Date getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	
	
}
