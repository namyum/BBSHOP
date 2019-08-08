package com.bbshop.bit.mapper;

import java.util.List;

import com.bbshop.bit.domain.Cart_PDVO;

public interface OrderMapper {
	
	public List<Cart_PDVO> getCheckedCartList(String[] goods_num_list);

}
