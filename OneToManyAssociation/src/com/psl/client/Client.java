package com.psl.client;

import java.util.Date;

import com.psl.Employee;
import com.psl.Vehical;
import com.psl.dao.EmployeeDao;
import com.psl.dao.EmployeeDaoImpl;

public class Client {

	public static void main(String[] args) {
		
		Employee e=new Employee();
		e.setEmpID(105);
		e.setEmpName("mohsin");
		e.setSalary(10000);
		e.setDateOfBirth(new Date());
		
		Vehical vehical=new Vehical();
		vehical.setVehicalId(1);
		vehical.setMake("Honda");
		e.getVehical().add(vehical);
		
		Vehical vehical1=new Vehical();
		vehical1.setVehicalId(2);
		vehical1.setMake("suzuki");
		e.getVehical().add(vehical1);
		
		EmployeeDao dao=new EmployeeDaoImpl();
		dao.createEmployee(e);
		
		/*//dao.updateEmployee(e);
		//dao.deleteEmployee(e);
		//System.out.println(dao.getemployee(106));
		System.out.println("Record inserted...!");
		
		EmployeeDao dao=new EmployeeDaoImpl();
		Employee e1=dao.getemployee(103);
		System.out.println(e1.getEmpName());
		for (Vehical vehical : e1.getVehical()) {
			System.out.println(vehical.getMake());
			
		}*/
	}
	
}


