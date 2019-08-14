package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.Gd_gloveVO;
import com.bbshop.bit.domain.GoodsVO;

public interface AdminService {

	public List<GoodsVO> getGoodsList();
	public List<Object> getGdList(int category, long goods_NUM);
	public void insertGoods(GoodsVO vo, Object obj);
}
