package com.psl.bean;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
@Entity

public class Review {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int reviewId;
	private String reviewMessage;
	private Date reviewDate;
	@OneToOne( cascade={CascadeType.ALL})
	private Product product;
	@OneToOne( cascade={CascadeType.ALL})
	private Customer customer;
	
	public Review() {
	}

	@Override
	public String toString() {
		return "Review [reviewId=" + reviewId + ", reviewMessage="
				+ reviewMessage + ", reviewDate=" + reviewDate + ", product="
				+ product + ", customer=" + customer + "]";
	}

	public int getReviewId() {
		return reviewId;
	}

	public void setReviewId(int reviewId) {
		this.reviewId = reviewId;
	}

	public String getReviewMessage() {
		return reviewMessage;
	}

	public void setReviewMessage(String reviewMessage) {
		this.reviewMessage = reviewMessage;
	}

	public Date getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	
	
	
	}
	

	
