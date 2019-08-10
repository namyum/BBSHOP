package com.bbshop.bit.service;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.Gd_BallVO;
import com.bbshop.bit.domain.Gd_BatVO;
import com.bbshop.bit.domain.Gd_GloveVO;
import com.bbshop.bit.domain.Gd_ShoesVO;
import com.bbshop.bit.domain.Gd_UniformVO;
import com.bbshop.bit.mapper.GoodsMapper;
import com.bbshop.bit.mapper.OrderMapper;

import lombok.extern.log4j.Log4j;

@Log4j
@Service("orderService")
public class OrderServiceImpl implements OrderService {
	
//	private OrderMapper orderMapper;
	
	private GoodsMapper goodsMapper;
	
	@Autowired
	private SqlSession sqlSession;
	
	
	
	/*
	// goodsMapper를 이용해 GoodsVO를 반환
	@Override
	public GoodsVO getGoodsInfo(Long goods_num) {
		log.info("OrderService - GoodsMapper......getGoodsInfo..goods_num : " + goods_num);
		
		return goodsMapper.getGoodsInfo(goods_num);
	}
*/
	
	
	@Override
	public Gd_GloveVO getGloveOption(long goods_num, int hand, int taming) {
		log.info("OrderService.....gloveinfo");
		log.info("orderservice, gloveinfo, goods_num : " + goods_num + ", hand :" + hand + ", taming : " + taming);
		OrderMapper orderMapper = sqlSession.getMapper(OrderMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("goods_num", goods_num);
		map.put("hand", hand);
		map.put("taming", taming);
	
		return orderMapper.getGloveOption(map);
	}


	@Override
	public Gd_BatVO getBatOption(long goods_num, int gd_size) {
		OrderMapper orderMapper = sqlSession.getMapper(OrderMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("goods_num", goods_num);
		map.put("gd_size", gd_size);
		
		return orderMapper.getBatOption(map);
	}


	@Override
	public Gd_UniformVO getUniformOption(long goods_num, int gd_size) {
		OrderMapper orderMapper = sqlSession.getMapper(OrderMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("goods_num", goods_num);
		map.put("gd_size", gd_size);
		
		return orderMapper.getUniformOption(map);
	}


	@Override
	public Gd_ShoesVO getShoesOption(long goods_num, int spike, int gd_size) {
		OrderMapper orderMapper = sqlSession.getMapper(OrderMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("goods_num", goods_num);
		map.put("spike", spike);
		map.put("gd_size", gd_size);
		
		return orderMapper.getShoesOption(map);
	}


	@Override
	public Gd_BallVO getBallOption(long goods_num, int sales_unit) {
		OrderMapper orderMapper = sqlSession.getMapper(OrderMapper.class);
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("goods_num", goods_num);
		map.put("sales_unit", sales_unit);
		
		return orderMapper.getBallOption(map);
		
	}
	

}
