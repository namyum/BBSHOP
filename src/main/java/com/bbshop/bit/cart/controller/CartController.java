package com.bbshop.bit.cart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("*.do")
public class CartController {

	@RequestMapping("cart.do")
	public String cart() {
		System.out.println("cart∆‰¿Ã¡ˆ");
		return "shoppingMall/cart/cart";
	}
}
