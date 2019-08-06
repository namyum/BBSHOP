package com.bbshop.bit.cart.controller;

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

import com.bbshop.bit.cart.domain.Cart_PDVO;
import com.bbshop.bit.cart.domain.GoodsVO;
import com.bbshop.bit.cart.service.CartService;



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
		int allPrice=0;
		int shipping_fee=0;
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
		
		
		for(int i = 0 ; i<cartList.size();i++) {
			allPrice +=cartList.get(i).getTOTALPRICE(); 
		}
		
		shipping_fee=calcShipping_fee(allPrice);
		model.addAttribute("shipping_fee", shipping_fee);
		model.addAttribute("allPrice", allPrice);
		
		model.addAttribute("goodsList",goodsList);
		model.addAttribute("cartList",cartList);
		
		return "shoppingMall/cart/cart";
	}
	@ResponseBody
	@RequestMapping(value="QnttyUp.do" , method=RequestMethod.GET)
	public String qnttyUp(@RequestParam("QNTTY") int qnt, @RequestParam("index") int index,Model model) {
		Cart_PDVO temp =cartList.get(index);
		int allPrice=0;
		int shipping_fee=0;
		System.out.println(index);
		System.out.println(qnt);
		temp.setQNTTY(qnt);
		temp.setTOTALPRICE(temp.getPRICE()*qnt);
		System.out.println(temp.getTOTALPRICE());
		cartList.set(index, temp);
		
		for(int i = 0 ; i<cartList.size();i++) {
			allPrice +=cartList.get(i).getTOTALPRICE(); 
		}
		shipping_fee=calcShipping_fee(allPrice);
		System.out.println(allPrice);
		
		return ""+temp.getTOTALPRICE()+","+allPrice+","+shipping_fee;
	}
	@ResponseBody
	@RequestMapping(value="QnttyDown.do" , method=RequestMethod.GET)
	public String qnttyDown(@RequestParam("QNTTY") int qnt, @RequestParam("index") int index ,Model model) {
		Cart_PDVO temp =cartList.get(index);
		int allPrice=0;
		int shipping_fee=0;

		temp.setQNTTY(qnt);
		temp.setTOTALPRICE(temp.getPRICE()*qnt);
		cartList.set(index, temp);
		shipping_fee=calcShipping_fee(allPrice);
		for(int i = 0 ; i<cartList.size();i++) {
			allPrice +=cartList.get(i).getTOTALPRICE(); 
		}

		return ""+temp.getTOTALPRICE()+","+allPrice+","+shipping_fee;
	}
	
	public int calcShipping_fee(int allPrice) {
		int shipping_fee=0;
		if(allPrice>=2000000) {
			shipping_fee=0;
		}
		else {
			shipping_fee=2500;
			allPrice+=2500;
		}
		return shipping_fee;
	}
	@RequestMapping(value="selectDelete.do" , method=RequestMethod.POST)
	public String selectDelete(HttpServletRequest request) {
		String[] listindex =request.getParameterValues("listindex");
		//delete from tbl_member where userid in ('user30','user20')
		List<String> deletetemp =new ArrayList<String>();
		List<Integer> deleteList = new ArrayList<Integer>();
		Map<String,Object> deleteMap = new HashMap<String,Object>();
		for(int i = 0 ; i<listindex.length;i++) {
			deletetemp.add(i, listindex[i]);
		}
		//체크박스에서 받은 인자의 인덱스가 cartlist에서 pk가 몇번인지 받아와야한다.
		for(int i = 0; i<deletetemp.size();i++) {
			
			deleteList.add(i,(int) cartList.get(i).GD_CT_KEY);
			System.out.println(deleteList.get(i));
		}
		deleteMap.put("deleteList", deleteList);
		cartService.selectDelete(deleteMap);
		
		return "cart.do";
	}
}
