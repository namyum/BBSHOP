package com.bbshop.bit.mapper;

import java.util.HashMap;
import java.util.List;

import com.bbshop.bit.domain.GoodsVO;

public interface GoodsMapper {
		
	// 페이징 O
	// 상품 목록, sorting값에 따라 동적쿼리
	// 전달받은 hashmap[pagingVO(pageNum,amount), category, sorting] */
	public List<GoodsVO> getGoodsList(HashMap<String, Object> map);
	
	
	
	// 카테고리 별, goods 데이터 개수 
	public int getTotalCount(HashMap<String, Object> map);
	
	
	
	// 상품 조회
	public GoodsVO getGoodsInfo(long goods_num);
	
}
