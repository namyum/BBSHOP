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

import com.bbshop.bit.domain.AddrVO;
import com.bbshop.bit.domain.Cart_PDVO;
import com.bbshop.bit.domain.Gd_BallVO;
import com.bbshop.bit.domain.Gd_BatVO;
import com.bbshop.bit.domain.Gd_GloveVO;
import com.bbshop.bit.domain.Gd_ShoesVO;
import com.bbshop.bit.domain.Gd_UniformVO;
import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.MemberVO;
import com.bbshop.bit.service.CartService;
import com.bbshop.bit.service.GoodsService;
import com.bbshop.bit.service.MemberService;
import com.bbshop.bit.service.MyPageService;
import com.bbshop.bit.service.OrderService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class OrderController {	
	
	@Autowired(required=true)
	private OrderService orderService;
	
	// goods에 대한 정보(GoodsVO)를 가져오기 위한 GoodsVO
	@Autowired(required=true)
	private GoodsService goodsService;
	
	@Autowired(required=true)
	private MemberService memberService;
	
	@Autowired(required=true)
	private CartService cartService;
	
	// 회원 user_key를 가져오기 위한 HttpSession
	private HttpSession session;
	
	@Autowired(required=true)
	// 회원 주소록을 가져오기 위한 MyPageService
	MyPageService mypageService;
	
	@RequestMapping(value="/order_good.do", method=RequestMethod.GET)
	public String order_good(@RequestParam int category, @RequestParam long goods_num,
								@RequestParam int option1, @RequestParam int option2, @RequestParam int qty,  Model model) {
		log.info("Controller...order_good");
		log.info("category : " + category + ", option1 : " + option1 + ", option2 : " + option2);
		log.info("goods_num : " + goods_num + ", qty : " + qty);
		
		List<GoodsVO> goodsList = new ArrayList<GoodsVO>();
		List<Object> optionList = new ArrayList<Object>();
		List<Cart_PDVO> orderList = new ArrayList<Cart_PDVO>();
		
		// goods_num으로  GOODS 테이블에 접근해, GoodsVO를 가져온다. 가져온 GoodsVO를 goodsList에 add!
		GoodsVO goodsVO = goodsService.getGoodsInfo(goods_num);
		goodsList.add(goodsVO);
		
		
		// 상품 상세옵션vo를 가져와서, optionList에 add!
		if(category == 1) {
			Gd_GloveVO gd_glove = orderService.getGloveOption(goods_num, option1, option2);
			optionList.add(gd_glove);
		}
		else if(category == 2) {
			Gd_BatVO gd_bat = orderService.getBatOption(goods_num, option1);
			optionList.add(gd_bat);
		}
		else if(category == 3) {
			Gd_UniformVO gd_uniform = orderService.getUniformOption(goods_num, option1);
			optionList.add(gd_uniform);
		}
		else if(category == 4) {
			Gd_ShoesVO gd_shoes = orderService.getShoesOption(goods_num, option1, option2);
			optionList.add(gd_shoes);
		}
		else {
			Gd_BallVO gd_ball = orderService.getBallOption(goods_num, option1);
			optionList.add(gd_ball);
		}
		

		// Cart_PDVO 잠시 빌리기...?
		Cart_PDVO orderGood = new Cart_PDVO();
		orderGood.setPRICE((int) goodsVO.getPrice());
		orderGood.setQNTTY(qty);
		orderGood.setSAVINGS((int)(goodsVO.getPrice()*0.05));
		orderGood.setTOTALPRICE(orderGood.getPRICE()*orderGood.getQNTTY());
		orderList.add(orderGood);
		
		int allPrice = orderGood.getTOTALPRICE();

		
//		long user_key = (long)session.getAttribute("user_key");
		long user_key = 950131;
		MemberVO user = memberService.getMemberInfo(user_key);
		
		List<AddrVO> userAddr = mypageService.getAddrList(user_key);

		int shipping_fee = cartService.calcShipping_fee(allPrice);
		
		model.addAttribute("goodsList", goodsList);
		model.addAttribute("optionList", optionList);
		model.addAttribute("orderList", orderList);
		model.addAttribute("allPrice" , allPrice);
		model.addAttribute("user", user);
		model.addAttribute("userAddr", userAddr);
		model.addAttribute("shipping_fee", shipping_fee);
		
		return "shoppingMall/order/order";
	}
	
	@RequestMapping(value="/zipcode", method=RequestMethod.GET)
	public String zipcode() {
		
		return "shoppingMall/order/zipcode";
	}
}
