package com.bbshop.bit.mapper;

import java.util.List;
import java.util.Map;

import com.bbshop.bit.domain.Cart_PDVO;
import com.bbshop.bit.domain.GoodsVO;

public interface CartMapper {

	public List<Cart_PDVO> getCartList(long user_key);
	public GoodsVO getGoods(long goodsnum);
	public void modify(Cart_PDVO qnt);
	public void selectDelete(Map<String,Object> deleteMap);
	public void deleteAll();
}
