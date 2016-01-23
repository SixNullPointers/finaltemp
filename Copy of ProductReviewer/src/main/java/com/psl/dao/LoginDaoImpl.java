package com.psl.dao;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.psl.bean.Login;
import com.psl.bean.Review;
import com.psl.utility.HibernateUtility;

public class LoginDaoImpl implements LoginDao {

	public void insertLogin(Login login) {
		SessionFactory sf = HibernateUtility.getSessionfactory();
		
		Session session =sf.openSession(); 
		
		session.beginTransaction();
		
		session.save(login);
		
		
		session.getTransaction().commit();

	}

	public Login getLogin(String username) {
		SessionFactory sf = HibernateUtility.getSessionfactory();
		Session session = sf.openSession();
		Login login = (Login) session.get(Login.class, username);
		return login;
	}

	public void updateLogin(Login login) {
		SessionFactory sf = HibernateUtility.getSessionfactory();
		Session session = sf.openSession();
		session.beginTransaction();
		session.update(login);
		session.getTransaction().commit();

	}

	public void deleteLogin(Login login) {
		
		SessionFactory sf = HibernateUtility.getSessionfactory();
		Session session = sf.openSession();
		session.beginTransaction();
		session.delete(login);
		session.getTransaction().commit();
	}

//	public boolean verifyLogin(String uname, String pwd) {
//		SessionFactory sf = HibernateUtility.getSessionfactory();
//		Session session = sf.openSession();
//		Login login = (Login) session.get(Login.class, uname);
//		
//		System.out.println(login);
//		
//		if(!(login.equals(null)) && login.getPassword().equals(pwd))
//			return true;
//		return false;
//		
//		
//	}
	
	public boolean verifyLogin(String uname, String pwd) {
		SessionFactory sf = HibernateUtility.getSessionfactory();
		System.out.println("here");
		Session session =sf.openSession(); 
		session.beginTransaction();
		String sql = "SELECT * FROM login where username = :uname and password = :pwd";
        SQLQuery query = session.createSQLQuery(sql);
        query.addEntity(Login.class);
        query.setParameter("uname", uname);
        query.setParameter("pwd", pwd);
        Login login= (Login)query.uniqueResult();
       
     	session.getTransaction().commit();	
		//System.out.println(catobj.getCategoryId()+catobj.getCategoryName());
     	if(login==null)
     	 return false;
     	return true;
	}
	

}
