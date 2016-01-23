package com.psl.bean;



public class Product {

	private int productId;
	private String productName;
	private double productPrice;
	private String productFeature;
	//private Category  category;
	 //private String productFeature; 
	
//	public String getProductFeature() {
//		return productFeature;
//	}
//
//	public void setProductFeature(String productFeature) {
//		this.productFeature = productFeature;
//	}

	public Product(String productName, double productPrice,String productFeature ) {
		super();
		this.productName = productName;
		this.productPrice = productPrice;
		this.productFeature=productFeature;
		//this.category = category;
	}

	@Override
	public String toString() {
		return "Product [productId=" + productId + ", productName="
				+ productName + ", productPrice=" + productPrice
				+ ", productFeature=" + productFeature + "]";
	}

	public String getProductFeature() {
		return productFeature;
	}

	public void setProductFeature(String productFeature) {
		this.productFeature = productFeature;
	}

	
	
	public Product() {
		super();
	}

	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	
	/*public Product(String productName, double productPrice, Category category
			) {
		super();
		this.productName = productName;
		this.productPrice = productPrice;
		this.category = category;
		//this.productFeature = productFeature;
	}*/

	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(double productPrice) {
		this.productPrice = productPrice;
	}
/*	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}*/
	
	
	
}
