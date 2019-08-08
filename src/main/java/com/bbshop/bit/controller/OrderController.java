package com.bbshop.bit.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bbshop.bit.domain.Cart_PDVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.service.CartService;
import com.bbshop.bit.service.OrderService;

@Controller
public class OrderController {
	
	List<Cart_PDVO> cartList;
	List<GoodsVO> goodsList;
	
	@Autowired(required=true)
	OrderService orderService;
	
	@Autowired(required=true)
	CartService cartService;

	// 쇼핑몰 - 주문 - 주문하기
	@RequestMapping("/order.do")
	public String order(HttpSession session, Model model, @RequestParam("GOODS_NUM_LIST") String list, 
			@RequestParam("ALLPRICE") int allprice, @RequestParam("SHIPPING_FEE") int shipping_fee) {

		System.out.println("allprice: "+allprice);
		System.out.println("shipping_fee: "+shipping_fee);
		
		String[] goods_num_list = list.split(",");
		
		goodsList = new ArrayList<GoodsVO>();
		
		// jsp에서 구매 체크한 goods_num을 불러와 해당 cartList 출력
		cartList = orderService.getCheckedCartList(goods_num_list);
		
		 for (String goods_num : goods_num_list ){
			 goodsList.add(cartService.getGoods(Long.parseLong(goods_num)));
		 }	
		 
		model.addAttribute("goodsList",goodsList);
		model.addAttribute("cartList",cartList);
		
		return "shoppingMall/order/order";
	}

}
