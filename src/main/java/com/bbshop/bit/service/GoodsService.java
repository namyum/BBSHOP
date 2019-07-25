package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.GoodsVO;

public interface GoodsService {
	// 카테고리 int > String
	public String category(int category);

	public List<GoodsVO> getGoodsList_New(int category);
	public List<GoodsVO> getGoodsList_Best(int category);
	public List<GoodsVO> getGoodsList_LowPrice(int category);
	public List<GoodsVO> getGoodsList_HighPrice(int category);
}
