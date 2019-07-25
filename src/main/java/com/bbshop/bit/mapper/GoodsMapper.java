package com.bbshop.bit.mapper;

import java.util.List;

import com.bbshop.bit.domain.GoodsVO;

public interface GoodsMapper {

	// 상품 목록 출력 - 정렬 - 신상품 순 (default)
	public List<GoodsVO> getGoodsList_New(int category);
	
	// 상품 목록 출력 - 정렬 - 인기상품
	public List<GoodsVO> getGoodsList_Best(int category);
	
	// 상품 목록 출력 - 정렬 - 낮은 가격
	public List<GoodsVO> getGoodsList_LowPrice(int category);
	
	// 상품 목록 출력 - 정렬 - 높은 가격
	public List<GoodsVO> getGoodsList_HighPrice(int category);

	
}
