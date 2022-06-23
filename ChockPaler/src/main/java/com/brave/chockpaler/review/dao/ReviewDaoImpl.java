package com.brave.chockpaler.review.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.brave.chockpaler.review.dto.ReviewDto;

@Repository
public class ReviewDaoImpl implements ReviewDao{

	@Autowired
	SqlSession session;
	
	@Override
	public void insertReview(ReviewDto dto) {
		session.insert("review.insert", dto);
	}

}
