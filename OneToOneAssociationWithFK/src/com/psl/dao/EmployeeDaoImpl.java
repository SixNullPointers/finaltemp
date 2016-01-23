package com.psl.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.psl.Employee;
import com.psl.util.HibernateUtil;

public class EmployeeDaoImpl implements EmployeeDao{

	@Override
	public void createEmployee(Employee employee) {
		//get connection object
		//write insert query
		//prepare statement object
		//execute statement
		//close statement
		
		SessionFactory sessionFactory=HibernateUtil.getSessionFactory();
		
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		try{
					session.save(employee);
		tx.commit();
		}
		catch(Exception e){
			tx.rollback();
			e.printStackTrace();
		}
		session.close();
	}

	@Override
	public void updateEmployee(Employee employee) {
		
		SessionFactory sessionFactory=HibernateUtil.getSessionFactory();
		
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.update(employee);
		tx.commit();
		session.close();
	}

	@Override
	public Employee getemployee(int empID) {
		
		SessionFactory sessionFactory=HibernateUtil.getSessionFactory();
		
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		Employee employee=(Employee) session.get(Employee.class, empID);
		
		return employee;
	}

	@Override
	public void deleteEmployee(Employee employee) {
	SessionFactory sessionFactory=HibernateUtil.getSessionFactory();
		
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.delete(employee);
		tx.commit();
		session.close();
	}

}
