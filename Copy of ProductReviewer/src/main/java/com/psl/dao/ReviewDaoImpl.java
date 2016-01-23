package com.psl.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.psl.bean.Product;
import com.psl.bean.RatingDetails;
import com.psl.bean.Review;
import com.psl.utility.HibernateUtility;

public class ReviewDaoImpl implements ReviewDao{

	public void insertReview(Review review) {
SessionFactory sf = HibernateUtility.getSessionfactory();
		
		Session session =sf.openSession(); 
		
		session.beginTransaction();
		
		session.save(review);
		
		
		session.getTransaction().commit();		
		System.out.println("in review");
	}

	public List<Review> getReview(int productId) {
		/*SessionFactory sf = HibernateUtility.getSessionfactory();

		Session session =sf.openSession(); 
		session.beginTransaction();
		String sql = "SELECT * FROM review where product_productId = :pId";
        SQLQuery query = session.createSQLQuery(sql);
        query.addEntity(Review.class);
        query.setParameter("pId", productId);
        List<Review> reviewlist= query.list();
     	session.getTransaction().commit();	
		//System.out.println(catobj.getCategoryId()+catobj.getCategoryName());
     	System.out.println(reviewlist);
     	 return reviewlist;*/
		return null;
	}

	public void updateReview(Review review) {
    SessionFactory sf = HibernateUtility.getSessionfactory();
		
		Session session =sf.openSession(); 
		session.beginTransaction();
		session.update(review);
		session.getTransaction().commit();		
	}

	public void deleteReview(Review review) {
		SessionFactory sf = HibernateUtility.getSessionfactory();
		
		Session session =sf.openSession();
		
		session.beginTransaction();
		session.delete(review);		
	}
	public int getReviewById(int productId) {
		SessionFactory sf = HibernateUtility.getSessionfactory();

		Session session =sf.openSession(); 
		session.beginTransaction();
		String sql = "SELECT * FROM review where product_productId = :pId";
        SQLQuery query = session.createSQLQuery(sql);
        query.addEntity(Review.class);
        query.setParameter("pId", productId);
       int count=query.list().size();
     	session.getTransaction().commit();	
		//System.out.println(catobj.getCategoryId()+catobj.getCategoryName());
     	 return count;
	}

	public List<Review> getReviewListbyProductId(int productId) {
		SessionFactory sf = HibernateUtility.getSessionfactory();

		Session session =sf.openSession(); 
		session.beginTransaction();
		String sql = "SELECT * FROM review where product_productId = :pId";
        SQLQuery query = session.createSQLQuery(sql);
        query.addEntity(Review.class);
        query.setParameter("pId", productId);
        System.out.println(query.list().size());
        List<Review> reviewlist= query.list();
     	session.getTransaction().commit();	
		
     	 return reviewlist;
	}
     	 
     	public Map<String , Review> getCustomernameByReview(List<Review> list) {
     		
     		Map<String,Review> map=new HashMap<String, Review>();
     		for (Review review : list) {
				String custmerName=review.getCustomer().getFirstName()+" "+review.getCustomer().getLastName();
			System.out.println(custmerName);
			map.put(custmerName, review);
			
		
		
	    	
			}
			return map;
    		
    	}
	

}
