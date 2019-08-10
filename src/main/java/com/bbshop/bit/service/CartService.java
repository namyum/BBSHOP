package com.bbshop.bit.service;

import java.util.List;
import java.util.Map;

import com.bbshop.bit.domain.Cart_PDVO;
import com.bbshop.bit.domain.GoodsVO;

public interface CartService {

	public List<Cart_PDVO> getCartList(long user_key);
	public GoodsVO getGoods(long goodsnum);
	public void modify(Cart_PDVO qnt);
	public void selectDelete(Map<String,Object> deleteMap);
	public void deleteAll();

	public int calcShipping_fee(int allPrice);
}
