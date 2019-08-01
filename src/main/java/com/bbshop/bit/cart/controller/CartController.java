package com.bbshop.bit.cart.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bbshop.bit.cart.domain.Cart_PDVO;
import com.bbshop.bit.cart.service.CartService;


/*1. 멤버 키를 받아서 카트리스트를 받아오자
 *2. 카트리스트에서 굿즈 넘을 받아서 상품 정보를 가져오자
 *3. 굿즈 리스트에서 필요한 항목을 받아오자.
 *4. 필요한 항목을 받은것을 jsp에 model에 넣어서 보내주자.*/
@Controller
@RequestMapping("*.do")
public class CartController {
	
	
	@Autowired
	CartService cartservice;
	
	@RequestMapping("cart.do")
	public String cart(HttpSession session, Model model) {
		System.out.println("cart페이지");
		long user_key = 1;
		Cart_PDVO vo = new Cart_PDVO();
		vo.setUSER_KEY(user_key);
		List<Cart_PDVO> cartList = cartservice.getCartList(user_key);
		
		return "shoppingMall/cart/cart";
	}
}
