package com.bbshop.bit.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bbshop.bit.domain.Cart_PDVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.service.CartService;
import com.bbshop.bit.service.KakaoPay;
import com.bbshop.bit.service.OrderService;

@Controller
public class OrderController {
	
	List<Cart_PDVO> cartList;
	List<GoodsVO> goodsList;
	
	@Autowired(required=true)
	OrderService orderService;
	
	@Autowired(required=true)
	CartService cartService;
	
	@Autowired(required=true)
	KakaoPay kakaopay;

	// 쇼핑몰 - 주문 - 주문하기
	@RequestMapping("/order_cart.do")
	public String order_cart(HttpSession session, Model model, @RequestParam("GOODS_NUM_LIST") String list, 
			 @RequestParam("SHIPPING_FEE") int shipping_fee) {
		
		String[] goods_num_list = list.split(",");
		
		goodsList = new ArrayList<GoodsVO>();
		List<Object> optionList = new ArrayList<Object>();
		int allPrice = 0;
		
		// jsp에서 구매 체크한 goods_num을 불러와 해당 cartList에 입력
		cartList = orderService.getCheckedCartList(goods_num_list);
		
		// totalPrice 넣어주는 과정
		for(int i=0;i<cartList.size();i++) {
			Cart_PDVO temp = cartList.get(i);
			temp.setTOTALPRICE(temp.getPRICE()*temp.getQNTTY());
			cartList.set(i, temp);
			allPrice += cartList.get(i).getTOTALPRICE();
		}
		
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
		model.addAttribute("allPrice" + allPrice);
		
		return "shoppingMall/order/order";
	}
	
    @RequestMapping("/gokakao.do")
    public String goKakao() {
    	return "shoppingMall/kakaoPay";
    }
    
    @RequestMapping(value="/kakaoPay.do", method=RequestMethod.GET)
    public void kakaoPayGet() {
        
    }
    
    @RequestMapping(value="/kakaoPay.do", method=RequestMethod.POST)
    public String kakaoPay() {
        System.out.println("kakaoPay post............................................");
        
        return "redirect:" + kakaopay.kakaoPayReady();
 
    }
    
    @RequestMapping(value="/kakaoPaySuccess.do", method=RequestMethod.GET)
    public String kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model) {
    	System.out.println("kakaoPaySuccess get............................................");
    	System.out.println("kakaoPaySuccess pg_token : " + pg_token);
    	
    	model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token));
    	
    	return "shoppingMall/kakaoPaySuccess";
        
    }
	
	

}
