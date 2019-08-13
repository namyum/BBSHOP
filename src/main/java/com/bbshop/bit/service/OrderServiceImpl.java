package com.bbshop.bit.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.Cart_PDVO;
import com.bbshop.bit.domain.Gd_GloveVO;
import com.bbshop.bit.domain.OrderVO;
import com.bbshop.bit.mapper.OrderMapper;

@Service("orderService")
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<Cart_PDVO> getCheckedCartList(String[] goods_num_list){
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		List<Cart_PDVO> cartList = mapper.getCheckedCartList(goods_num_list);
		
		return cartList;
	}
	
	@Override
	public Gd_GloveVO getOptionListGlove(long gd_details) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		Gd_GloveVO glovevo = mapper.getOptionListGlove(gd_details); 
		
		return glovevo;
	}
	
	/*
	@Override
	public Gd_batVO getOptionListBat(long gd_details) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		Gd_batVO batvo = mapper.getOptionListGlove(gd_details); 
		
		return batvo;
	}
	
	@Override
	public Gd_uniformVO getOptionListUniform(long gd_details) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		Gd_uniformVO uniformvo = mapper.getOptionListGlove(gd_details); 
		
		return uniformvo;
	}
	
	@Override
	public Gd_shoesVO getOptionListShoes(long gd_details) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		Gd_shoesVO shoesvo = mapper.getOptionListGlove(gd_details); 
		
		return shoesvo;
	}
	
	@Override
	public Gd_ballVO getOptionListBall(long gd_details) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		Gd_ballVO ballvo = mapper.getOptionListGlove(gd_details); 
		
		return ballvo;
	}
	*/
	
	@Override
	public int insertOrder(OrderVO order) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.insertOrder(order);
	}
	
	@Override
	public long getLastOrderNum(long user_key) {
		OrderMapper mapper = sqlSession.getMapper(OrderMapper.class);
		
		return mapper.getLastOrderNum(user_key);
	}

}
