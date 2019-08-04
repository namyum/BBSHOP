package com.bbshop.bit.cart.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	List<Cart_PDVO> cartList ;
	List<GoodsVO> goodsList;
	
	@Autowired(required=true)
	CartService cartService;
	
	@RequestMapping("cart.do")
	public String cart(HttpSession session, Model model) {
		System.out.println("cart페이지");
		long user_key = 1;
		Cart_PDVO vo = new Cart_PDVO();
		vo.setUSER_KEY(user_key);
		
		cartList = cartService.getCartList(user_key);
		goodsList = new ArrayList<GoodsVO>();
		
		for (int i = 0; i < cartList.size(); i++) {
			long goodsnum = cartList.get(i).getGOODS_NUM();
			Cart_PDVO temp = cartList.get(i);
			temp.setTOTALPRICE(temp.getPRICE());
			cartList.set(i, temp);
			int price = cartList.get(i).getPRICE();
			goodsList.add(cartService.getGoods(goodsnum));

		}

		for(int i = 0 ; i<goodsList.size();i++) {
			System.out.println("굿즈리스트 다들어오는가?"+goodsList.get(i));
			System.out.println("카트리스트 토탈이 수정되었낭?"+cartList.get(i));
		}
		model.addAttribute("goodsList",goodsList);
		model.addAttribute("cartList",cartList);
		
		return "shoppingMall/cart/cart";
	}
	@ResponseBody
	@RequestMapping(value="QnttyUp.do" , method=RequestMethod.GET)
	public int qnttyUp(@RequestParam("QNTTY") int qnt, @RequestParam("index") int index) {
		Cart_PDVO temp =cartList.get(index);
		System.out.println(index);
		System.out.println(qnt);
		temp.setQNTTY(qnt);
		temp.setTOTALPRICE(temp.getPRICE()*qnt);
		System.out.println(temp.getTOTALPRICE());
		cartList.set(index, temp);
		return temp.getTOTALPRICE();
	}
}
