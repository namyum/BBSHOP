package com.bbshop.bit.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.mapper.GoodsMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor // 자동주입 어노테이션
public class GoodsServiceImpl implements GoodsService {
	
	private GoodsMapper mapper;

	// 카테고리 int > String
	@Override
	public String category(int category) {
		switch(category) {
			case 1: return "글러브";
			case 2: return "배트";
			case 3: return "유니폼";
			case 4: return "야구화";
			default: return "야구공";
		}
	}

	/* 페이징 X
	@Override
	public List<GoodsVO> getGoodsList_New(int category) {
		log.info("getGoodsList..New..................");
		
		return mapper.getGoodsList_New(category);
	}
	@Override
	public List<GoodsVO> getGoodsList_Best(int category) {
		log.info("getGoodsList..Best..................");
		
		return mapper.getGoodsList_Best(category);
	}
	@Override
	public List<GoodsVO> getGoodsList_LowPrice(int category) {
		log.info("getGoodsList..LowPrice..................");
		
		return mapper.getGoodsList_LowPrice(category);
	}
	@Override
	public List<GoodsVO> getGoodsList_HighPrice(int category) {
		log.info("getGoodsList..HighPrice..................");
		
		return mapper.getGoodsList_HighPrice(category);
	}
	*/


	/* 페이징 O */
	@Override
	public List<GoodsVO> getGoodsList_New(PagingVO pagingVO, int category) {
		log.info("getGoodsList..New..With Paging................");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagingVO", pagingVO);
		map.put("category", category);
		
		return mapper.getGoodsList_New(map);
	}

	@Override
	public List<GoodsVO> getGoodsList_Best(PagingVO pagingVO, int category) {
		log.info("getGoodsList..New..With Paging................");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagingVO", pagingVO);
		map.put("category", category);
		
		return mapper.getGoodsList_Best(map);
	}

	@Override
	public List<GoodsVO> getGoodsList_LowPrice(PagingVO pagingVO, int category) {
		log.info("getGoodsList..New..With Paging................");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagingVO", pagingVO);
		map.put("category", category);
		
		return mapper.getGoodsList_LowPrice(map);
	}

	@Override
	public List<GoodsVO> getGoodsList_HighPrice(PagingVO pagingVO, int category) {
		log.info("getGoodsList..New..With Paging................");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagingVO", pagingVO);
		map.put("category", category);
		
		return mapper.getGoodsList_HighPrice(map);
	}

}
