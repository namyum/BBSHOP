package com.bbshop.bit.mapper;

import java.util.HashMap;
import java.util.List;

import com.bbshop.bit.domain.GoodsVO;

public interface GoodsMapper {

	/* 페이징 X
	// 상품 목록 출력 - 정렬 - 신상품 순 (default)
	public List<GoodsVO> getGoodsList_New(int category);
	
	// 상품 목록 출력 - 정렬 - 인기상품
	public List<GoodsVO> getGoodsList_Best(int category);
	
	// 상품 목록 출력 - 정렬 - 낮은 가격
	public List<GoodsVO> getGoodsList_LowPrice(int category);
	
	// 상품 목록 출력 - 정렬 - 높은 가격
	public List<GoodsVO> getGoodsList_HighPrice(int category);
	*/
	
	
	
	
	/* 페이징 O , map[pagingVO, category] */
	// 상품 목록 출력 - new -> paging (default)
	public List<GoodsVO> getGoodsList_New(HashMap<String, Object> map);
	
	// 상품 목록 출력 - best -> paging
	public List<GoodsVO> getGoodsList_Best(HashMap<String, Object> map);
		
	// 상품 목록 출력 - lowPrice -> paging
	public List<GoodsVO> getGoodsList_LowPrice(HashMap<String, Object> map);
		
	// 상품 목록 출력 - highPrice -> paging
	public List<GoodsVO> getGoodsList_HighPrice(HashMap<String, Object> map);
	
	
	
	
	/* 카테고리별 전체 goods 데이터 개수 */
	public int getTotalCount(HashMap<String, Object> map);
	
}
