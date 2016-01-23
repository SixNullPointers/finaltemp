package com.psl.dao;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.psl.bean.Product;
import com.psl.bean.RatingDetails;
import com.psl.utility.HibernateUtility;

public class AverageRating {

	Map<Product,Float> avgProdList = new HashMap<Product, Float>();
	
	public void calulateAverageRating() {

		SessionFactory sf = HibernateUtility.getSessionfactory();

		Session session = sf.openSession();

		session.beginTransaction();
		String sql = "SELECT * FROM product";
		SQLQuery query = session.createSQLQuery(sql);
		query.addEntity(Product.class);
		List listProductIds = query.list();
		for(Object pro : listProductIds){
			Product p = (Product)pro;
			
			
			String sql1 = "SELECT * FROM ratingdetails where productId = :productId";
			SQLQuery query1 = session.createSQLQuery(sql1);
	        query1.setParameter("productId", p.getProductId());
			query1.addEntity(RatingDetails.class);

			List ratings = query1.list();
	        session.getTransaction().commit();
	        float count=ratings.size();
	        
	        int sum=0;
	        for(Object r : ratings){
	        	RatingDetails rate= (RatingDetails)r;
	        	sum=sum+rate.getRating();
	        }
	        float averageRating = (sum/count);
	      
	       avgProdList.put(p, averageRating);
			System.out.println("pid "+p.getProductId() +" avg " + averageRating);
			
		}
		System.out.println(avgProdList);

		
		System.out.println();
		sortAverageRating();
		/*for (Iterator iterator = listProductIds.iterator(); iterator.hasNext();) {
			RatingDetails ratingobj = (RatingDetails) iterator.next();
			System.out.print("First Name: " + employee.getFirstName());
			System.out.print("  Last Name: " + employee.getLastName());
			System.out.println("  Salary: " + employee.getSalary());
		}*/
	}
	
	public void sortAverageRating(){
		Set<Entry<Product, Float>> set = avgProdList.entrySet();
        List<Entry<Product, Float>> list = new ArrayList<Entry<Product, Float>>(set);
        Collections.sort( list, new Comparator<Map.Entry<Product, Float>>()
        {
			public int compare(Entry<Product, Float> o1,
					Entry<Product, Float> o2) {
				// TODO Auto-generated method stub
                return (o2.getValue()).compareTo( o1.getValue() );
			}
        } );
        System.out.println("Descending");
        for(Map.Entry<Product, Float> entry:list){
            System.out.println(entry.getKey()+" ==== "+entry.getValue());
        }
	}
	
	
	public void sortAverageRatingByCategory(){
		
	}

	public void AverageRatingByProductName(String prodName){
		SessionFactory sf = HibernateUtility.getSessionfactory();

		Session session = sf.openSession();

		session.beginTransaction();
		String sql1 = "SELECT * FROM product where productName = :productName";
		SQLQuery query1 = session.createSQLQuery(sql1);
        query1.setParameter("productName", prodName);
		query1.addEntity(Product.class);
        Product product = (Product) query1.uniqueResult();
        
        String sql2 = "SELECT * FROM ratingdetails where productId = :productId";
		SQLQuery query2 = session.createSQLQuery(sql2);
        query2.setParameter("productId", product.getProductId());
		query2.addEntity(RatingDetails.class);

        List ratings = query2.list();
        session.getTransaction().commit();
        float count=ratings.size();
        
        int sum=0;
        for(Object r : ratings){
        	RatingDetails rate= (RatingDetails)r;
        	sum=sum+rate.getRating();
        }
        float averageRating = (sum/count);
   
		System.out.println("pid "+product+" avg " + averageRating);
	}

}
