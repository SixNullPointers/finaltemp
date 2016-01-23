package com.psl.dao;

import java.util.List;
import java.util.Set;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.psl.bean.Category;
import com.psl.bean.Product;
import com.psl.utility.HibernateUtility;

public class ProductDaoImpl implements ProductDao{

	public void insertProduct(Product prod) {
		SessionFactory sf = HibernateUtility.getSessionfactory();
		
		Session session =sf.openSession(); 
		
		session.beginTransaction();
		
		session.save(prod);
		
		
		session.getTransaction().commit();
		System.out.println("prod");
	}

	public Product getProduct(int prodId) {
		SessionFactory sf = HibernateUtility.getSessionfactory();
		Session session = sf.openSession();
		Product prod = (Product) session.get(Product.class, prodId);
		return prod;
	}
	
	

	public void updateProduct(Product prod) {
		SessionFactory sf = HibernateUtility.getSessionfactory();
		Session session = sf.openSession();
		session.beginTransaction();
		session.update(prod);
		session.getTransaction().commit();
		
	}

	public void deleteProduct(Product prod) {
		SessionFactory sf = HibernateUtility.getSessionfactory();
		Session session = sf.openSession();
		session.beginTransaction();
		session.delete(prod);
		session.getTransaction().commit();		
	}
	
	/*public List<Product> getProductByCategory(String name){
		List<Product> plist=new ArrayList<Product>();
		SessionFactory sf = HibernateUtility.getSessionfactory();
	//	Session session = sf.openSession();
		
		return plist; 
	}*/
	
	
	public Set<Product> getProductByCategoryName(String categoryName){
		SessionFactory sf = HibernateUtility.getSessionfactory();

		Session session = sf.openSession();

		session.beginTransaction();
		String sql1 = "SELECT * FROM category where categoryName = :categoryName";
		SQLQuery query1 = session.createSQLQuery(sql1);
        query1.setParameter("categoryName", categoryName);
		query1.addEntity(Category.class);
		session.getTransaction().commit();
		List<Category> category = query1.list();
		Set<Product> productsByCategory = category.get(0).getProducts();
		System.out.println(productsByCategory);
		System.out.println(productsByCategory.size());
		return productsByCategory;

	}	
	
	
	
	public Product getProductByName(String productName) {
		SessionFactory sf = HibernateUtility.getSessionfactory();

		Session session =sf.openSession(); 
		session.beginTransaction();
		String sql = "SELECT * FROM product where productName = :pname";
        SQLQuery query = session.createSQLQuery(sql);
        query.addEntity(Product.class);
        query.setParameter("pname", productName);
        Product proobj = (Product) query.uniqueResult();
     	session.getTransaction().commit();	
		//System.out.println(catobj.getCategoryId()+catobj.getCategoryName());
		return proobj;
	}



}
