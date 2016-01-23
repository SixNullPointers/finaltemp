package com.psl.client;

import java.util.Date;

import com.mysql.jdbc.jdbc2.optional.SuspendableXAConnection;
import com.psl.Employee;
import com.psl.Vehical;
import com.psl.dao.EmployeeDao;
import com.psl.dao.EmployeeDaoImpl;

public class Client {

	public static void main(String[] args) {
		
		Employee e=new Employee();
		e.setEmpID(110);
		e.setEmpName("mohsin");
		e.setSalary(10000);
		e.setDateOfBirth(new Date());
		
		Vehical vehical=new Vehical();
		//vehical.setVehicalId(105);                                                                                                                                                                                                                            
		vehical.setMake("Honda");
		e.setVehical(vehical);
		vehical.setEmployee(e);
		EmployeeDao dao=new EmployeeDaoImpl();
		dao.createEmployee(e);
		
		//dao.updateEmployee(e);
		//dao.deleteEmployee(e);
	/*
		EmployeeDao dao=new EmployeeDaoImpl();
		Employee e1=dao.getemployee(105);
		System.out.println(e1.getEmpName());
		System.out.println(e1.getVehical().getMake());*/
	}
	
}


