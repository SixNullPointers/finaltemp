package com.psl.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.psl.bean.Category;
import com.psl.utility.HibernateUtility;

public class CategoryDaoImpl implements CategoryDao{


	public void insertCategory(Category cat) {
		SessionFactory sf = HibernateUtility.getSessionfactory();
		
		Session session =sf.openSession(); 
		
		session.beginTransaction();
		
		session.save(cat);
		
		
		session.getTransaction().commit();
	}

	public Category getCategory(int catId) {
		// TODO Auto-generated method stub
		SessionFactory sf = HibernateUtility.getSessionfactory();

		Session session =sf.openSession(); //session factory will give sessions
		Category c = (Category)session.get(Category.class,catId);
		
		return c;
	}

	public void updateCategory(Category cat) {
		// TODO Auto-generated method stub
		SessionFactory sf = HibernateUtility.getSessionfactory();
		
		Session session =sf.openSession(); 
		session.beginTransaction();
		session.update(cat);
		session.getTransaction().commit();
	}

	public void deleteCategory(Category cat) {
		// TODO Auto-generated method stub
				SessionFactory sf = HibernateUtility.getSessionfactory();
				
				Session session =sf.openSession();
				
				session.beginTransaction();
				session.delete(cat);
				session.getTransaction().commit();
		
	}

}
