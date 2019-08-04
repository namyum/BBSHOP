package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.PagingVO;

public interface GoodsService {
	
	// 카테고리 int > String
	public String category(int category);

	
	/* 페이징 O, 상품 목록 */
	public List<GoodsVO> getGoodsList(int category, PagingVO pagingVO, String sorting, String min_amount, String max_amount, 
			List<String> positions, List<Integer> hands, List<String> brands);


	/* 카테고리별 전체 goods 데이터 개수 */
	public int getTotalCount(PagingVO pagingVO, int category);
	
	
	/* 상품 조회 */
	public GoodsVO getGoodsInfo(Long goods_num);
}
