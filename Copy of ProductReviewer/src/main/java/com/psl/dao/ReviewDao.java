package com.psl.dao;

import java.util.List;
import java.util.Map;

import com.psl.bean.Review;

public interface ReviewDao {

	void insertReview(Review review);
	List<Review> getReviewListbyProductId(int reviewId);
	List<Review> getReview(int productId );
	void updateReview(Review review);
	void deleteReview(Review review);
 Map<String, Review> getCustomernameByReview(List<Review> list);
}
