package com.bbshop.bit.cart.service;

import java.util.List;

import com.bbshop.bit.cart.domain.Cart_PDVO;

public interface CartService {

	public List<Cart_PDVO> getCartList(long user_key);
}
