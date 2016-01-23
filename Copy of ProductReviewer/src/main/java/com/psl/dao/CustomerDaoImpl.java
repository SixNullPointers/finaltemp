package com.psl.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.psl.bean.Customer;
import com.psl.utility.HibernateUtility;

public class CustomerDaoImpl implements CustomerDao {

	public void insertCustomer(Customer cust) {
		SessionFactory sf = HibernateUtility.getSessionfactory();
		
		Session session =sf.openSession(); 
		
		session.beginTransaction();
		
		session.save(cust);
		
		
		session.getTransaction().commit();
System.out.println("cust");
	}

	public Customer getCustomer(int custId) {
		SessionFactory sf = HibernateUtility.getSessionfactory();
		Session session = sf.openSession();
		Customer customer = (Customer) session.get(Customer.class, custId);
		return customer;
	}

	public void updateCustomer(Customer cust) {
		// TODO Auto-generated method stub
		SessionFactory sf = HibernateUtility.getSessionfactory();
		Session session = sf.openSession();
		session.beginTransaction();
		session.update(cust);
		session.getTransaction().commit();
	}

	public void deleteCustomer(Customer cust) {
		// TODO Auto-generated method stub
		SessionFactory sf = HibernateUtility.getSessionfactory();
		Session session = sf.openSession();
		session.beginTransaction();
		session.delete(cust);
		session.getTransaction().commit();
	}

}
