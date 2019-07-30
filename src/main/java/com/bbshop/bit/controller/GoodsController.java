package com.bbshop.bit.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bbshop.bit.domain.GoodsVO;
import com.bbshop.bit.domain.PageDTO;
import com.bbshop.bit.domain.PagingVO;
import com.bbshop.bit.service.GoodsService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@AllArgsConstructor
public class GoodsController {
	
	@Autowired
	private GoodsService service;
	
	private HttpSession session; // 로그인 시에 session에 id값이 담겨있다.
	
	// 상품 목록 페이지
	@RequestMapping(value="/goods_list.do", method=RequestMethod.GET)
	public String goods_list(@RequestParam(required=false, defaultValue="1") int category, PagingVO pagingVO, Model model) {
		
		log.info("Controller...goods_list.jsp");
		
		String id = (String)session.getAttribute("id");
		
		// id = "noAccount";
		
		model.addAttribute("categoryInt", category);
		model.addAttribute("categoryString", service.category(category));
		
		model.addAttribute("pageMaker", new PageDTO(pagingVO, 123));
		model.addAttribute("id", id); // 세션에서 받은 id 값을 model에 추가함.
		
		return "shoppingMall/goods/goods_list";
	}
	
	
	// 상품 목록 페이지 - ajax 데이터 뿌려주기 
	@RequestMapping(value="/getGoodsList_Ajax.do", method=RequestMethod.GET, produces="application/json;charset=UTF-8")
	@ResponseBody
	public String getGoodsList_Ajax(@RequestParam int category, PagingVO pagingVO, @RequestParam String sorting,
										@RequestParam String min_amount, @RequestParam String max_amount) {
		log.info("Controller...goods_list.jsp...goodsListAjax");
		
		List<GoodsVO> goodsList = service.getGoodsList(category, pagingVO, sorting, min_amount, max_amount);
		
		String str = "";
		ObjectMapper mapper = new ObjectMapper();
		
		try {
			str = mapper.writeValueAsString(goodsList);
		} catch(Exception e) {
			System.out.println("Controller에서 실패" );
		}

		return str;
	}
	
	
	
	@RequestMapping(value="/goods_info.do", method=RequestMethod.GET)
	public String getGoodsInfo(@RequestParam long goods_num, @RequestParam int category, Model model) {
		log.info("Controller..getGoodsList..goods_num:" + goods_num + ".....");
		
		model.addAttribute("goods", service.getGoodsInfo(goods_num));
		model.addAttribute("categoryInt", category);
		model.addAttribute("categoryString", service.category(category));
		
		
		return "shoppingMall/goods/goods_info";
	}


}
