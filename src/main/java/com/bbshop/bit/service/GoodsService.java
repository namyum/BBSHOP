package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.PagingVO;

public interface GoodsService {
	// 카테고리 int > String
	public String category(int category);

	
	/* 페이징 X 
	public List<GoodsVO> getGoodsList_New(int category);
	public List<GoodsVO> getGoodsList_Best(int category);
	public List<GoodsVO> getGoodsList_LowPrice(int category);
	public List<GoodsVO> getGoodsList_HighPrice(int category);
	*/


	/* 페이징 O */
	public List<GoodsVO> getGoodsList_New(PagingVO pagingVO, int category);
	public List<GoodsVO> getGoodsList_Best(PagingVO pagingVO, int category);
	public List<GoodsVO> getGoodsList_LowPrice(PagingVO pagingVO, int category);
	public List<GoodsVO> getGoodsList_HighPrice(PagingVO pagingVO, int category);


	/* 카테고리별 전체 goods 데이터 개수 */
	public int getTotalCount(PagingVO pagingVO, int category);
}
