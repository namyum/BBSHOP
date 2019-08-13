package com.bbshop.bit.mapper;

import java.util.List;
import java.util.Map;

import com.bbshop.bit.domain.Cart_GDVO2;
import com.bbshop.bit.domain.GoodsVO;

public interface CartMapper2 {

	public List<Cart_GDVO2> getCartList(long user_key);
	public GoodsVO getGoods(long goodsnum);
	public void modify(Cart_GDVO2 qnt);
	public void selectDelete(Map<String,Object> deleteMap);
	public void deleteAll();
}
