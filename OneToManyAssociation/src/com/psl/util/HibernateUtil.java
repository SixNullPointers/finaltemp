package com.psl.util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HibernateUtil {

  static SessionFactory sessionFactory=null;
	
	public static SessionFactory getSessionFactory(){
		if(sessionFactory==null){

			Configuration cfg=new Configuration();
			cfg.configure();
			sessionFactory=cfg.buildSessionFactory();
			
			
		}
		return sessionFactory;
	}
}
