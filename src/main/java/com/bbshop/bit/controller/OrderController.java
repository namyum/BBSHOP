package com.bbshop.bit.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	@RequestMapping("/order_cart.do")
	public String order_cart(HttpSession session, Model model, @RequestParam("GOODS_NUM_LIST") String list, 
			 @RequestParam("SHIPPING_FEE") int shipping_fee) {
		
		String[] goods_num_list = list.split(",");
		
		goodsList = new ArrayList<GoodsVO>();
		List<Object> optionList = new ArrayList<Object>();
		
		// jsp에서 구매 체크한 goods_num을 불러와 해당 cartList 출력
		cartList = orderService.getCheckedCartList(goods_num_list);
		
		// goods 가져와서 goodsList에 넣어주는 부분
		 for (String goods_num : goods_num_list ){
			 goodsList.add(cartService.getGoods(Long.parseLong(goods_num)));
		 }
		 
		// 상품 옵션 불러오는 부분
		for(int i=0; i<goodsList.size();i++) {
			switch(goodsList.get(i).getCATEGORY()) {
			
			// 글러브
			case 1 : 
				optionList.add(orderService.getOptionListGlove(cartList.get(i).getGD_DETAILS()));
				break;
			
			/*
			// 배트
			case 2 : 
				optionList.add(orderService.getOptionListBat(cartList.get(i).getGD_DETAILS()));
				break;
			
			// 유니폼
			case 3 : 
				optionList.add(orderService.getOptionListUniform(cartList.get(i).getGD_DETAILS()));
				break;
				
			// 야구화
			case 4 : 
				optionList.add(orderService.getOptionListShoes(cartList.get(i).getGD_DETAILS()));
				break;
				
			// 야구공
			case 5 : 
				optionList.add(orderService.getOptionListBall(cartList.get(i).getGD_DETAILS()));
				break;
			 */
			}

		}
		model.addAttribute("goodsList",goodsList);
		model.addAttribute("orderList",cartList);
		model.addAttribute("optionList", optionList);
		
		System.out.println("option1: "+optionList.get(0));
		System.out.println("option2: "+optionList.get(1));
		
		return "shoppingMall/order/order";
	}

}
