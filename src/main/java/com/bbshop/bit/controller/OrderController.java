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
import com.bbshop.bit.domain.OrderVO;
import com.bbshop.bit.service.CartService;
import com.bbshop.bit.service.KakaoPayService;
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
	KakaoPayService kakaopay;

	// 쇼핑몰 - 주문 - 주문하기
	@RequestMapping("/order_cart.do")
	public String order_cart(HttpSession session, Model model, @RequestParam("GOODS_NUM_LIST") String list, 
			 @RequestParam("SHIPPING_FEE") int shipping_fee) {
		
		String[] goods_num_list = list.split(",");
		
		goodsList = new ArrayList<GoodsVO>();
		List<Object> optionList = new ArrayList<Object>();
		int totalPrice = 0, allPrice = 0;
		
		// jsp에서 구매 체크한 goods_num을 불러와 해당 cartList에 입력
		cartList = orderService.getCheckedCartList(goods_num_list);
		
		// totalPrice 넣어주는 과정
		for(int i=0;i<cartList.size();i++) {
			Cart_PDVO temp = cartList.get(i);
			temp.setTOTALPRICE(temp.getPRICE()*temp.getQNTTY());
			cartList.set(i, temp);
			totalPrice += cartList.get(i).getTOTALPRICE();
		}
		
		allPrice = totalPrice + shipping_fee;
		
		// goods 가져와서 goodsList에 넣어주는 부분
		 for (String goods_num : goods_num_list ){
			 goodsList.add(cartService.getGoods(Long.parseLong(goods_num)));
		 }
		 
		// 상품 옵션 불러오는 부분
		for(int i=0; i<goodsList.size();i++) {
			switch(goodsList.get(i).getCategory()) {
			
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
		model.addAttribute("totalPrice" + totalPrice);
		model.addAttribute("allPrice" + allPrice);
		model.addAttribute("shipping_fee", shipping_fee);
		
		return "shoppingMall/order/order";
	}
    
    @RequestMapping(value="/kakaoPay.do", method=RequestMethod.GET)
    public void kakaoPayGet() {
        
    }
    
    @RequestMapping(value="/kakaoPay.do", method=RequestMethod.POST)
    public String kakaoPay(Model model, OrderVO order, @RequestParam("GOODS_NUM_LIST") String list, HttpSession session) {
        System.out.println("kakaoPay post............................................");
		/*
		 long user_key = (long)session.getAttribute("user_key");
		 String nickname = (String)session.getAttribute("nickname");
		 
		 // 비회원
		 if(nickname.substring(0,9).equals("noAccount")) {
		 	// alert("로그인이 필요합니다.");
		 }
		 else{
		 	long user_key = (long)session.getAttribute("user_key");
		 	qna.setUser_key(user_key);
		 	}
		 */
        
		String[] goods_num_list = list.split(",");
		int allPrice = 0;
		
        order.setUser_key(1);
        int res = orderService.insertOrder(order);
        
        if(res == 1) {
        	System.out.println("주문이 등록되었습니다.");
        } else {
        	System.out.println("주문 등록에 실패했습니다.");
        }
        
        long order_num = orderService.getLastOrderNum(order.getUser_key());
		
		goodsList = new ArrayList<GoodsVO>();
		
		// jsp에서 구매 체크한 goods_num을 불러와 해당 cartList에 입력
		cartList = orderService.getCheckedCartList(goods_num_list);
		
		// goods 가져와서 goodsList에 넣어주는 부분
		 for (String goods_num : goods_num_list ){
			 goodsList.add(cartService.getGoods(Long.parseLong(goods_num)));
		 }
		 
		// 총 결제 금액 구하는 과정
		for (int i = 0; i < cartList.size(); i++) {
			Cart_PDVO temp = cartList.get(i);
			temp.setTOTALPRICE(temp.getPRICE()*temp.getQNTTY());
			allPrice += cartList.get(i).getTOTALPRICE();
		}
		
        
        return "redirect:" + kakaopay.kakaoPayReady(goodsList, cartList, allPrice, list, order_num);
 
    }
    
    @RequestMapping(value="/kakaoPaySuccess.do", method=RequestMethod.GET)
    public String kakaoPaySuccess(@RequestParam("pg_token") String pg_token, Model model,
    		@RequestParam("allPrice") int allPrice, @RequestParam("list") String list, @RequestParam("order_num") long order_num) {
    	System.out.println("kakaoPaySuccess get............................................");
    	
    	System.out.println("order_num="+order_num);

    	String[] goods_num_list = list.split(",");
		
		goodsList = new ArrayList<GoodsVO>();
		
		// jsp에서 구매 체크한 goods_num을 불러와 해당 cartList에 입력
		cartList = orderService.getCheckedCartList(goods_num_list);
		
		// goods 가져와서 goodsList에 넣어주는 부분
		 for (String goods_num : goods_num_list ){
			 goodsList.add(cartService.getGoods(Long.parseLong(goods_num)));
		 }   	
		 
		for (int i = 0; i < cartList.size(); i++) {
			Cart_PDVO temp = cartList.get(i);
			temp.setTOTALPRICE(temp.getPRICE()*temp.getQNTTY());
		}

    	model.addAttribute("info", kakaopay.kakaoPayInfo(pg_token, allPrice));
    	model.addAttribute("goodsList",goodsList);
		model.addAttribute("orderList",cartList);
    	
    	return "shoppingMall/order/order_confirmation";
        
    }
    
    // 뷰 생성 예정
    @RequestMapping("/pay.do")
    public String pay() {
    	System.out.println("결제 실패");
    	
    	return " ";
        
    }

}
