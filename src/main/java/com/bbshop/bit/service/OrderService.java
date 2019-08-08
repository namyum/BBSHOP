package com.bbshop.bit.service;

import java.util.List;

import com.bbshop.bit.domain.Cart_PDVO;

public interface OrderService {
	
	public List<Cart_PDVO> getCheckedCartList(String[] goods_num_list);

}
