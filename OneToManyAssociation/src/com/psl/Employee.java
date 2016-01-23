package com.psl;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

public class Employee {

	int empID;
	String empName;
	int salary;
	Date dateOfBirth;
	@OneToMany
	@JoinColumn(name="empID")
	Set<Vehical> vehical=new HashSet<Vehical>();

	



	public Set<Vehical> getVehical() {
		return vehical;
	}




	public void setVehical(Set<Vehical> vehical) {
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
