package com.bbshop.bit.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.Cart_PDVO;
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

}
