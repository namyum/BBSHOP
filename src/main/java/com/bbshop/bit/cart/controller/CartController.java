package com.bbshop.bit.cart.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bbshop.bit.cart.domain.Cart_PDVO;
import com.bbshop.bit.cart.domain.GoodsVO;
import com.bbshop.bit.cart.service.CartService;


/*1. 멤버 키를 받아서 카트리스트를 받아오자
 *2. 카트리스트에서 굿즈 넘을 받아서 상품 정보를 가져오자
 *3. 굿즈 리스트에서 필요한 항목을 받아오자.
 *4. 필요한 항목을 받은것을 jsp에 model에 넣어서 보내주자.*/
@Controller
@RequestMapping("*.do")
public class CartController {
	
	
	@Autowired(required=true)
	CartService cartService;
	
	@RequestMapping("cart.do")
	public String cart(HttpSession session, Model model) {
		System.out.println("cart페이지");
		long user_key = 1;
		Cart_PDVO vo = new Cart_PDVO();
		vo.setUSER_KEY(user_key);
		
		List<Cart_PDVO> cartList = cartService.getCartList(user_key);
		List<GoodsVO> goodsList=new ArrayList<GoodsVO>();
		for(int i = 0; i<cartList.size();i++) {
		long goodsnum = cartList.get(i).getGOODS_NUM();
		int price =cartList.get(i).getPRICE();
		System.out.println("price:"+price);
		
		goodsList = cartService.getGoodsList(goodsnum);
		
		}
		model.addAttribute("goodsList",goodsList);
		model.addAttribute("cartList",cartList);
		
		return "shoppingMall/cart/cart";
	}
}
