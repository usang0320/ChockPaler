package com.brave.chockpaler.basket.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.brave.chockpaler.basket.dto.BasketDto;

@Repository
public class BasketDaoImpl implements BasketDao{

	@Autowired
	private SqlSession session;	
	
	@Override
	public void insert(BasketDto dto) {
		session.insert("basket.insert", dto);
		
	}
	
	@Override
	public List<BasketDto> getList(String id) {
		List<BasketDto> list = session.selectList("basket.getList", id);
		return list;
	}



}