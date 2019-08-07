package com.bbshop.bit.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import com.bbshop.bit.domain.GoodsQnaVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.MoreDetailVO;
import com.bbshop.bit.domain.PageDTO;
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
	public List<GoodsVO> getGoodsList(int category, PagingVO pagingVO, String sorting, String min_amount, String max_amount, 
			List<String> positions, List<Integer> hands, List<String> brands) {
		
		log.info("getGoodsList...Ajax..With Paging................");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("category", category);
		map.put("pagingVO", pagingVO);
		map.put("sorting", sorting);
		map.put("min_amount", Integer.parseInt(min_amount));
		map.put("max_amount", Integer.parseInt(max_amount));
		
		// 검색 리스트 배열에 값이 담겨 있으면, map에 담는다.
		if (positions != null) {
		
			map.put("positions", positions);
		}
		
		if (hands != null) {
			
			map.put("hands", hands);
		}
		
		if (brands != null) {
			
			map.put("brands", brands);
		}
		
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




	
	/* 상품 QNA 등록 */
	@Override
	public void insertGoodsQna(GoodsQnaVO qna) {
		log.info("Service - insertGoodsQna");
		
		mapper.insertGoodsQnaSelectKey(qna);
	}

	/* 상품 QNA 목록 */
	@Override
	public List<GoodsQnaVO> getQnaList(PagingVO pagingVO, long goods_num) {
		log.info("Service - getQnaList");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("pagingVO", pagingVO);
		map.put("goods_num", goods_num);

		return mapper.getQnaList(map);
	}
	
	
	
	
	
	
	
	
	/* user_key를 이용해 moredetail을 가져온다. */
	@Override
	public MoreDetailVO findDetail(long user_key) {
		return mapper.findDetail(user_key);
	}
	
	/* 추천상품 - 회원 */
	@Override
	public List<GoodsVO> recommendGoodsList(MoreDetailVO moredetail) {
		return mapper.recommendGoodsList(moredetail);
	}
	
	/* 추천상품 - 비회원 */
	@Override
	public List<GoodsVO> recommendBestList() {
		return mapper.recommendBestList();
	}
	
	/* ajax로 데이터 불러올 때 전체 개수 구하기 */	
	@Override
	public int getTotalCountAjax(int category, PagingVO pagingVO, String sorting, String min_amount, String max_amount,
			List<String> positions, List<Integer> hands, List<String> brands) {
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		
		map.put("category", category);
		map.put("pagingVO", pagingVO);
		map.put("sorting", sorting);
		map.put("min_amount", Integer.parseInt(min_amount));
		map.put("max_amount", Integer.parseInt(max_amount));
		
		// 검색 리스트 배열에 값이 담겨 있으면, map에 담는다.
		if (positions != null) {
		
			map.put("positions", positions);
		}
		
		if (hands != null) {
			
			map.put("hands", hands);
		}
		
		if (brands != null) {
			
			map.put("brands", brands);
		}
		
		return mapper.getTotalCountAjax(map);
	}


	
	
}
