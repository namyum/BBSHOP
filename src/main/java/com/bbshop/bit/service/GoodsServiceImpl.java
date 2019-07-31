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



	/* 페이징 O */
	@Override
	public List<GoodsVO> getGoodsList(int category, PagingVO pagingVO, String sorting, String min_amount, String max_amount) {
		log.info("getGoodsList...Ajax..With Paging................");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("category", category);
		map.put("pagingVO", pagingVO);
		map.put("sorting", sorting);
		map.put("min_amount", Integer.parseInt(min_amount));
		map.put("max_amount", Integer.parseInt(max_amount));
		
		return mapper.getGoodsList(map);
	}



	
	
	/* 카테고리별  goods 데이터 개수 */
	@Override
	public int getTotalCount(int category) {
		log.info("get Total Count - " + category);
		
		return mapper.getTotalCount(category);
	}

	
	
	/* 상품 조회 */
	@Override
	public GoodsVO getGoodsInfo(Long goods_num) {
		log.info("getGoodsInfo....goods_num : "+goods_num+"............");
		
		return mapper.getGoodsInfo(goods_num);
	}








	
	
}
