package com.bbshop.bit.cart.mapper;

import java.util.List;

import com.bbshop.bit.cart.domain.Cart_PDVO;

public interface CartMapper {

	public List<Cart_PDVO> getCartList(long user_key);
}
