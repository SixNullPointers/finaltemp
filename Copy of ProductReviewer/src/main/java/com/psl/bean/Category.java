package com.psl.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;



public class Category {

	
	private int categoryId;
    private String categoryName;
    
	@OneToMany
	@JoinColumn(name="categoryId")
	private Set<Product> products=new HashSet<Product>();
	
	
	
	public Category(String categoryName) {
		super();
		this.categoryName = categoryName;
	}


	public Set<Product> getProducts() {
		return products;
	}



	public void setProducts(Set<Product> products) {
		this.products = products;
	}



	public Category(int categoryId, String categoryName) {
		super();
		this.categoryId = categoryId;
		this.categoryName = categoryName;
	}



	public Category() {
	}

	

	public int getCategoryId() {
		return categoryId;
	}



	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}



	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

}
